function fealab_truss_static_solver(app)
  % check if the analysis is 2D
  is_2d = app.DCheckBox2D.Value;

  % mesh
  coord = app.UITableNodalCoordinates.Data(:,2:end); % nodal coordinates (Cartesian system: x y z)
  numnod = size(coord,1); % number of nodes
  nel = 2; % nodes per element
  ndof = 3; % number of degrees of freedom per node (spatial truss)

  % connectivity
  connect = app.UITableElementConnectivity.Data(:,2:end); % nodal connectivity
  numele = size(connect,1); % number of elements

  % element properties
  As = app.UITableElementProperties.Data(:,2); % array of cross-sectional area
  Ey = app.UITableElementProperties.Data(:,3); % array of Young's modulus

  % essential boundary conditions
  mtxebc = app.UITableSupports.Data;
  numrow_mtxebc = size(mtxebc,1);
  if is_2d
    numebcdof = length(find(mtxebc(:,3)==1))+...
                length(find(mtxebc(:,5)==1))+...
                numnod; % all nodes will have their z-dof fixed
  else
    numebcdof = length(find(mtxebc(:,3)==1))+...
                length(find(mtxebc(:,5)==1))+...
                length(find(mtxebc(:,7)==1));        
  end
  ebcdof = zeros(numebcdof,1);
  ebcval = zeros(numebcdof,1);
  k = 1;
  for i = 1:numrow_mtxebc
    node_i = mtxebc(i,1);
    x_disp = mtxebc(i,2);
    x_fix = mtxebc(i,3);
    y_disp = mtxebc(i,4);
    y_fix = mtxebc(i,5);        
    z_disp = mtxebc(i,6);
    z_fix = mtxebc(i,7); 
    if x_fix
      ebcdof(k) = 3*node_i-2;
      ebcval(k) = x_disp;
      k = k+1;
    end
    if y_fix
      ebcdof(k) = 3*node_i-1;
      ebcval(k) = y_disp;   
      k = k+1;
    end
    if z_fix && ~is_2d % compute this only if it is 3d analysis
      ebcdof(k) = 3*node_i;
      ebcval(k) = z_disp;   
      k = k+1;
    end
  end

  % if the analysis is 2D, fix the z-dof of all the nodes in the mesh
  if is_2d
    ebcdof(k:numebcdof)=3:3:(3*numnod); % don't need to complete ebcval since 
                                        % ebcval(k:numebcdof) has already
                                        % 0 entries
  end

  % Neumann boundary conditions
  mtxnbc = app.UITableLoads.Data;
  numrow_mtxnbc = size(mtxnbc,1);
  numnbcdof = length(find(mtxnbc(:,2)~=0))+...
              length(find(mtxnbc(:,3)~=0))+...
              length(find(mtxnbc(:,4)~=0));
  nbcdof = zeros(numnbcdof,1);
  nbcval = zeros(numnbcdof,1);
  k = 1;
  for i = 1:numrow_mtxnbc
    node_i = mtxnbc(i,1);
    x_load = mtxnbc(i,2);
    y_load = mtxnbc(i,3);
    z_load = mtxnbc(i,4);
    if x_load~=0
      nbcdof(k) = 3*node_i-2;
      nbcval(k) = x_load;   
      k = k+1;
    end
    if y_load~=0
      nbcdof(k) = 3*node_i-1;
      nbcval(k) = y_load;   
      k = k+1;
    end
    if z_load~=0
      nbcdof(k) = 3*node_i;
      nbcval(k) = z_load;   
      k = k+1;
    end     
  end    

  % initialize stiffness matrix [K] and external force vector {f}
  bigk = zeros(ndof*numnod,ndof*numnod); % global stiffness matrix (initialized to zero) for [K]
  fext = zeros(ndof*numnod,1);      % global force vector (initialized to zero) for {f}
  
  % assemble element matrices into global ones (loop over elements)
  for e = 1:numele
    ke = elemstiff(app,e,nel,coord,connect,Ey,As); % element stiffness matrix
    sctr = connect(e,:);
    sctr2=[3*sctr(1)-2,3*sctr(1)-1,3*sctr(1),3*sctr(2)-2,3*sctr(2)-1,3*sctr(2)];
    bigk(sctr2,sctr2) = bigk(sctr2,sctr2) + ke;
  end

  % apply traction (Neumann) boundary condition in the force vector
  fext(nbcdof) = fext(nbcdof) + nbcval;
  
  % impose essential (Dirichlet) boundary conditions 
  bigk_pre = bigk; % to compute internal forces at truss nodes and reactions
  for i = 1:length(ebcdof)
    n = ebcdof(i);
    for j = 1:2*numnod
      if (isempty(find(ebcdof == j))) % dof j is not found in ebcdof vector
        fext(j) = fext(j) - bigk(j,n)*ebcval(i);
      end
    end
    bigk(n,:) = 0.0;
    bigk(:,n) = 0.0;
    bigk(n,n) = 1.0;
    fext(n) = ebcval(i);
  end

  % solve for nodal unknowns
  nodal_disp = bigk\fext; % nodal displacement solution

  % compute nodal forces
  nodal_forces = bigk_pre*nodal_disp;

  % check whether there are nodes that has both ebcdof and nbcdof. If so,
  % then enforce these nbcval to make them consistent
  lia = ismember(nbcdof,ebcdof); % indices in nbcdof whose entries are found in ebcdof
  if ~isempty(lia)
    force_reaction_dofs = nbcdof(lia);
    nodal_forces(force_reaction_dofs) = nodal_forces(force_reaction_dofs)-nbcval(lia); % enforce the nbcval
  end    

  % compute reactions
  reactions = zeros(ndof*numnod,1);
  reactions(ebcdof) = nodal_forces(ebcdof);

  % postprocess the internal forces
  eax = zeros(numele,1);
  sax = zeros(numele,1);
  Pax = zeros(numele,1);
  for e = 1:numele  
    [eax_e,sax_e,Pax_e] = internalforces(app,e,nel,coord,connect,Ey,As,nodal_disp);
    eax(e) = eax_e;
    sax(e) = sax_e;
    Pax(e) = Pax_e;
  end

  % print results

  % app.UITableNodalForcesTabOutput.ColumnFormat = {[],'shortG','shortG','shortG'};
  % app.UITableEleIntVariablesTabOutput.ColumnFormat = {[],'shortG','shortG','shortG'};
  app.UITableNodalDisplacementsTabOutput.ColumnFormat = {[],'longG','longG','longG','longG'};      
  app.UITableNodalForcesTabOutput.ColumnFormat = {[],'longG','longG','longG','longG','longG','longG'};
  app.UITableEleIntVariablesTabOutput.ColumnFormat = {[],'longG','longG','longG'};   
  selectedDigitsButton = app.RoundtodigitsPostStatic.SelectedObject;
  ndigits = str2double(selectedDigitsButton.Text);   
  Unorm = sqrt(nodal_disp(1:3:end-2).*nodal_disp(1:3:end-2) +...
          nodal_disp(2:3:end-1).*nodal_disp(2:3:end-1) +...
          nodal_disp(3:3:end).*nodal_disp(3:3:end));
  app.UITableNodalDisplacementsTabOutput.Data = ...
    round([(1:numnod)',nodal_disp(1:3:end-2),...
            nodal_disp(2:3:end-1),nodal_disp(3:3:end),Unorm],ndigits);      
  app.UITableNodalForcesTabOutput.Data = ...
    round([(1:numnod)',nodal_forces(1:3:end-2),...
            nodal_forces(2:3:end-1),nodal_forces(3:3:end),...
            reactions(1:3:end-2),reactions(2:3:end-1),...
            reactions(3:3:end)],ndigits);
  app.UITableEleIntVariablesTabOutput.Data = ...
    round([(1:numele)',eax,sax,Pax],ndigits);        
end

function [ke] = elemstiff(~,e,nel,coord,connect,Ey,As)
  %--------------------------------------------------------------------------------
  % Purpose
  % =======
  % Element stiffness matrix for two-node space truss
  %
  % Input
  % =====
  % e       : element number
  % nel     : nodes per element
  % coord   : coordinates of the nodes
  % connect : nodal connectivity 
  % Ey      : Young's modulus
  % As      : cross-sectional area
  % 
  % Output
  % ======
  % Element stiffness matrix ke (3*nel x 3*nel matrix)
  %-------------------------------------------------------------------------------
  % References:
  %-------------------------------------------------------------------------------
  % Modification log:                                          Date (dd/mm/year)
  %   0. Original version                                            14/06/2023
  %-------------------------------------------------------------------------------

  nodes = connect(e,:); % [node1 node2]
  xe = coord(nodes,:); % coordinate of nodes [x1 y1 z1; x2 y2 z2]
  Le = norm(xe(nel,:)-xe(1,:)); % element length
  M = (xe(nel,1)-xe(1,1))/Le; % direction cosine
  N = (xe(nel,2)-xe(1,2))/Le; % direction cosine
  L = (xe(nel,3)-xe(1,3))/Le; % direction cosine
  
  % stifness matrix
  ke = Ey(e)*As(e)/Le*[M*M, M*N, M*L, -M*M, -M*N, -M*L;...
                       M*N, N*N, N*L, -M*N, -N*N, -N*L;...
                       M*L, N*L, L*L, -M*L, -N*L, -L*L;...
                       -M*M, -M*N, -M*L, M*M, M*N, M*L;...
                       -M*N, -N*N, -N*L, M*N, N*N, N*L;...
                       -M*L, -N*L, -L*L, M*L, N*L, L*L]; 
end

function [eax_e,sax_e,Pax_e] = internalforces(~,e,nel,coord,connect,Ey,As,dof)
  %-------------------------------------------------------------------------------
  % Purpose
  % =======
  % Element stiffness matrix for two-node space truss
  %
  % Input
  % =====
  % e       : element number
  % nel     : nodes per element
  % coord   : coordinates of the nodes
  % connect : nodal connectivity 
  % Ey      : Young's modulus
  % As      : cross-sectional area
  % dof     : displacement solution
  % 
  % Output
  % ======
  % eax_e     : element axial deformation
  % sax_e     : element axial stress
  % Pax_e     : element axial force
  %-------------------------------------------------------------------------------
  % References:
  %-------------------------------------------------------------------------------
  % Modification log:                                          Date (dd/mm/year)
  %   0. Original version                                            14/06/2023
  %-------------------------------------------------------------------------------
  
  nodes = connect(e,:); % [node1 node2]
  xe = coord(nodes,:); % coordinate of nodes [x1 y1 z1; x2 y2 z2]
  Le = norm(xe(nel,:)-xe(1,:)); % element length
  M = (xe(nel,1)-xe(1,1))/Le; % direction cosine
  N = (xe(nel,2)-xe(1,2))/Le; % direction cosine
  L = (xe(nel,3)-xe(1,3))/Le; % direction cosine
  
  Be = 1/Le*[-M -N -L M N L];
  ind = [3*nodes(1)-2,3*nodes(1)-1,3*nodes(1),3*nodes(2)-2,3*nodes(2)-1,3*nodes(2)];
  eax_e = Be*dof(ind);
  sax_e = Ey(e)*eax_e;
  Pax_e = sax_e*As(e);
end   