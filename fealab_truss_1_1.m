classdef fealab_truss_1_1 < matlab.apps.AppBase

  % Properties that correspond to app components
  properties (Access = public)
    FeaLabTrussUIFigure             matlab.ui.Figure
    GridLayout                      matlab.ui.container.GridLayout
    TabGroupOutput                  matlab.ui.container.TabGroup
    MessagesTabOutput               matlab.ui.container.Tab
    GridLayout4                     matlab.ui.container.GridLayout
    MessagesTextArea                matlab.ui.control.TextArea
    SummaryTabOutput                matlab.ui.container.Tab
    GridLayout15                    matlab.ui.container.GridLayout
    SummaryTextAreaTabOutput        matlab.ui.control.TextArea
    Label                           matlab.ui.control.Label
    NodesTabOutput                  matlab.ui.container.Tab
    GridLayout17                    matlab.ui.container.GridLayout
    UITableNodesTabOutput           matlab.ui.control.Table
    ElementsTabOutput               matlab.ui.container.Tab
    GridLayout16                    matlab.ui.container.GridLayout
    UITableElementsTabOutput        matlab.ui.control.Table
    SupportsTabOutput               matlab.ui.container.Tab
    GridLayout18                    matlab.ui.container.GridLayout
    UITableSupportsTabOutput        matlab.ui.control.Table
    LoadsTabOutput                  matlab.ui.container.Tab
    GridLayout19                    matlab.ui.container.GridLayout
    UITableLoadsTabOutput           matlab.ui.control.Table
    DisplacementsTabOutput          matlab.ui.container.Tab
    GridLayout11                    matlab.ui.container.GridLayout
    UITableNodalDisplacementsTabOutput  matlab.ui.control.Table
    InternalvariablesTabOutput      matlab.ui.container.Tab
    GridLayout12                    matlab.ui.container.GridLayout
    UITableEleIntVariablesTabOutput  matlab.ui.control.Table
    NodalforcesTabOutput            matlab.ui.container.Tab
    GridLayout13                    matlab.ui.container.GridLayout
    UITableNodalForcesTabOutput     matlab.ui.control.Table
    TabGroupMain                    matlab.ui.container.TabGroup
    PreTab                          matlab.ui.container.Tab
    GridLayout2                     matlab.ui.container.GridLayout
    FEALABTruss11Panel              matlab.ui.container.Panel
    GridLayout3                     matlab.ui.container.GridLayout
    RunanalysisButtonStaticAnalysis  matlab.ui.control.Button
    TABSnapshotButtonPre            matlab.ui.control.Button
    SavetoafileButtonPre            matlab.ui.control.Button
    LoadfromfileButtonPre           matlab.ui.control.Button
    PrePreTab                       matlab.ui.container.TabGroup
    ModelDefinition                 matlab.ui.container.Tab
    GridLayout5                     matlab.ui.container.GridLayout
    UITableNodalCoordinates         matlab.ui.control.Table
    CreateModelSwitch               matlab.ui.control.Switch
    PlotmodelLabel                  matlab.ui.control.Label
    EnterloaddataLabel              matlab.ui.control.Label
    UITableLoads                    matlab.ui.control.Table
    NumberofloadednodesEditField    matlab.ui.control.NumericEditField
    NumberofloadednodesEditFieldLabel  matlab.ui.control.Label
    UITableSupports                 matlab.ui.control.Table
    EntersupportdataLabel           matlab.ui.control.Label
    NumberofsupportsEditField       matlab.ui.control.NumericEditField
    NumberofsupportsEditFieldLabel  matlab.ui.control.Label
    FillYMCheckBox                  matlab.ui.control.CheckBox
    FillAreaCheckBox                matlab.ui.control.CheckBox
    YMEditField                     matlab.ui.control.NumericEditField
    YMEditFieldLabel_2              matlab.ui.control.Label
    UITableElementProperties        matlab.ui.control.Table
    EnterelementpropertiesLabel     matlab.ui.control.Label
    AreaEditField                   matlab.ui.control.NumericEditField
    AreaEditFieldLabel              matlab.ui.control.Label
    UITableElementConnectivity      matlab.ui.control.Table
    EnterelementconnectivityLabel   matlab.ui.control.Label
    NumberofelementsEditField       matlab.ui.control.NumericEditField
    NumberofelementsEditFieldLabel  matlab.ui.control.Label
    NumberofnodesEditField          matlab.ui.control.NumericEditField
    NumberofnodesEditFieldLabel     matlab.ui.control.Label
    DCheckBox2D                     matlab.ui.control.CheckBox
    EnternodecoordinatesLabel       matlab.ui.control.Label
    SettingsTab                     matlab.ui.container.Tab
    GridLayout14                    matlab.ui.container.GridLayout
    ReactionsFontSizeEditField      matlab.ui.control.NumericEditField
    ReactionsLabel                  matlab.ui.control.Label
    MarkersSizeEditField            matlab.ui.control.NumericEditField
    SupportsLabel_2                 matlab.ui.control.Label
    LegendsEditField                matlab.ui.control.NumericEditField
    ElementnumbersLabel_3           matlab.ui.control.Label
    ColormapButtonGroup             matlab.ui.container.ButtonGroup
    HotButton                       matlab.ui.control.RadioButton
    TurboButton                     matlab.ui.control.RadioButton
    JetButton                       matlab.ui.control.RadioButton
    ParulaButton                    matlab.ui.control.RadioButton
    BackgroundButtonGroup           matlab.ui.container.ButtonGroup
    GrayButton                      matlab.ui.control.RadioButton
    WhiteButton                     matlab.ui.control.RadioButton
    PlotaxisCheckBox                matlab.ui.control.CheckBox
    ShowglobalcoordinatesystemCheckBox  matlab.ui.control.CheckBox
    PlotgridCheckBox                matlab.ui.control.CheckBox
    ModelspaceLabel                 matlab.ui.control.Label
    LoadsSizeEditField              matlab.ui.control.NumericEditField
    ElementnumbersLabel_2           matlab.ui.control.Label
    SupportsSizeEditField           matlab.ui.control.NumericEditField
    SupportsLabel                   matlab.ui.control.Label
    SymbolSizesLabel                matlab.ui.control.Label
    FontSizesLabel                  matlab.ui.control.Label
    ElementNumbersFontSizeEditField  matlab.ui.control.NumericEditField
    ElementnumbersLabel             matlab.ui.control.Label
    NodeNumbersFontSizeEditField    matlab.ui.control.NumericEditField
    NodenumbersEditFieldLabel       matlab.ui.control.Label
    PostStaticTab                   matlab.ui.container.Tab
    GridLayout6                     matlab.ui.container.GridLayout
    FEALABTruss11Panel_2            matlab.ui.container.Panel
    GridLayout3_2                   matlab.ui.container.GridLayout
    RoundtodigitsPostStatic         matlab.ui.container.ButtonGroup
    Digit10nf                       matlab.ui.control.RadioButton
    Digits9nf                       matlab.ui.control.RadioButton
    Digits8nf                       matlab.ui.control.RadioButton
    Digits7nf                       matlab.ui.control.RadioButton
    Digits0nf                       matlab.ui.control.RadioButton
    Digits6nf                       matlab.ui.control.RadioButton
    Digits5nf                       matlab.ui.control.RadioButton
    Digits4nf                       matlab.ui.control.RadioButton
    Digits3nf                       matlab.ui.control.RadioButton
    Digits2nf                       matlab.ui.control.RadioButton
    Digits1nf                       matlab.ui.control.RadioButton
    TABSnapshotButtonPostStatic     matlab.ui.control.Button
    ExportresultsButtonPostStatic   matlab.ui.control.Button
    PostStaticPostStaticTabGroup    matlab.ui.container.TabGroup
    PostStaticModelTab              matlab.ui.container.Tab
    GridLayoutPostStaticModel       matlab.ui.container.GridLayout
    LoadsSwitchModelPostStatic      matlab.ui.control.Switch
    LoadsSwitchLabel                matlab.ui.control.Label
    SupportsSwitchModelPostStatic   matlab.ui.control.Switch
    ConstraintsLabel                matlab.ui.control.Label
    ElementnumbersSwitchModelPostStatic  matlab.ui.control.Switch
    ElementsLabel                   matlab.ui.control.Label
    NodenumbersSwitchModelPostStatic  matlab.ui.control.Switch
    NodesLabel                      matlab.ui.control.Label
    ViewsModelPostStatic            matlab.ui.container.ButtonGroup
    View9ModelPostStatic            matlab.ui.control.RadioButton
    View8ModelPostStatic            matlab.ui.control.RadioButton
    View7ModelPostStatic            matlab.ui.control.RadioButton
    View6ModelPostStatic            matlab.ui.control.RadioButton
    View5ModelPostStatic            matlab.ui.control.RadioButton
    View4ModelPostStatic            matlab.ui.control.RadioButton
    View3ModelPostStatic            matlab.ui.control.RadioButton
    View2ModelPostStatic            matlab.ui.control.RadioButton
    View1ModelPostStatic            matlab.ui.control.RadioButton
    UIAxesModelPostStatic           matlab.ui.control.UIAxes
    PostStaticDisplacementsTab      matlab.ui.container.Tab
    GridLayoutPostStaticDisplacements  matlab.ui.container.GridLayout
    OriginalmeshCheckBoxPostStaticDisplacements  matlab.ui.control.CheckBox
    FactorEditFieldPostStaticDisplacements  matlab.ui.control.NumericEditField
    FactorEditFieldLabel            matlab.ui.control.Label
    DeformedSwitchPostStaticDisplacements  matlab.ui.control.Switch
    NodesLabel_3                    matlab.ui.control.Label
    NodenumbersSwitchPostStaticDisplacements  matlab.ui.control.Switch
    NodesLabel_2                    matlab.ui.control.Label
    UButtonPostStaticDisplacements  matlab.ui.control.Button
    UzButtonPostStaticDisplacements  matlab.ui.control.Button
    UyButtonPostStaticDisplacements  matlab.ui.control.Button
    UxButtonPostStaticDisplacements  matlab.ui.control.Button
    ViewsPostStaticDisplacements    matlab.ui.container.ButtonGroup
    View9PostStaticDisplacements    matlab.ui.control.RadioButton
    View8PostStaticDisplacements    matlab.ui.control.RadioButton
    View7PostStaticDisplacements    matlab.ui.control.RadioButton
    View6PostStaticDisplacements    matlab.ui.control.RadioButton
    View5PostStaticDisplacements    matlab.ui.control.RadioButton
    View4PostStaticDisplacements    matlab.ui.control.RadioButton
    View3PostStaticDisplacements    matlab.ui.control.RadioButton
    View2PostStaticDisplacements    matlab.ui.control.RadioButton
    View1PostStaticDisplacements    matlab.ui.control.RadioButton
    UIAxesPostStaticDisplacements   matlab.ui.control.UIAxes
    PostStaticIntVariablesTab       matlab.ui.container.Tab
    GridLayoutPostStaticInternalVariables  matlab.ui.container.GridLayout
    OriginalmeshCheckBoxPostStaticInternalVariables  matlab.ui.control.CheckBox
    FactorEditFieldPostStaticInternalVariables  matlab.ui.control.NumericEditField
    FactorEditFieldLabel_2          matlab.ui.control.Label
    DeformedSwitchPostStaticInternalVariables  matlab.ui.control.Switch
    NodesLabel_4                    matlab.ui.control.Label
    ElementnumbersSwitchPostStaticIntVariables  matlab.ui.control.Switch
    ElementNumLabel                 matlab.ui.control.Label
    MaxMinForcesButtonPostStaticIntVariables  matlab.ui.control.Button
    MaxMinStressesButtonPostStaticIntVariables  matlab.ui.control.Button
    MaxMinStrainsButtonPostStaticIntVariables  matlab.ui.control.Button
    TCForcesButtonPostStaticIntVariables  matlab.ui.control.Button
    ForcesButtonPostStaticIntVariables  matlab.ui.control.Button
    StressesButtonPostStaticIntVariables  matlab.ui.control.Button
    StrainsButtonPostStaticIntVariables  matlab.ui.control.Button
    ViewsPostStaticIntVariables     matlab.ui.container.ButtonGroup
    View9PostStaticIntVariables     matlab.ui.control.RadioButton
    View8PostStaticIntVariables     matlab.ui.control.RadioButton
    View7PostStaticIntVariables     matlab.ui.control.RadioButton
    View6PostStaticIntVariables     matlab.ui.control.RadioButton
    View5PostStaticIntVariables     matlab.ui.control.RadioButton
    View4PostStaticIntVariables     matlab.ui.control.RadioButton
    View3PostStaticIntVariables     matlab.ui.control.RadioButton
    View2PostStaticIntVariables     matlab.ui.control.RadioButton
    View1PostStaticIntVariables     matlab.ui.control.RadioButton
    UIAxesPostStaticInternalVariables  matlab.ui.control.UIAxes
    PostStaticNodalforcesTab        matlab.ui.container.Tab
    GridLayoutPostStaticNodalForces  matlab.ui.container.GridLayout
    NodenumbersSwitchPostStaticNodalForces  matlab.ui.control.Switch
    NodesLabel_5                    matlab.ui.control.Label
    ReactionsButtonPostStaticNodalforces  matlab.ui.control.Button
    ViewsPostStaticNodalforces      matlab.ui.container.ButtonGroup
    View9PostStaticNodalforces      matlab.ui.control.RadioButton
    View8PostStaticNodalforces      matlab.ui.control.RadioButton
    View7PostStaticNodalforces      matlab.ui.control.RadioButton
    View6PostStaticNodalforces      matlab.ui.control.RadioButton
    View5PostStaticNodalforces      matlab.ui.control.RadioButton
    View4PostStaticNodalforces      matlab.ui.control.RadioButton
    View3PostStaticNodalforces      matlab.ui.control.RadioButton
    View2PostStaticNodalforces      matlab.ui.control.RadioButton
    View1PostStaticNodalforces      matlab.ui.control.RadioButton
    UIAxesPostStaticNodalForces     matlab.ui.control.UIAxes
    AboutTab                        matlab.ui.container.Tab
    GridLayout20                    matlab.ui.container.GridLayout
    TextArea_6                      matlab.ui.control.TextArea
    TextArea_5                      matlab.ui.control.TextArea
  end

  
  properties (Access = private)
    % Pre/Model definition
    AnalysisIsAlreadyDone logical = false % logical variable that states whether the analysis was already done
    % Pre/Settings tab
    ColorMapName = turbo % name of the colormap to be used in the colorbar of the plots
    ModelSpaceBackgroundColor = 'w'; % background color for the model space   
    % PostStatic Model Tab
    hTextNodeNumbersPostStaticModel = cell(0,1) % handle to text representing node numbers (initially declared as empty cell array)
    hTextElementNumbersPostStaticModel = cell(0,1) % handle to text representing element numbers (initially declared as empty cell array)
    hMarkerSupportsPostStaticModel = cell(0,1) % handle to markers added in figures representing supports (initially declared as empty cell array)
    OldMarkerSupportsPostStaticModel % to store the first set of markers that that the variable hMarkerSupportsPostStaticModel took    
    hArrowLoadsPostStaticModel % array of handles to arrows added in figures to show/hide supports
    hPlotLoadsPostStaticModel = cell(0,1) % handle to load arrow objects added to figures (initially declared as empty cell array)
    hLoadsTextPostStaticModel = cell(0,1) % handle to text added in figures to show load values (initially declared as empty cell array)
    % PostStatic Displacements Tab
    hTextNodeNumbersPostStaticDisplacements = cell(0,1) % handle to text representing node numbers (initially declared as empty cell array)    
    % PostStatic Internal Variables Tab
    hTextElementNumbersPostStaticInternalVariables = cell(0,1) % handle to text representing element numbers (initially declared as empty cell array)
    % PostStatic Nodal Forces Tab
    hTextNodeNumbersPostStaticNodalForces = cell(0,1) % handle to text representing node numbers (initially declared as empty cell array)      
  end
  
  methods (Access = private)

    %---------------------------------------------------------------------------
    % create_model_reset_private_properties
    %%       
    function create_model_reset_private_properties(app)
      % PostStatic/Model
      app.hTextNodeNumbersPostStaticModel = cell(0,1);       
      app.hTextElementNumbersPostStaticModel = cell(0,1);      
      app.hMarkerSupportsPostStaticModel = cell(0,1);
      app.hPlotLoadsPostStaticModel = cell(0,1);
      app.hLoadsTextPostStaticModel = cell(0,1);  
      % PostStatic/Displacements
      app.hTextNodeNumbersPostStaticDisplacements = cell(0,1); 
      % PostStatic/Internal variables
      app.hTextElementNumbersPostStaticInternalVariables = cell(0,1);   
      % PostStatic Nodal Forces Tab
      app.hTextNodeNumbersPostStaticNodalForces = cell(0,1);      
    end

    %---------------------------------------------------------------------------
    % update_model_space_after_change_in_pre_settings_tab
    %%      
    function update_model_space_after_change_in_pre_settings_tab(app)
      % ****  Reset switches and others on result tabs/ 'Off' ****
      % PostStatic/Model
      app.NodenumbersSwitchModelPostStatic.Value = 'Off';
      app.hTextNodeNumbersPostStaticModel = cell(0,1);        
      app.ElementnumbersSwitchModelPostStatic.Value = 'Off';
      app.hTextElementNumbersPostStaticModel = cell(0,1);
      app.LoadsSwitchModelPostStatic.Value = 'Off';
      app.SupportsSwitchModelPostStatic.Value = 'Off';  
      legend(app.UIAxesModelPostStatic,'hide'); 
      app.hMarkerSupportsPostStaticModel = cell(0,1);
      app.hPlotLoadsPostStaticModel = cell(0,1);
      app.hLoadsTextPostStaticModel = cell(0,1);
      % PostStatic/Internal variables
      app.ElementnumbersSwitchPostStaticIntVariables.Value = 'Off';
      app.hTextElementNumbersPostStaticInternalVariables = cell(0,1);   
      app.DeformedSwitchPostStaticInternalVariables.Value = 'Off';      
      % PostStatic/Displacements
      app.NodenumbersSwitchPostStaticDisplacements.Value = 'Off';
      app.DeformedSwitchPostStaticDisplacements.Value = 'Off';
      app.hTextNodeNumbersPostStaticDisplacements = cell(0,1);
      % PostStatic/Nodal Forces
      app.hTextNodeNumbersPostStaticNodalForces = cell(0,1);      
      % ****   plot models   *******
      plt = plot_model(app,app.UIAxesModelPostStatic);
      plt = plot_model(app,app.UIAxesPostStaticDisplacements);   
      plt = plot_model(app,app.UIAxesPostStaticInternalVariables);          
      plt = plot_model(app,app.UIAxesPostStaticNodalForces);        
    end

    %---------------------------------------------------------------------------
    % set_model_space_background_color
    %%    
    function model_space_configuration(app,ax)
      % background color of the box figure
      ax.Color = app.ModelSpaceBackgroundColor;
      % background color of the grid layouts
      app.GridLayoutPostStaticModel.BackgroundColor = app.ModelSpaceBackgroundColor;
      app.GridLayoutPostStaticDisplacements.BackgroundColor = app.ModelSpaceBackgroundColor;
      app.GridLayoutPostStaticInternalVariables.BackgroundColor = app.ModelSpaceBackgroundColor;
      app.GridLayoutPostStaticNodalForces.BackgroundColor = app.ModelSpaceBackgroundColor;
      % plot axis of the axes
      if app.PlotaxisCheckBox.Value
        axis(ax,'equal','on');
      else
        axis(ax,'equal','off');
      end  
      % plot grid
      if app.PlotgridCheckBox.Value
        grid(ax,'on');
      else
        grid(ax,'off');
      end
      % plot global cartesian coordinate system
      if app.ShowglobalcoordinatesystemCheckBox.Value
        plot_global_cratesian_coordinate_system(app,ax);
      end
    end   

    %---------------------------------------------------------------------------
    % set_model_and_switches_post_static_displacements
    %%  
    function set_model_and_switches_post_static_displacements(app,event)
      % before cleaning the current plot in the axis, check whether the node and
      % deformed mesh switches are 'On'. If so, performed the tasks in the 
      % following order: clean the plot, plot the new model if required, 
      % reset private properties related to node number text, 
      % and turn the switches 'On'
      nodes_is_on = strcmp(app.NodenumbersSwitchPostStaticDisplacements.Value,'On');
      deformed_mesh_is_on = strcmp(app.DeformedSwitchPostStaticDisplacements.Value,'On');
      % clean axis
      cla(app.UIAxesPostStaticDisplacements);
      legend(app.UIAxesPostStaticDisplacements,'off'); 
      % plot model: underlay the original mesh in light colors, if required;
      % this has to be performed before turning the switches on so that any 
      % change in the model (like plotting nodes and element numbers) is 
      % attached to this following plot model
      if app.OriginalmeshCheckBoxPostStaticDisplacements.Value
        plt = plot_model_light(app,app.UIAxesPostStaticDisplacements);
      end      
      % if switches were previously turned on, then turn them on in the cleaned
      % axis
      app.hTextNodeNumbersPostStaticDisplacements = cell(0,1); % reset private variable related to node number texts
      if nodes_is_on
        app.NodenumbersSwitchPostStaticDisplacements.Value = 'On';
        NodenumbersSwitchPostStaticDisplacementsValueChanged(app,event);              
      end
      if deformed_mesh_is_on
        app.DeformedSwitchPostStaticDisplacements.Value = 'On';
        DeformedSwitchPostStaticDisplacementsValueChanged(app,event);      
      end        
    end

    %---------------------------------------------------------------------------
    % set_model_and_switches_post_static_internal_variables
    %%  
    function set_model_and_switches_post_static_internal_variables(app,event)
      % before cleaning the current plot in the axis, check whether the node and
      % deformed mesh switches are 'On'. If so, performed the tasks in the 
      % following order: clean the plot, plot the new model if required, 
      % reset private properties related to element number text, 
      % and turn the switches 'On'
      elements_is_on = strcmp(app.ElementnumbersSwitchPostStaticIntVariables.Value,'On');
      deformed_mesh_is_on = strcmp(app.DeformedSwitchPostStaticInternalVariables.Value,'On');
      % clean axis
      cla(app.UIAxesPostStaticInternalVariables);
      legend(app.UIAxesPostStaticInternalVariables,'off'); 
      % plot model: underlay the original mesh in light colors, if required;
      % this has to be performed before turning the switches on so that any 
      % change in the model (like plotting nodes and element numbers) is 
      % attached to this following plot model
      if app.OriginalmeshCheckBoxPostStaticInternalVariables.Value
        plt = plot_model_light(app,app.UIAxesPostStaticInternalVariables);
      end      
      % if switches were previously turned on, then turn them on in the cleaned
      % axis
      app.hTextElementNumbersPostStaticInternalVariables = cell(0,1); % reset private variable related to node number texts
      if elements_is_on
        app.ElementnumbersSwitchPostStaticIntVariables.Value = 'On';
        ElementnumbersSwitchPostStaticIntVariablesValueChanged(app,event);              
      end
      if deformed_mesh_is_on
        app.DeformedSwitchPostStaticInternalVariables.Value = 'On';
        DeformedSwitchPostStaticInternalVariablesValueChanged(app,event);    
      end        
    end   

    %---------------------------------------------------------------------------
    % set_model_and_switches_post_static_nodal_forces
    %%  
    function set_model_and_switches_post_static_nodal_forces(app,event)
      % before cleaning the current plot in the axis, check whether the node
      % switch is 'On'. If so, performed the tasks in the 
      % following order: clean the plot, plot the new model if required, 
      % reset private properties related to node number text, 
      % and turn the switch 'On'
      nodes_is_on = strcmp(app.NodenumbersSwitchPostStaticNodalForces.Value,'On');
      % clean axis
      cla(app.UIAxesPostStaticNodalForces);
      legend(app.UIAxesPostStaticNodalForces,'off'); 
      plt = plot_model(app,app.UIAxesPostStaticNodalForces); % plot model
      app.hTextNodeNumbersPostStaticNodalForces = cell(0,1); % reset private variable related to node number texts
      if nodes_is_on
        app.NodenumbersSwitchPostStaticNodalForces.Value = 'On';
        NodenumbersSwitchPostStaticNodalForcesValueChanged(app,event);              
      end      
    end    

    %---------------------------------------------------------------------------
    % plot_model
    %%
    function plt = plot_model(app,ax)
      hold(ax,'off'); % if model is plotted more than once, then make 
                      % sure that the data of the current UIAxes is
                      % deleted and new data is created
      % plot nodes
      x = app.UITableNodalCoordinates.Data(:,2);
      y = app.UITableNodalCoordinates.Data(:,3);      
      z = app.UITableNodalCoordinates.Data(:,4);   
      numnod = length(x);
      sfz = length(find(z==0)); % determine if all z-coordinates are 0
      % sfx = length(find(x==0)); % determine if all x-coordinates are 0
      % sfy = length(find(y==0)); % determine if all y-coordinates are 0      
      plt = plot3(ax,x,y,z,'ok','MarkerFaceColor','k','MarkerSize',app.MarkersSizeEditField.Value);
      plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
      hold(ax,'on');
      if sfz==numnod % the model is 2D
        view(ax,2);        
      end
      % plot elements
      numele = size(app.UITableElementConnectivity.Data,1);
      for i = 1:numele
        node1 = app.UITableElementConnectivity.Data(i,2);
        node2 = app.UITableElementConnectivity.Data(i,3);   
        x = app.UITableNodalCoordinates.Data([node1 node2],2);
        y = app.UITableNodalCoordinates.Data([node1 node2],3); 
        z = app.UITableNodalCoordinates.Data([node1 node2],4);  
        plt = plot3(ax,x,y,z,'-k');
        plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
      end    
      % set background color, coordinate system, etc.
      % this function must be at the end; otherwise, the coordinate system
      % won't be plotted
      model_space_configuration(app,ax);      
    end  

    %---------------------------------------------------------------------------
    % plot_model light: same as plot_model, but nodes and elements are
    % plotted in gray color
    %%
    function plt = plot_model_light(app,ax)
      hold(ax,'off'); % if model is plotted more than once, then make 
                      % sure that the data of the current UIAxes is
                      % deleted and new data is created
      % plot nodes
      x = app.UITableNodalCoordinates.Data(:,2);
      y = app.UITableNodalCoordinates.Data(:,3);      
      z = app.UITableNodalCoordinates.Data(:,4);   
      numnod = length(x);
      sfz = length(find(z==0)); % determine if all z-coordinates are 0
      % sfx = length(find(x==0)); % determine if all x-coordinates are 0
      % sfy = length(find(y==0)); % determine if all y-coordinates are 0      
      plt = plot3(ax,x,y,z,'o','Color',"#DFE2EC",'MarkerFaceColor',"#DFE2EC",'MarkerSize',app.MarkersSizeEditField.Value);     
      plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
      hold(ax,'on');
      if sfz==numnod % the model is 2D
        view(ax,2);        
      end

      % plot elements
      numele = size(app.UITableElementConnectivity.Data,1);
      for i = 1:numele
        node1 = app.UITableElementConnectivity.Data(i,2);
        node2 = app.UITableElementConnectivity.Data(i,3);   
        x = app.UITableNodalCoordinates.Data([node1 node2],2);
        y = app.UITableNodalCoordinates.Data([node1 node2],3); 
        z = app.UITableNodalCoordinates.Data([node1 node2],4);  
        plt = plot3(ax,x,y,z,'-','Color',"#DFE2EC");
        plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
      end    
      % set background color, coordinate system, etc.
      % this function must be at the end; otherwise, the coordinate system
      % won't be plotted
      model_space_configuration(app,ax);      
    end      

    %---------------------------------------------------------------------------
    % plot_node_numbers
    %%
    function handleText = plot_node_numbers(app,ax)
      % nodal coordinates
      x = app.UITableNodalCoordinates.Data(:,2);
      y = app.UITableNodalCoordinates.Data(:,3);      
      z = app.UITableNodalCoordinates.Data(:,4);   
      numnod = length(x);
      % mesh size
      mesh_size=min_element_size(app,x,y,z,app.UITableElementConnectivity.Data(:,[2,3]));
      offset_x = 0.02*mesh_size; offset_y = 0.02*mesh_size;
      offset_z = 0;
      fsize = app.NodeNumbersFontSizeEditField.Value;
      handleText = cell(numnod,1);
      for i = 1:numnod
        idstring = sprintf('%d',i);
        handleText{i} = text(ax,x(i)+offset_x,y(i)+offset_y,z(i)+offset_z,idstring,'color',[0 0.4470 0.7410],'fontsize',fsize);
      end
    end

    %---------------------------------------------------------------------------
    % plot_element_numbers
    %%    
    function handleText = plot_element_numbers(app,ax)
      % mesh size
      x = app.UITableNodalCoordinates.Data(:,2);
      y = app.UITableNodalCoordinates.Data(:,3);      
      z = app.UITableNodalCoordinates.Data(:,4);
      mesh_size=min_element_size(app,x,y,z,app.UITableElementConnectivity.Data(:,[2,3]));
      offset_x = 0.02*mesh_size; offset_y = 0.02*mesh_size;
      offset_z = 0;       
      % plot element numbers
      numele = size(app.UITableElementConnectivity.Data,1);
      nodes1 = app.UITableElementConnectivity.Data(:,2);
      nodes2 = app.UITableElementConnectivity.Data(:,3);
      x1 = app.UITableNodalCoordinates.Data(nodes1,2); % x-coord of the first nodes of the elements
      x2 = app.UITableNodalCoordinates.Data(nodes2,2); % x-coord of the second nodes of the elements
      xbar = mean([x1 x2],2);
      y1 = app.UITableNodalCoordinates.Data(nodes1,3); % y-coord of the first nodes of the elements
      y2 = app.UITableNodalCoordinates.Data(nodes2,3); % y-coord of the second nodes of the elements
      ybar = mean([y1 y2],2);
      z1 = app.UITableNodalCoordinates.Data(nodes1,4); % z-coord of the first nodes of the elements
      z2 = app.UITableNodalCoordinates.Data(nodes2,4); % z-coord of the second nodes of the elements
      zbar = mean([z1 z2],2);       
      fsize = app.ElementNumbersFontSizeEditField.Value;      
      handleText = cell(numele,1);
      for i = 1:numele
        xc = xbar(i); % element number is plotted in the
        yc = ybar(i); % center of the truss
        zc = zbar(i);
        idstring = sprintf('%d',i);
        handleText{i} = text(ax,xc+offset_x,yc+offset_y,zc++offset_z,idstring,'color',[0.4660 0.6740 0.1880],'fontsize',fsize);        
      end        
    end

    %---------------------------------------------------------------------------
    % plot_supports
    %%       
    function plt = plot_supports(app,ax)
      % plot supports
      nsupp = size(app.UITableSupports.Data,1);
      % pltlegend = cell(nsupp,1);
      pltlegend = strings(nsupp,1);
      plt = cell(nsupp,1);
      for i = 1:nsupp
        node = app.UITableSupports.Data(i,1);
        x = app.UITableNodalCoordinates.Data(node,2);
        xfix = app.UITableSupports.Data(i,3);
        y = app.UITableNodalCoordinates.Data(node,3);  
        yfix = app.UITableSupports.Data(i,5);        
        z = app.UITableNodalCoordinates.Data(node,4);
        zfix = app.UITableSupports.Data(i,7);
        if (xfix == 1) && (yfix == 1) && (zfix == 1)
          plt{i} = plot3(ax,x,y,z,'*r','MarkerSize',11,'LineWidth',1.5); % fully fixed
          % pltlegend{i} = 'Supports: x,y,z';
          if app.DCheckBox2D.Value==1
            pltlegend(i) = "Supports: x,y";
          else
            pltlegend(i) = "Supports: x,y,z";
          end
        elseif (xfix == 1) && (yfix == 1) && (zfix == 0)
          plt{i}= plot3(ax,x,y,z,'xm','MarkerSize',12,'LineWidth',1.5); % x-fix and y-fix
          % pltlegend{i} = 'Supports: x,y';
          pltlegend(i) = "Supports: x,y";
        elseif (xfix == 1) && (yfix == 0) && (zfix == 1)
          plt{i} = plot3(ax,x,y,z,'squareg','MarkerSize',10,'LineWidth',1.5); % x-fix and z-fix
          % pltlegend{i} = 'Supports: x,z';
          if app.DCheckBox2D.Value==1
            pltlegend(i) = "Supports: x";
          else
            pltlegend(i) = "Supports: x,z";
          end
        elseif (xfix == 0) && (yfix == 1) && (zfix == 1)
          plt{i} = plot3(ax,x,y,z,'diamondb','MarkerSize',8,'LineWidth',1.5); % y-fix and z-fix
          % pltlegend{i} = 'Supports: y,z';          
          if app.DCheckBox2D.Value==1
            pltlegend(i) = "Supports: y"; 
          else
            pltlegend(i) = "Supports: y,z"; 
          end          
        elseif (xfix == 1) && (yfix == 0) && (zfix == 0)
          plt{i} = plot3(ax,x,y,z,'^y','MarkerSize',12,'LineWidth',1.5); % x-fix 
          % pltlegend{i} = 'Supports: x'; 
          pltlegend(i) = "Supports: x";           
        elseif (xfix == 0) && (yfix == 1) && (zfix == 0)
          plt{i} = plot3(ax,x,y,z,'<c','MarkerSize',12,'LineWidth',1.5); % y-fix
          % pltlegend{i} = 'Supports: y';
          pltlegend(i) = "Supports: y";          
        elseif (xfix == 0) && (yfix == 0) && (zfix == 1) && (app.DCheckBox2D.Value==0)
          plt{i} = plot3(ax,x,y,z,'>k','MarkerSize',12,'LineWidth',1.5); % z-fix  
          % pltlegend{i} = 'Supports: z';
          pltlegend(i) = "Supports: z";  
        elseif (xfix == 0) && (yfix == 0) && (app.DCheckBox2D.Value==1)
          plt{i} = plot3(ax,x,y,z,'ok','MarkerSize',12,'LineWidth',1.5); % z-fix  
          % pltlegend{i} = 'Free';
          pltlegend(i) = "Free";           
        elseif (xfix == 0) && (yfix == 0) && (zfix == 0)
          plt{i} = plot3(ax,x,y,z,'ok','MarkerSize',12,'LineWidth',1.5); % z-fix  
          % pltlegend{i} = 'Free';
          pltlegend(i) = "Free";          
        else
          error("Check support conditions (Constrained = 1 or free = 0)");
        end
      end
      %pause(0.1);
      fsize = app.LegendsEditField.Value;
      legend(ax,pltlegend,'Location','eastoutside','FontSize',fsize);
      % legend(ax,pltlegend,'Location','east');
    end

    %---------------------------------------------------------------------------
    % plot_loads
    %%       
    function [plt,txt] = plot_loads(app,ax)
      % plot loads
      node = app.UITableLoads.Data(:,1);
      x = app.UITableNodalCoordinates.Data(:,2);
      y = app.UITableNodalCoordinates.Data(:,3);      
      z = app.UITableNodalCoordinates.Data(:,4);     
      delx = abs(max(x)-min(x))*0.02;
      dely = abs(max(y)-min(y))*0.02;
      fx = app.UITableLoads.Data(:,2);
      fy = app.UITableLoads.Data(:,3);      
      fz = app.UITableLoads.Data(:,4);

      maxdistx = abs(max(x)-min(x));
      maxdisty = abs(max(y)-min(y));
      maxdistz = abs(max(z)-min(z));
      if maxdistx>0 && maxdisty>0 && maxdistz>0
        arrowlength = min([maxdistx,maxdisty,maxdistz])*0.4;
      elseif maxdistx>0 && maxdisty>0 && maxdistz==0
        arrowlength = min([maxdistx,maxdisty])*0.4;
      elseif maxdistx==0 && maxdisty>0 && maxdistz>0
        arrowlength = min([maxdisty,maxdistz])*0.4;    
      elseif maxdistx>0 && maxdisty==0 && maxdistz>0
        arrowlength = min([maxdistx,maxdistz])*0.4;          
      end
      
      k = 1;
      arrowcolor = [0.8500 0.3250 0.0980];
      fsize = app.LoadsSizeEditField.Value;
      for i = 1:length(node)
        if fx(i)~=0  
          if fx(i)<0
            x0 = [x(node(i))+arrowlength,y(node(i)),z(node(i))];
            dx = [-arrowlength,0,0];
          else
            x0 = [x(node(i))-arrowlength,y(node(i)),z(node(i))];
            dx = [arrowlength,0,0]; 
          end
          plt{k} = quiver3(ax,x0(1),x0(2),x0(3),dx(1),dx(2),dx(3),'off',...
                        'LineWidth',1.5,'MaxHeadSize',0.5,'Color',arrowcolor);
          plt{k}.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
          txt{k} = text(ax,x0(1),x0(2)+dely,x0(3),string(abs(fx(i))),'fontsize',fsize);   
          k = k + 1;
        end
        if fy(i)~=0
          if fy(i)<0
            x0 = [x(node(i)),y(node(i))+arrowlength,z(node(i))];
            dx = [0,-arrowlength,0];
          else
            x0 = [x(node(i)),y(node(i))-arrowlength,z(node(i))];
            dx = [0,arrowlength,0];
          end
          plt{k} = quiver3(ax,x0(1),x0(2),x0(3),dx(1),dx(2),dx(3),'off',...
                        'LineWidth',1.5,'MaxHeadSize',0.5,'Color',arrowcolor);
          plt{k}.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
          txt{k} = text(ax,x0(1)+delx,x0(2),x0(3),string(abs(fy(i))),'fontsize',fsize);    
          k = k + 1;
        end    
        if fz(i)~=0  
          if fz(i)<0
            x0 = [x(node(i)),y(node(i)),z(node(i))+arrowlength];
            dx = [0,0,-arrowlength];
          else
            x0 = [x(node(i)),y(node(i)),z(node(i))-arrowlength];
            dx = [0,0,arrowlength];
          end
          plt{k} = quiver3(ax,x0(1),x0(2),x0(3),dx(1),dx(2),dx(3),'off',...
                        'LineWidth',1.5,'MaxHeadSize',0.5,'Color',arrowcolor);
          plt{k}.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
          % text(ax,x0(1)+0.5,x0(2)+1.0,x0(3),string(fz(i)));    
          txt{k} = text(ax,x0(1)+delx,x0(2)+dely,x0(3),string(abs(fz(i))),'fontsize',fsize);
          k = k + 1;
        end        
      end
    end

    %---------------------------------------------------------------------------
    % plot_global_cratesian_coordinate_system
    %%    
    function plot_global_cratesian_coordinate_system(app,ax)
      scalelength = 0.15;
      arrowheadsize = 0.75;
      arrowlinewidth = 1.5;

      xmax = max(app.UITableNodalCoordinates.Data(:,2));
      xmin = min(app.UITableNodalCoordinates.Data(:,2));      
      ymax = max(app.UITableNodalCoordinates.Data(:,3));
      ymin = min(app.UITableNodalCoordinates.Data(:,3));     
      zmax = max(app.UITableNodalCoordinates.Data(:,4));
      zmin = min(app.UITableNodalCoordinates.Data(:,4));  
      dx = abs(xmax-xmin);
      dy = abs(ymax-ymin);
      dz = abs(zmax-zmin);
      dxyz = mean([dx,dy,dz]);

      dx = [scalelength*dxyz 0 0];
      dy = [0 scalelength*dxyz 0];
      dz = [0 0 scalelength*dxyz];
      xyz0 = [0 0 0];   

      plt = cell(3,1);

      % x-coord
      plt{1} = quiver3(ax,xyz0(1),xyz0(2),xyz0(3),dx(1),dx(2),dx(3),'off',...
                    'LineWidth',arrowlinewidth,'MaxHeadSize',arrowheadsize,'Color','r');  
      plt{1}.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend

      % y-coord
      plt{2} = quiver3(ax,xyz0(1),xyz0(2),xyz0(3),dy(1),dy(2),dy(3),'off',...
                    'LineWidth',arrowlinewidth,'MaxHeadSize',arrowheadsize,'Color','g');  
      plt{2}.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend   

      % z-coord
      plt{3} = quiver3(ax,xyz0(1),xyz0(2),xyz0(3),dz(1),dz(2),dz(3),'off',...
                    'LineWidth',arrowlinewidth,'MaxHeadSize',arrowheadsize,'Color','b');  
      plt{3}.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend

      % add X, Y and Z text next to the arrows
      xt = xyz0+dx*1.15;
      text(ax,xt(1),xt(2),xt(3),'X','FontSize',14,'FontWeight','bold','Color','r'); % X    
      yt = xyz0+dy*1.28;
      text(ax,yt(1),yt(2),yt(3),'Y','FontSize',14,'FontWeight','bold','Color','g'); % Y     
      zt = xyz0+dz*1.25;
      text(ax,zt(1),zt(2),zt(3),'Z','FontSize',14,'FontWeight','bold','Color','b'); % Z
    end

    %---------------------------------------------------------------------------
    % pre_static_create_model_enable_switches_and_buttons
    %%
    function pre_static_create_model_enable_switches_and_buttons(app)
      app.RunanalysisButtonStaticAnalysis.Enable = 1;
      app.NodenumbersSwitchModelPostStatic.Enable = 1;   
      app.ElementnumbersSwitchModelPostStatic.Enable = 1;  
      app.ViewsModelPostStatic.Enable = 1;
      app.LoadsSwitchModelPostStatic.Enable = 1; 
      app.SupportsSwitchModelPostStatic.Enable = 1;      
    end    

    %---------------------------------------------------------------------------
    % pre_static_create_model_disable_switches_and_buttons
    %%
    function pre_static_create_model_disable_switches_and_buttons(app)
      % ****  'Off' ****
      % PostStatic/Model
      app.NodenumbersSwitchModelPostStatic.Value = 'Off';
      app.ElementnumbersSwitchModelPostStatic.Value = 'Off';
      app.LoadsSwitchModelPostStatic.Value = 'Off';
      app.SupportsSwitchModelPostStatic.Value = 'Off';  

      % PostStatic/Displacements
      app.NodenumbersSwitchPostStaticDisplacements.Value = 'Off';
      app.DeformedSwitchPostStaticDisplacements.Value = 'Off';

      % PostStatic/Internal variables
      app.ElementnumbersSwitchPostStaticIntVariables.Value = 'Off';
      app.DeformedSwitchPostStaticInternalVariables.Value = 'Off';      

      % **** disable ****
      % Pre/Static Analysis
      app.RunanalysisButtonStaticAnalysis.Enable = 0; 

      % PostStatic
      app.ExportresultsButtonPostStatic.Enable = 0;   
      app.RoundtodigitsPostStatic.Enable = 0;      

      % PostStatic/Model
      app.NodenumbersSwitchModelPostStatic.Enable = 0;
      app.ElementnumbersSwitchModelPostStatic.Enable = 0;  
      app.LoadsSwitchModelPostStatic.Enable = 0;    
      app.SupportsSwitchModelPostStatic.Enable = 0;

      % PostStatic/Displacements
      app.UxButtonPostStaticDisplacements.Enable = 0;
      app.UyButtonPostStaticDisplacements.Enable = 0;
      app.UzButtonPostStaticDisplacements.Enable = 0;
      app.UButtonPostStaticDisplacements.Enable = 0;     
      app.UITableNodalDisplacementsTabOutput.Enable = 'off';      
      app.ViewsPostStaticDisplacements.Enable = 0;   
      app.NodenumbersSwitchPostStaticDisplacements.Enable = 0;  
      app.DeformedSwitchPostStaticDisplacements.Enable = 0;

      % PostStatic/Internal variables      
      app.StrainsButtonPostStaticIntVariables.Enable = 0;
      app.StressesButtonPostStaticIntVariables.Enable = 0;
      app.ForcesButtonPostStaticIntVariables.Enable = 0;
      app.MaxMinForcesButtonPostStaticIntVariables.Enable = 0;
      app.MaxMinStrainsButtonPostStaticIntVariables.Enable = 0;
      app.MaxMinStressesButtonPostStaticIntVariables.Enable = 0;
      app.TCForcesButtonPostStaticIntVariables.Enable = 0;    
      app.UITableEleIntVariablesTabOutput.Enable = 'off';
      app.ElementnumbersSwitchPostStaticIntVariables.Enable = 0;
      app.DeformedSwitchPostStaticInternalVariables.Enable = 0;      

      % PostStatic/Nodal forces      
      app.ReactionsButtonPostStaticNodalforces.Enable = 0;
      app.UITableNodalForcesTabOutput.Enable = 'off';

    end     

    %---------------------------------------------------------------------------
    % pre_static_run_analysis_enable_switches_and_buttons
    %%    
    function pre_static_run_analysis_enable_switches_and_buttons(app)
      app.ExportresultsButtonPostStatic.Enable = 1;
      app.UxButtonPostStaticDisplacements.Enable = 1;
      app.UyButtonPostStaticDisplacements.Enable = 1;
      app.UzButtonPostStaticDisplacements.Enable = 1;
      app.UButtonPostStaticDisplacements.Enable = 1;
      app.StrainsButtonPostStaticIntVariables.Enable = 1;
      app.StressesButtonPostStaticIntVariables.Enable = 1;
      app.ForcesButtonPostStaticIntVariables.Enable = 1;
      app.MaxMinForcesButtonPostStaticIntVariables.Enable = 1;
      app.MaxMinStrainsButtonPostStaticIntVariables.Enable = 1;
      app.MaxMinStressesButtonPostStaticIntVariables.Enable = 1;
      app.ReactionsButtonPostStaticNodalforces.Enable = 1;
      app.TCForcesButtonPostStaticIntVariables.Enable = 1;
      app.RoundtodigitsPostStatic.Enable = 1;
      app.UITableEleIntVariablesTabOutput.Enable = 'on';
      app.UITableNodalForcesTabOutput.Enable = 'on';
      app.UITableNodalDisplacementsTabOutput.Enable = 'on';      
      app.ViewsPostStaticDisplacements.Enable = 1;
      app.ViewsPostStaticIntVariables.Enable = 1;  
      app.ViewsPostStaticNodalforces.Enable = 1;        
    end   

    %---------------------------------------------------------------------------
    % post_static_int_var_enable_switches_and_buttons
    %%    
    function post_static_int_var_enable_switches_and_buttons(app)
      app.ElementnumbersSwitchPostStaticIntVariables.Enable = "on";
      app.DeformedSwitchPostStaticInternalVariables.Enable = "on";      
    end    

    %---------------------------------------------------------------------------
    % post_static_nodal_forces_enable_switches_and_buttons
    %%    
    function post_static_nodal_forces_enable_switches_and_buttons(app)
      app.NodenumbersSwitchPostStaticNodalForces.Enable = "on";   
    end       

    %---------------------------------------------------------------------------
    % post_static_displacements_enable_switches_and_buttons
    %%    
    function post_static_displacements_enable_switches_and_buttons(app)
      app.NodenumbersSwitchPostStaticDisplacements.Enable = "on";
      app.DeformedSwitchPostStaticDisplacements.Enable = "on";
    end      

    %---------------------------------------------------------------------------
    % delete_output_tab_data
    %%
    function delete_output_tab_data(app)
      app.MessagesTextArea.Value = '';       
      app.SummaryTextAreaTabOutput.Value = '';
      app.UITableNodesTabOutput.Data = [];    
      app.UITableElementsTabOutput.Data = [];
      app.UITableSupportsTabOutput.Data = [];
      app.UITableLoadsTabOutput.Data = [];      
      app.UITableNodalForcesTabOutput.Data = [];
      app.UITableEleIntVariablesTabOutput.Data = [];
      app.UITableNodalDisplacementsTabOutput.Data = [];
    end

    %---------------------------------------------------------------------------
    % clean_axes
    %%
    function clean_axes(app,ax)
      cla(ax);
      legend(ax,'off');      
    end    

    %---------------------------------------------------------------------------
    % min_size
    %%    
    function min_size = min_element_size(~,xcoord,ycoord,zcoord,connect)
      p1 = [xcoord(connect(:,1)) ycoord(connect(:,1)) zcoord(connect(:,1))]; % coordinates of the element first nodes 
      p2 = [xcoord(connect(:,2)) ycoord(connect(:,2)) zcoord(connect(:,2))]; % coordinates of the element second nodes
      min_size = min(norm(p2-p1));
    end    

    %--------------------------------------------------------------------------
    % set_colorbar
    %%
    function clb = set_colorbar(app,ax,label,clblimits)
      % colormap(app.ColorMapName); or ax.Colormap = app.ColorMapName;
      ax.Colormap = app.ColorMapName;
      colorbar_TickLength=0.013; % 0.01, 0.02, 0.03, etc.
      colorbar_LineWidth=1.05; % 0.5, 1.0, 1.1, etc.      
      % clb=colorbar(app.UIAxesPostStaticInternalVariables,'FontName','Segoe UI Semibold','FontSize',11,...
      %              'FontWeight','normal','LineWidth',colorbar_LineWidth,...
      %              'TickLength',colorbar_TickLength);      
      clb=colorbar(ax,'FontName','Helvetica','FontSize',11,...
                   'FontWeight','normal','LineWidth',colorbar_LineWidth,...
                   'TickLength',colorbar_TickLength,'Location','eastoutside');         
      % colorbar title
      clb.Label.String = label;
      clb.Label.FontName='Helvetica';       
      clb.Label.FontSize = 13;    
      %clb.Label.Color = "#444444";
      clb.Label.Color = "#4E4E4E";
      %clb.Label.Color = "#5E5E5E";
      %clb.Label.Color = "#686868";
      % clb.Label.Interpreter = 'latex';
      clb.Label.FontWeight='bold';
      %clb.Label.FontWeight='normal';      
      % clb.Title.String = 'Force';
      % clb.Title.Interpreter = 'latex';
      % clb.Title.FontWeight='normal';
      % %clb.Title.FontName='Times New Roman';    
      % %clb.Title.FontName='Segoe UI Semibold';   
      % %clb.Title.FontName='Arial'; 
      % clb.Title.FontName='Helvetica';       
      % clb.Title.FontSize = 11;
      % clb.Title.Units = 'normalized';
      % %clb.Title.Units = 'centimeters';
      % %clb.Box = 'on';
      if clblimits(1)==clblimits(2)
        clim(ax,'auto');
      else
        clim(ax,[clblimits(1),clblimits(2)]);        
      end
    end

    %--------------------------------------------------------------------------
    % set_colorbar for traction/compression plot
    %%
    function clb = set_colorbar_traction_compression(app,ax,label,clblimits)
      % colormap(app.ColorMapName); or ax.Colormap = app.ColorMapName;
      selectedButton = app.ColormapButtonGroup.SelectedObject;
      value = selectedButton.Text;
      switch value
        case 'Parula'
          ax.Colormap = parula(2);
        case 'Jet'
          ax.Colormap = jet(2);
        case 'Turbo'
          ax.Colormap  = turbo(2);   
        case 'Hot'
          ax.Colormap = hot(2);  
      end
      colorbar_TickLength=0.013; % 0.01, 0.02, 0.03, etc.
      colorbar_LineWidth=1.05; % 0.5, 1.0, 1.1, etc.      
      % clb=colorbar(app.UIAxesPostStaticInternalVariables,'FontName','Segoe UI Semibold','FontSize',11,...
      %              'FontWeight','normal','LineWidth',colorbar_LineWidth,...
      %              'TickLength',colorbar_TickLength);      
      clb=colorbar(ax,'FontName','Helvetica','FontSize',11,...
                   'FontWeight','normal','LineWidth',colorbar_LineWidth,...
                   'TickLength',colorbar_TickLength,'Location','eastoutside');         
      % colorbar title
      clb.Label.String = label;
      clb.Label.FontName='Helvetica';       
      clb.Label.FontSize = 13;    
      %clb.Label.Color = "#444444";
      clb.Label.Color = "#4E4E4E";
      %clb.Label.Color = "#5E5E5E";
      %clb.Label.Color = "#686868";
      % clb.Label.Interpreter = 'latex';
      clb.Label.FontWeight='bold';
      %clb.Label.FontWeight='normal';      
      % clb.Title.String = 'Force';
      % clb.Title.Interpreter = 'latex';
      % clb.Title.FontWeight='normal';
      % %clb.Title.FontName='Times New Roman';    
      % %clb.Title.FontName='Segoe UI Semibold';   
      % %clb.Title.FontName='Arial'; 
      % clb.Title.FontName='Helvetica';       
      % clb.Title.FontSize = 11;
      % clb.Title.Units = 'normalized';
      % %clb.Title.Units = 'centimeters';
      % %clb.Box = 'on';
      if clblimits(1)==clblimits(2)
        clim(ax,'auto');
      else
        clim(ax,[clblimits(1),clblimits(2)]);        
      end
    end      

    %--------------------------------------------------------------------------
    % output_tab_model_summary
    %%    
    function output_tab_model_summary(app)
      app.SummaryTextAreaTabOutput.Value{end+1} = sprintf('Number of nodes = %d',app.NumberofnodesEditField.Value);
      app.SummaryTextAreaTabOutput.Value{end+1} = sprintf('Number of elements = %d',app.NumberofelementsEditField.Value); 
      app.SummaryTextAreaTabOutput.Value{end+1} = sprintf('Number of supported nodes = %d',app.NumberofsupportsEditField.Value); 
      app.SummaryTextAreaTabOutput.Value{end+1} = sprintf('Number of loaded nodes = %d',app.NumberofloadednodesEditField.Value);       
    end

    %--------------------------------------------------------------------------
    % output_tab_elements_data
    %%    
    function output_tab_elements_data(app)
      app.UITableElementsTabOutput.Data(:,1:3) = app.UITableElementConnectivity.Data(:,:);
      app.UITableElementsTabOutput.Data(:,4:5) = app.UITableElementProperties.Data(:,2:3);     
    end    

    %--------------------------------------------------------------------------
    % output_tab_nodes_data
    %%    
    function output_tab_nodes_data(app)
      app.UITableNodesTabOutput.Data(:,:) = app.UITableNodalCoordinates.Data(:,:);    
    end

    %--------------------------------------------------------------------------
    % output_tab_supports_data
    %%    
    function output_tab_supports_data(app)
      app.UITableSupportsTabOutput.Data(:,:) = app.UITableSupports.Data(:,:);    
    end    

    %--------------------------------------------------------------------------
    % output_tab_loads_data
    %%    
    function output_tab_loads_data(app)
      app.UITableLoadsTabOutput.Data(:,:) = app.UITableLoads.Data(:,:);    
    end     

    %---------------------------------------------------------------------------
    % run_analysis
    %%    
    function run_analysis(app)
      fealab_truss_static_solver(app);
      app.AnalysisIsAlreadyDone = true;
    end    

  end
  

  % Callbacks that handle component events
  methods (Access = private)

    % Code that executes after component creation
    function startupFcn(app)
      numnod = round(app.NumberofnodesEditField.Value);
      app.UITableNodalCoordinates.Data = zeros(numnod,4);
      app.UITableNodalCoordinates.Data(:,1) = [1:numnod]';
      numele = round(app.NumberofelementsEditField.Value);
      app.UITableElementConnectivity.Data = ones(numele,3);
      app.UITableElementConnectivity.Data(:,1) = [1:numele]'; 
      for i = 1:numele-1
        app.UITableElementConnectivity.Data(i,[2,3]) = [i,i+1];
      end
      app.UITableElementConnectivity.Data(numele,[2,3]) = [numele,1];
      app.UITableElementProperties.Data = ones(numele,3);
      app.UITableElementProperties.Data(:,1) = [1:numele]';
      nsupp = round(app.NumberofsupportsEditField.Value);
      app.UITableSupports.Data = zeros(nsupp,7);
      app.UITableSupports.Data(:,1) = [1:nsupp]';
      app.UITableSupports.Data(1,[3,5,7]) = 1;
      numloads = round(app.NumberofloadednodesEditField.Value);
      app.UITableLoads.Data = zeros(numloads,4);
      app.UITableLoads.Data(:,1) = [1:numloads]';      
      %
      cellcolor = "#F5F5F5";
      fontcolor = "#CFCFCF";
      s = uistyle('BackgroundColor',cellcolor,'FontColor',fontcolor);
      addStyle(app.UITableNodalCoordinates,s,'column',1);
      addStyle(app.UITableElementConnectivity,s,'column',1);  
      addStyle(app.UITableElementProperties,s,'column',1);

      % You also need to make these changes in the startup function.  
      % This will allow the app to fully render before resizing the figure.
      drawnow(); pause(.05);
      app.FeaLabTrussUIFigure.WindowState='maximized';         
    end

    % Button pushed function: LoadfromfileButtonPre
    function LoadfromfileButtonPrePushed(app, event)
      % deactivate current model and result tables if available
      app.CreateModelSwitch.Value = 'Off';
      CreateModelSwitchValueChanged(app,event);  
      %app.MessagesTextArea.Value = '';
      % get the input file
      [file,path] = uigetfile('*.inp');
      inp_file = fullfile(path,file);  
      fid = fopen(inp_file);
      if fid ~= -1 % do the following only if the file has already been opened
        % read number of nodes
        line = fgets(fid); % read commented line  
        app.NumberofnodesEditField.Value = sscanf(fgets(fid),'%d');
        % read is_2d analysis
        line = fgets(fid); % read commented line   
        app.DCheckBox2D.Value = sscanf(fgets(fid),'%d');
        % read nodal coordinates
        line = fgets(fid); % read commented line
        app.UITableNodalCoordinates.Data = zeros(app.NumberofnodesEditField.Value,4);
        for i=1:app.NumberofnodesEditField.Value
          line = fgets(fid);
          matcoord = sscanf(line,'%f');
          app.UITableNodalCoordinates.Data(i,:) = matcoord;
        end
        % read number of elements
        line = fgets(fid); % read commented line     
        app.NumberofelementsEditField.Value = sscanf(fgets(fid),'%d');  
        % read element connectivity
        line = fgets(fid); % read commented line
        app.UITableElementConnectivity.Data = zeros(app.NumberofelementsEditField.Value,3);
        for i=1:app.NumberofelementsEditField.Value
          line = fgets(fid);
          matconnect = sscanf(line,'%d');
          app.UITableElementConnectivity.Data(i,:) = matconnect;
        end  
        % read element properties
        line = fgets(fid); % read commented line
        app.UITableElementProperties.Data = zeros(app.NumberofelementsEditField.Value,3);
        for i=1:app.NumberofelementsEditField.Value
          line = fgets(fid);
          matprops = sscanf(line,'%f');
          app.UITableElementProperties.Data(i,:) = matprops;
        end    
        % read number of supports
        line = fgets(fid); % read commented line     
        app.NumberofsupportsEditField.Value = sscanf(fgets(fid),'%d');  
        % read support data
        line = fgets(fid); % read commented line
        app.UITableSupports.Data = zeros(app.NumberofsupportsEditField.Value,7);
        for i=1:app.NumberofsupportsEditField.Value
          line = fgets(fid);
          matsupp = sscanf(line,'%f');
          app.UITableSupports.Data(i,:) = matsupp;
        end  
        % read number of loaded nodes
        line = fgets(fid); % read commented line     
        app.NumberofloadednodesEditField.Value = sscanf(fgets(fid),'%d');  
        % read load data
        line = fgets(fid); % read commented line
        app.UITableLoads.Data = zeros(app.NumberofloadednodesEditField.Value,4);
        for i=1:app.NumberofloadednodesEditField.Value
          line = fgets(fid);
          matloads = sscanf(line,'%f');
          app.UITableLoads.Data(i,:) = matloads;
        end
        fclose(fid);
        % activate the Plot model to visualize the loaded file model immediately
        % by automatically 'On' the model switch in the Pre Tab
        app.CreateModelSwitch.Value = 'On';
        CreateModelSwitchValueChanged(app,event);         
      end            
    end

    % Value changed function: CreateModelSwitch
    function CreateModelSwitchValueChanged(app, event)
      value = app.CreateModelSwitch.Value;
      switch value
        case 'On'
          plt = plot_model(app,app.UIAxesModelPostStatic);
          plt = plot_model(app,app.UIAxesPostStaticDisplacements);   
          plt = plot_model(app,app.UIAxesPostStaticInternalVariables);          
          plt = plot_model(app,app.UIAxesPostStaticNodalForces);
          % enable switches and buttons
          pre_static_create_model_enable_switches_and_buttons(app);
          % populate some output tables
          output_tab_model_summary(app);
          output_tab_nodes_data(app);          
          output_tab_elements_data(app);
          output_tab_supports_data(app);
          output_tab_loads_data(app);
        case 'Off'
          cla(app.UIAxesModelPostStatic);
          legend(app.UIAxesModelPostStatic,'off');
          %
          cla(app.UIAxesPostStaticDisplacements);
          legend(app.UIAxesPostStaticDisplacements,'off'); 
          colorbar(app.UIAxesPostStaticDisplacements,'off'); 
          %
          cla(app.UIAxesPostStaticInternalVariables);
          legend(app.UIAxesPostStaticInternalVariables,'off');  
          colorbar(app.UIAxesPostStaticInternalVariables,'off');     
          %
          cla(app.UIAxesPostStaticNodalForces);
          legend(app.UIAxesPostStaticNodalForces,'off');  
          colorbar(app.UIAxesPostStaticNodalForces,'off');      

          % disable switches and buttons
          pre_static_create_model_disable_switches_and_buttons(app);
          % delete nodal forces and element internal variables tables
          delete_output_tab_data(app);
          % reset private properties
          create_model_reset_private_properties(app);
      end      
    end

    % Button pushed function: SavetoafileButtonPre
    function SavetoafileButtonPrePushed(app, event)
      [file,path] = uiputfile('*.inp');
      inp_file = fullfile(path,file);
      fid = fopen(inp_file,'w');
      if fid ~= -1 % do the following only if the file has already been opened      
        fprintf(fid,'# number of nodes\n'); 
        fprintf(fid,'%d\n',app.NumberofnodesEditField.Value); 
        fprintf(fid,'# is 2D analysis\n'); 
        fprintf(fid,'%d\n',app.DCheckBox2D.Value);
        fprintf(fid,'# nodal coordinates: node x-coord y-coord z-coord\n');
        for node_i = 1:app.NumberofnodesEditField.Value
          fprintf(fid,'%d %.10f %.10f %.10f\n',...
                  app.UITableNodalCoordinates.Data(node_i,1),...
                  app.UITableNodalCoordinates.Data(node_i,2),...
                  app.UITableNodalCoordinates.Data(node_i,3),...
                  app.UITableNodalCoordinates.Data(node_i,4));  
        end      
        fprintf(fid,'# number of elements\n'); 
        fprintf(fid,'%d\n',app.NumberofelementsEditField.Value); 
        fprintf(fid,'# element connectivity: element node1 node2\n');    
        for element_i = 1:app.NumberofelementsEditField.Value
          fprintf(fid,'%d %d %d\n',...
                  app.UITableElementConnectivity.Data(element_i,1),...
                  app.UITableElementConnectivity.Data(element_i,2),...
                  app.UITableElementConnectivity.Data(element_i,3));          
        end
        % fprintf(fid,'# fill properties: Area\n'); 
        % fprintf(fid,'%d\n',app.FillAreaCheckBox.Value);
        % fprintf(fid,'# fill properties: Young Modulus\n'); 
        % fprintf(fid,'%d\n',app.FillYMCheckBox.Value);
        fprintf(fid,'# element properties: element area young_modulus\n');    
        for element_i = 1:app.NumberofelementsEditField.Value
          fprintf(fid,'%d %f %f\n',...
                  app.UITableElementProperties.Data(element_i,1),...
                  app.UITableElementProperties.Data(element_i,2),...
                  app.UITableElementProperties.Data(element_i,3));          
        end
        fprintf(fid,'# number of supports\n'); 
        fprintf(fid,'%d\n',app.NumberofsupportsEditField.Value); 
        fprintf(fid,'# support data: node x-disp x-fixed? y-disp y-fixed? z-disp z-fixed?\n');    
        for support_i = 1:app.NumberofsupportsEditField.Value
          fprintf(fid,'%d %f %d %f %d %f %d\n',...
                  app.UITableSupports.Data(support_i,1),...
                  app.UITableSupports.Data(support_i,2),...
                  app.UITableSupports.Data(support_i,3),...
                  app.UITableSupports.Data(support_i,4),...
                  app.UITableSupports.Data(support_i,5),...
                  app.UITableSupports.Data(support_i,6),...                
                  app.UITableSupports.Data(support_i,7));          
        end
        fprintf(fid,'# number of loaded nodes\n'); 
        fprintf(fid,'%d\n',app.NumberofloadednodesEditField.Value); 
        fprintf(fid,'# load data: node x-load y-load z-load\n');    
        for support_i = 1:app.NumberofloadednodesEditField.Value
          fprintf(fid,'%d %f %f %f\n',...
                  app.UITableLoads.Data(support_i,1),...
                  app.UITableLoads.Data(support_i,2),...
                  app.UITableLoads.Data(support_i,3),...               
                  app.UITableLoads.Data(support_i,4));          
        end  
        fclose(fid);
      end      
    end

    % Button pushed function: TABSnapshotButtonPre
    function TABSnapshotButtonPrePushed(app, event)
      filter = {'*.jpg';'*.png';'*.tif';'*.pdf'};
      [file,path] = uiputfile(filter);
      if file~=0 % do the following if the file has already been opened
        figfile = fullfile(path,file);     
        exportapp(app.FeaLabTrussUIFigure,figfile);    
      end      
    end

    % Button pushed function: RunanalysisButtonStaticAnalysis
    function RunanalysisButtonStaticAnalysisPushed(app, event)
      run_analysis(app);
      % the following line enables  switches and buttons
      pre_static_run_analysis_enable_switches_and_buttons(app);
      % the following line changes the view from the Pre tab to Post tab
      app.TabGroupMain.SelectedTab = app.PostStaticTab;     
      app.TabGroupOutput.SelectedTab = app.SummaryTabOutput; 
    end

    % Value changed function: NumberofnodesEditField
    function NumberofnodesEditFieldValueChanged(app, event)
      numnod = round(app.NumberofnodesEditField.Value);
      app.UITableNodalCoordinates.Data = zeros(numnod,4);
      app.UITableNodalCoordinates.Data(:,1) = [1:numnod]';  
      % deactivate current model and result tables
      app.CreateModelSwitch.Value = 'Off';
      CreateModelSwitchValueChanged(app, event);
    end

    % Value changed function: DCheckBox2D
    function DCheckBox2DValueChanged(app, event)
      value = app.DCheckBox2D.Value;
      if app.DCheckBox2D.Value==1
        app.UITableNodalCoordinates.Data(:,4) = 0;
        app.UITableLoads.Data(:,4) = 0;
        app.UITableSupports.Data(:,6) = 0;
        app.UITableSupports.Data(:,7) = 1;
        %app.UITableLoads.ColumnEditable = [false true true false];
        app.UITableNodalCoordinates.ColumnEditable(4) = false; 
        app.UITableLoads.ColumnEditable(4) = false;       
        app.UITableSupports.ColumnEditable(6) = false;       
        app.UITableSupports.ColumnEditable(7) = false;         
        cellcolor = "#F5F5F5";
        fontcolor = "#CFCFCF";
        s = uistyle('BackgroundColor',cellcolor,'FontColor',fontcolor);
        addStyle(app.UITableNodalCoordinates,s,'column',4);
        addStyle(app.UITableLoads,s,'column',4);
        addStyle(app.UITableSupports,s,'column',[6,7]);  
        view(app.UIAxesModelPostStatic,2);
      else
        app.UITableNodalCoordinates.ColumnEditable(4) = true; 
        app.UITableLoads.ColumnEditable(4) = true;       
        app.UITableSupports.ColumnEditable(6) = true;       
        app.UITableSupports.ColumnEditable(7) = true;         
        cellcolor = 'white';
        fontcolor = 'k';
        s = uistyle('BackgroundColor',cellcolor,'FontColor',fontcolor);
        addStyle(app.UITableNodalCoordinates,s,'column',4);
        addStyle(app.UITableLoads,s,'column',4);
        addStyle(app.UITableSupports,s,'column',[6,7]);  
        view(app.UIAxesModelPostStatic,3);
      end
      % deactivate current model and result tables
      app.CreateModelSwitch.Value = 'Off';
      CreateModelSwitchValueChanged(app, event);     
    end

    % Cell edit callback: UITableNodalCoordinates
    function UITableNodalCoordinatesCellEdit(app, event)
      indices = event.Indices;
      newData = event.NewData;

      x = app.UITableNodalCoordinates.Data(:,2);
      y = app.UITableNodalCoordinates.Data(:,3);      
      z = app.UITableNodalCoordinates.Data(:,4);   
      numnod = length(x);
      zx = length(find(x==0)); % determine if all x-coordinates are 0
      zy = length(find(y==0)); % determine if all x-coordinates are 0
      zz = length(find(z==0)); % determine if all z-coordinates are 0     
      if zx==numnod
        app.UITableLoads.Data(:,2)=0;
        app.UITableSupports.Data(:,2)=0;
        app.UITableSupports.Data(:,3)=1;       
        %app.UITableLoads.ColumnEditable = [false false true true];
        app.UITableLoads.ColumnEditable(2) = false;   
        app.UITableSupports.ColumnEditable(2) = false;       
        app.UITableSupports.ColumnEditable(3) = false;          
        cellcolor = "#F5F5F5";
        fontcolor = "#CFCFCF";
        s = uistyle('BackgroundColor',cellcolor,'FontColor',fontcolor);
        addStyle(app.UITableLoads,s,'column',2);
        addStyle(app.UITableSupports,s,'column',[2,3]);        
      else
        % app.UITableLoads.Data(:,2)=0;
        % app.UITableSupports.Data(:,2)=0;
        % app.UITableSupports.Data(:,3)=0;          
        % %app.UITableLoads.ColumnEditable = [false true true true];
        app.UITableLoads.ColumnEditable(2) = true;   
        app.UITableSupports.ColumnEditable(2) = true;       
        app.UITableSupports.ColumnEditable(3) = true;         
        s = uistyle('BackgroundColor','white','FontColor','k');
        addStyle(app.UITableLoads,s,'column',2);    
        addStyle(app.UITableSupports,s,'column',[2,3]);           
      end     
      if zy==numnod
        app.UITableLoads.Data(:,3)=0;
        app.UITableSupports.Data(:,4)=0;
        app.UITableSupports.Data(:,5)=1;         
        %app.UITableLoads.ColumnEditable = [false false true true];
        app.UITableLoads.ColumnEditable(3) = false;       
        app.UITableSupports.ColumnEditable(4) = false;       
        app.UITableSupports.ColumnEditable(5) = false;          
        cellcolor = "#F5F5F5";
        fontcolor = "#CFCFCF";
        s = uistyle('BackgroundColor',cellcolor,'FontColor',fontcolor);
        addStyle(app.UITableLoads,s,'column',3);
        addStyle(app.UITableSupports,s,'column',[4,5]);          
      else
        % app.UITableLoads.Data(:,3)=0;
        % app.UITableSupports.Data(:,4)=0;
        % app.UITableSupports.Data(:,5)=0;          
        % %app.UITableLoads.ColumnEditable = [false true true true];
        app.UITableLoads.ColumnEditable(3) = true;         
        app.UITableSupports.ColumnEditable(4) = true;       
        app.UITableSupports.ColumnEditable(5) = true;          
        s = uistyle('BackgroundColor','white','FontColor','k');
        addStyle(app.UITableLoads,s,'column',3);   
        addStyle(app.UITableSupports,s,'column',[4,5]);          
      end        
      if zz==numnod
        app.UITableLoads.Data(:,4) = 0;
        app.UITableSupports.Data(:,6) = 0;
        app.UITableSupports.Data(:,7) = 1;         
        %app.UITableLoads.ColumnEditable = [false true true false];
        app.UITableLoads.ColumnEditable(4) = false;       
        app.UITableSupports.ColumnEditable(6) = false;       
        app.UITableSupports.ColumnEditable(7) = false;         
        cellcolor = "#F5F5F5";
        fontcolor = "#CFCFCF";
        s = uistyle('BackgroundColor',cellcolor,'FontColor',fontcolor);
        addStyle(app.UITableLoads,s,'column',4);
        addStyle(app.UITableSupports,s,'column',[6,7]);          
      else
        % app.UITableLoads.Data(:,4) = 0;
        % app.UITableSupports.Data(:,6) = 0;
        % app.UITableSupports.Data(:,7) = 0;         
        % %app.UITableLoads.ColumnEditable = [false true true true];
        app.UITableLoads.ColumnEditable(4) = true;  
        app.UITableSupports.ColumnEditable(6) = true;       
        app.UITableSupports.ColumnEditable(7) = true;          
        s = uistyle('BackgroundColor','white','FontColor','k');
        addStyle(app.UITableLoads,s,'column',4);
        addStyle(app.UITableSupports,s,'column',[6,7]);        
      end

      % deactivate current model and result tables
      app.CreateModelSwitch.Value = 'Off';
      CreateModelSwitchValueChanged(app, event);       
    end

    % Value changed function: NumberofelementsEditField
    function NumberofelementsEditFieldValueChanged(app, event)
      value = app.NumberofelementsEditField.Value;
      numele = round(app.NumberofelementsEditField.Value);
      app.UITableElementConnectivity.Data = ones(numele,3);
      app.UITableElementConnectivity.Data(:,1) = [1:numele]';   
      app.UITableElementProperties.Data = ones(numele,3);
      app.UITableElementProperties.Data(:,1) = [1:numele]';    
      % deactivate current model and result tables
      app.CreateModelSwitch.Value = 'Off';
      CreateModelSwitchValueChanged(app, event);         
    end

    % Cell edit callback: UITableElementConnectivity
    function UITableElementConnectivityCellEdit(app, event)
      indices = event.Indices;
      newData = event.NewData;
      rowcol = event.Indices;
      app.UITableElementConnectivity.Data(rowcol(1),rowcol(2)) = round(app.UITableElementConnectivity.Data(rowcol(1),rowcol(2)));
      if app.UITableElementConnectivity.Data(rowcol(1),rowcol(2)) < 0
        app.UITableElementConnectivity.Data(rowcol(1),rowcol(2)) = -app.UITableElementConnectivity.Data(rowcol(1),rowcol(2));
        s = uistyle('BackgroundColor','yellow');
        addStyle(app.UITableElementConnectivity,s,'cell',rowcol);
        app.MessagesTextArea.Value{end+1} =...
            'In ELEMENT CONNECTIVITY, values must be positive: set to positive'; 
      else
        s = uistyle('BackgroundColor','white');
        addStyle(app.UITableElementConnectivity,s,'cell',rowcol);          
      end
      % deactivate current model and result tables
      app.CreateModelSwitch.Value = 'Off';
      CreateModelSwitchValueChanged(app, event);      
    end

    % Value changed function: FillAreaCheckBox
    function FillAreaCheckBoxValueChanged(app, event)
      value = app.FillAreaCheckBox.Value;
      if app.FillAreaCheckBox.Value
        app.UITableElementProperties.Data(:,2) = app.AreaEditField.Value;
        % deactivate current model and result tables
        app.CreateModelSwitch.Value = 'Off';
        CreateModelSwitchValueChanged(app, event);        
      end      
    end

    % Value changed function: FillYMCheckBox
    function FillYMCheckBoxValueChanged(app, event)
      value = app.FillYMCheckBox.Value;
      if app.FillYMCheckBox.Value
        app.UITableElementProperties.Data(:,3) = app.YMEditField.Value;
        % deactivate current model and result tables
        app.CreateModelSwitch.Value = 'Off';
        CreateModelSwitchValueChanged(app, event);         
      end        
    end

    % Cell edit callback: UITableElementProperties
    function UITableElementPropertiesCellEdit(app, event)
      indices = event.Indices;
      newData = event.NewData;
      % deactivate current model and result tables
      app.CreateModelSwitch.Value = 'Off';
      CreateModelSwitchValueChanged(app, event);        
    end

    % Value changed function: NumberofsupportsEditField
    function NumberofsupportsEditFieldValueChanged(app, event)
      value = app.NumberofsupportsEditField.Value;
      nsupp = round(app.NumberofsupportsEditField.Value);
      app.UITableSupports.Data = zeros(nsupp,7);
      app.UITableSupports.Data(:,1) = [1:nsupp]'; 
      % deactivate current model and result tables
      app.CreateModelSwitch.Value = 'Off';
      CreateModelSwitchValueChanged(app, event);        
    end

    % Cell edit callback: UITableSupports
    function UITableSupportsCellEdit(app, event)
      indices = event.Indices;
      newData = event.NewData;
      rowcol = event.Indices;
      is_true = ismember(rowcol(2),[3 5 7]) &&...
                ~ismember(app.UITableSupports.Data(rowcol(1),rowcol(2)),[0; 1]);
      if is_true
        app.UITableSupports.Data(rowcol(1),rowcol(2)) = ...
                        round(app.UITableSupports.Data(rowcol(1),rowcol(2)) -...
                              app.UITableSupports.Data(rowcol(1),rowcol(2)));       
        s = uistyle('BackgroundColor','yellow');
        addStyle(app.UITableSupports,s,'cell',rowcol);
        app.MessagesTextArea.Value{end+1} =...
          'In SUPPORT DATA --> fixed? enter 1 (for true) or 0 (for false): set to 0';
      else
        s = uistyle('BackgroundColor','white');
        addStyle(app.UITableSupports,s,'cell',rowcol);           
        %app.MessagesTextArea.Value = '';
      end
      app.UITableSupports.Data(:,1) = round(app.UITableSupports.Data(:,1));
      if rowcol(2) == 1
        if app.UITableSupports.Data(rowcol(1),rowcol(2)) < 0
          app.UITableSupports.Data(rowcol(1),rowcol(2)) = -app.UITableSupports.Data(rowcol(1),rowcol(2));
          s = uistyle('BackgroundColor','yellow');
          addStyle(app.UITableSupports,s,'cell',rowcol);
          app.MessagesTextArea.Value{end+1} =...
            'In SUPPORT DATA --> node, value must be positive: set to positive';        
        else
          s = uistyle('BackgroundColor','white');
          addStyle(app.UITableSupports,s,'cell',rowcol);          
        end
      end
      % deactivate current model and result tables
      app.CreateModelSwitch.Value = 'Off';
      CreateModelSwitchValueChanged(app, event);         
    end

    % Value changed function: NumberofloadednodesEditField
    function NumberofloadednodesEditFieldValueChanged(app, event)
      value = app.NumberofloadednodesEditField.Value;
      numloads = round(app.NumberofloadednodesEditField.Value);
      app.UITableLoads.Data = zeros(numloads,4);
      app.UITableLoads.Data(:,1) = [1:numloads]';
      % deactivate current model and result tables
      app.CreateModelSwitch.Value = 'Off';
      CreateModelSwitchValueChanged(app, event);      
    end

    % Cell edit callback: UITableLoads
    function UITableLoadsCellEdit(app, event)
      indices = event.Indices;
      newData = event.NewData;
      rowcol = event.Indices;
      app.UITableLoads.Data(:,1) = round(app.UITableLoads.Data(:,1));
      if rowcol(2) == 1
        if app.UITableLoads.Data(rowcol(1),rowcol(2)) < 0
          app.UITableLoads.Data(rowcol(1),rowcol(2)) = -app.UITableLoads.Data(rowcol(1),rowcol(2));
          s = uistyle('BackgroundColor','yellow');
          addStyle(app.UITableLoads,s,'cell',rowcol);
          app.MessagesTextArea.Value{end+1} =...
            'In LOAD DATA --> node, value must be positive: set to positive';        
        else
          s = uistyle('BackgroundColor','white');
          addStyle(app.UITableLoads,s,'cell',rowcol);          
        end
      end
      % deactivate current model and result tables
      app.CreateModelSwitch.Value = 'Off';
      CreateModelSwitchValueChanged(app, event);          
    end

    % Selection changed function: ViewsModelPostStatic
    function ViewsModelPostStaticSelectionChanged(app, event)
      selectedButton = app.ViewsModelPostStatic.SelectedObject;
      value = selectedButton.Text;
      switch value
        case '+X+Y+Z'
          view(app.UIAxesModelPostStatic,3);          
        case '+Y-X+Z'
          view(app.UIAxesModelPostStatic,[55 30]);
        case '-X-Y+Z'
          view(app.UIAxesModelPostStatic,[145 30]);   
        case '-Y+X+Z'
          view(app.UIAxesModelPostStatic,[235 30]); 
        case '+X+Z'
          view(app.UIAxesModelPostStatic,[0 0]);   
        case '-X+Z'
          view(app.UIAxesModelPostStatic,[180 0]);   
        case '+Y+Z'
          view(app.UIAxesModelPostStatic,[90 0]);  
        case '-Y+Z'
          view(app.UIAxesModelPostStatic,[270 0]); 
        case '+X+Y'
          view(app.UIAxesModelPostStatic,2);             
      end      
    end

    % Value changed function: NodenumbersSwitchModelPostStatic
    function NodenumbersSwitchModelPostStaticValueChanged(app, event)
      value = app.NodenumbersSwitchModelPostStatic.Value;
      % plot node numbers
      switch value
        case 'On'
          if isempty(app.hTextNodeNumbersPostStaticModel)
            app.hTextNodeNumbersPostStaticModel =...
                 plot_node_numbers(app,app.UIAxesModelPostStatic);
          else
            numnod = length(app.hTextNodeNumbersPostStaticModel);
            for i = 1:numnod
              app.hTextNodeNumbersPostStaticModel{i}.Visible = "on";
              app.hTextNodeNumbersPostStaticModel{i}.FontSize = app.NodeNumbersFontSizeEditField.Value;              
            end                
          end
        case 'Off'
          numnod = length(app.hTextNodeNumbersPostStaticModel);
          for i = 1:numnod
            app.hTextNodeNumbersPostStaticModel{i}.Visible = "off";
          end    
      end      
    end

    % Value changed function: ElementnumbersSwitchModelPostStatic
    function ElementnumbersSwitchModelPostStaticValueChanged(app, event)
      value = app.ElementnumbersSwitchModelPostStatic.Value;
      switch value
        case 'On'
          if isempty(app.hTextElementNumbersPostStaticModel)
            app.hTextElementNumbersPostStaticModel =...
                 plot_element_numbers(app,app.UIAxesModelPostStatic);
          else
            numele = length(app.hTextElementNumbersPostStaticModel);
            for i = 1:numele
              app.hTextElementNumbersPostStaticModel{i}.Visible = "on";
              app.hTextElementNumbersPostStaticModel{i}.FontSize = app.ElementNumbersFontSizeEditField.Value;
            end            
          end
        case 'Off'
          numele = length(app.hTextElementNumbersPostStaticModel);
          for i = 1:numele
            app.hTextElementNumbersPostStaticModel{i}.Visible = "off";
          end
      end         
    end

    % Value changed function: SupportsSwitchModelPostStatic
    function SupportsSwitchModelPostStaticValueChanged(app, event)
      value = app.SupportsSwitchModelPostStatic.Value;
      switch value
        case 'On'
          legend(app.UIAxesModelPostStatic,'show');
          % the following is needed to plot the lines in the plot only once;
          % otherwise, the lines would be plotted over the previous lines
          % causing that their legend is appended to the previous legend rather
          % than overwritten
          if isempty(app.hMarkerSupportsPostStaticModel) % Marker supports have not been previously turned on
            app.hMarkerSupportsPostStaticModel =...
                 plot_supports(app,app.UIAxesModelPostStatic);
            nsupp = length(app.hMarkerSupportsPostStaticModel);            
            app.OldMarkerSupportsPostStaticModel = cell(nsupp,1);
            for i=1:nsupp
              app.OldMarkerSupportsPostStaticModel{i} = app.hMarkerSupportsPostStaticModel{i}.Marker;
            end 
          else % Marker supports have been previously turned on
            nsupp = length(app.hMarkerSupportsPostStaticModel);
            for i=1:nsupp
              app.hMarkerSupportsPostStaticModel{i}.Marker = app.OldMarkerSupportsPostStaticModel{i};
              app.hMarkerSupportsPostStaticModel{i}.MarkerSize = app.SupportsSizeEditField.Value;
            end
          end
        case 'Off'
          legend(app.UIAxesModelPostStatic,'hide');  
          nsupp = length(app.hMarkerSupportsPostStaticModel);
          for i=1:nsupp
            app.hMarkerSupportsPostStaticModel{i}.Marker = "none";
          end        
      end
    end

    % Value changed function: LoadsSwitchModelPostStatic
    function LoadsSwitchModelPostStaticValueChanged(app, event)
      value = app.LoadsSwitchModelPostStatic.Value;
      switch value
        case 'On'
          if isempty(app.hPlotLoadsPostStaticModel) % Loads have not been previously turned on
            [app.hPlotLoadsPostStaticModel,app.hLoadsTextPostStaticModel] =...
                 plot_loads(app,app.UIAxesModelPostStatic);
          else % Loads have been previously turned on
            nloads = length(app.hPlotLoadsPostStaticModel);
            for i = 1:nloads
              app.hPlotLoadsPostStaticModel{i}.Visible = "on";
              app.hLoadsTextPostStaticModel{i}.Visible = "on";
              app.hLoadsTextPostStaticModel{i}.FontSize = app.LoadsSizeEditField.Value;
            end
          end
        case 'Off'
          nloads = length(app.hPlotLoadsPostStaticModel);
          for i = 1:nloads
            app.hPlotLoadsPostStaticModel{i}.Visible = "off";
            app.hLoadsTextPostStaticModel{i}.Visible = "off";
          end
      end        
    end

    % Button pushed function: ExportresultsButtonPostStatic
    function ExportresultsButtonPostStaticPushed(app, event)
      filter = {'*.xlsx'};
      [file,path] = uiputfile(filter);
      if file~=0 % do the following only if the file has already been opened
        filename = fullfile(path,file);   
        titles = {'Node', 'Ux', 'Uy', 'Uz', '||U||'};
        writecell(titles,filename,'WriteMode','overwrite','AutoFitWidth',true);   
        writematrix(app.UITableNodalDisplacementsTabOutput.Data,filename,'WriteMode','append','AutoFitWidth',true);        
        titles = {'Node', 'Fx', 'Fy', 'Fz', 'Rx', 'Ry', 'Rz'};
        writecell(titles,filename,'WriteMode','append','AutoFitWidth',true);   
        writematrix(app.UITableNodalForcesTabOutput.Data,filename,'WriteMode','append','AutoFitWidth',true);
        titles = {'Element', 'Strain', 'Stress', 'Force'};
        writecell(titles,filename,'WriteMode','append','AutoFitWidth',true);
        writematrix(app.UITableEleIntVariablesTabOutput.Data,filename,'WriteMode','append','AutoFitWidth',true);  
        titles = {'                              ', '                              ', '                              ', '                              '};
        writecell(titles,filename,'WriteMode','append','AutoFitWidth',true);          
      end       
    end

    % Button pushed function: TABSnapshotButtonPostStatic
    function TABSnapshotButtonPostStaticPushed(app, event)
      filter = {'*.jpg';'*.png';'*.tif';'*.pdf'};
      [file,path] = uiputfile(filter);
      if file~=0 % do the following if the file has already been opened
        figfile = fullfile(path,file);     
        exportapp(app.FeaLabTrussUIFigure,figfile);    
      end        
    end

    % Selection changed function: RoundtodigitsPostStatic
    function RoundtodigitsPostStaticSelectionChanged(app, event)
      selectedButton = app.RoundtodigitsPostStatic.SelectedObject;
      value = selectedButton.Text;
      run_analysis(app);
      ndigits = str2double(value);
      %
      app.UITableNodalDisplacementsTabOutput.Data(:,2) = round(app.UITableNodalDisplacementsTabOutput.Data(:,2),ndigits);
      app.UITableNodalDisplacementsTabOutput.Data(:,3) = round(app.UITableNodalDisplacementsTabOutput.Data(:,3),ndigits);        
      app.UITableNodalDisplacementsTabOutput.Data(:,4) = round(app.UITableNodalDisplacementsTabOutput.Data(:,4),ndigits);
      %
      app.UITableNodalForcesTabOutput.Data(:,2) = round(app.UITableNodalForcesTabOutput.Data(:,2),ndigits);
      app.UITableNodalForcesTabOutput.Data(:,3) = round(app.UITableNodalForcesTabOutput.Data(:,3),ndigits);        
      app.UITableNodalForcesTabOutput.Data(:,4) = round(app.UITableNodalForcesTabOutput.Data(:,4),ndigits);
      %
      app.UITableEleIntVariablesTabOutput.Data(:,2) = round(app.UITableEleIntVariablesTabOutput.Data(:,2),ndigits);
      app.UITableEleIntVariablesTabOutput.Data(:,3) = round(app.UITableEleIntVariablesTabOutput.Data(:,3),ndigits);        
      app.UITableEleIntVariablesTabOutput.Data(:,4) = round(app.UITableEleIntVariablesTabOutput.Data(:,4),ndigits);    
    end

    % Selection changed function: ViewsPostStaticDisplacements
    function ViewsPostStaticDisplacementsSelectionChanged(app, event)
      selectedButton = app.ViewsPostStaticDisplacements.SelectedObject;
      value = selectedButton.Text;
      switch value
        case '+X+Y+Z'
          view(app.UIAxesPostStaticDisplacements,3);          
        case '+Y-X+Z'
          view(app.UIAxesPostStaticDisplacements,[55 30]);
        case '-X-Y+Z'
          view(app.UIAxesPostStaticDisplacements,[145 30]);   
        case '-Y+X+Z'
          view(app.UIAxesPostStaticDisplacements,[235 30]); 
        case '+X+Z'
          view(app.UIAxesPostStaticDisplacements,[0 0]);   
        case '-X+Z'
          view(app.UIAxesPostStaticDisplacements,[180 0]);   
        case '+Y+Z'
          view(app.UIAxesPostStaticDisplacements,[90 0]);  
        case '-Y+Z'
          view(app.UIAxesPostStaticDisplacements,[270 0]); 
        case '+X+Y'
          view(app.UIAxesPostStaticDisplacements,2);             
      end      
    end

    % Selection changed function: ViewsPostStaticIntVariables
    function ViewsPostStaticIntVariablesSelectionChanged(app, event)
      selectedButton = app.ViewsPostStaticIntVariables.SelectedObject;
      value = selectedButton.Text;
      switch value
        case '+X+Y+Z'
          view(app.UIAxesPostStaticInternalVariables,3);          
        case '+Y-X+Z'
          view(app.UIAxesPostStaticInternalVariables,[55 30]);
        case '-X-Y+Z'
          view(app.UIAxesPostStaticInternalVariables,[145 30]);   
        case '-Y+X+Z'
          view(app.UIAxesPostStaticInternalVariables,[235 30]); 
        case '+X+Z'
          view(app.UIAxesPostStaticInternalVariables,[0 0]);   
        case '-X+Z'
          view(app.UIAxesPostStaticInternalVariables,[180 0]);   
        case '+Y+Z'
          view(app.UIAxesPostStaticInternalVariables,[90 0]);  
        case '-Y+Z'
          view(app.UIAxesPostStaticInternalVariables,[270 0]); 
        case '+X+Y'
          view(app.UIAxesPostStaticInternalVariables,2);             
      end            
    end

    % Button pushed function: ForcesButtonPostStaticIntVariables
    function ForcesButtonPostStaticIntVariablesPushed(app, event)
      % plot the axial force on the trusses
      ax = app.UIAxesPostStaticInternalVariables;
      set_model_and_switches_post_static_internal_variables(app,event);
      %
      app.TabGroupOutput.SelectedTab = app.InternalvariablesTabOutput;     
      % legend(ax,'off');      
      numele = size(app.UITableElementConnectivity.Data,1);
      %cm = colormap(app.UIAxesPostStaticInternalVariables,parula(numele));
      c = app.UITableEleIntVariablesTabOutput.Data(:,4); % force

      value = app.DeformedSwitchPostStaticInternalVariables.Value;  
      mf = app.FactorEditFieldPostStaticInternalVariables.Value;      
      switch value
        case 'On'
          for i = 1:numele
            node1 = app.UITableElementConnectivity.Data(i,2);
            node2 = app.UITableElementConnectivity.Data(i,3);   
            x = app.UITableNodalCoordinates.Data([node1 node2],2)+...
                mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],2);
            y = app.UITableNodalCoordinates.Data([node1 node2],3)+...
                mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],3); 
            z = app.UITableNodalCoordinates.Data([node1 node2],4)+...
                mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],4); 
            x(end+1) = NaN;
            y(end+1) = NaN;
            z(end+1) = NaN;
            plt = patch(ax,x,y,z,[c(i);c(i);NaN],EdgeColor='flat');
            hold(ax,'on');
            plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
          end
        case 'Off'
          for i = 1:numele
            node1 = app.UITableElementConnectivity.Data(i,2);
            node2 = app.UITableElementConnectivity.Data(i,3);   
            x = app.UITableNodalCoordinates.Data([node1 node2],2);
            y = app.UITableNodalCoordinates.Data([node1 node2],3); 
            z = app.UITableNodalCoordinates.Data([node1 node2],4); 
            x(end+1) = NaN;
            y(end+1) = NaN;
            z(end+1) = NaN;
            plt = patch(ax,x,y,z,[c(i);c(i);NaN],EdgeColor='flat');
            hold(ax,'on');
            plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
          end
      end
      label = 'Force';
      clblimits = [min(c),max(c)];      
      clb = set_colorbar(app,ax,label,clblimits);
      % Enable element number switch
      post_static_int_var_enable_switches_and_buttons(app);      
    end

    % Value changed function: 
    % ElementnumbersSwitchPostStaticIntVariables
    function ElementnumbersSwitchPostStaticIntVariablesValueChanged(app, event)
      value = app.ElementnumbersSwitchPostStaticIntVariables.Value;
      switch value
        case 'On'
          if isempty(app.hTextElementNumbersPostStaticInternalVariables)
            app.hTextElementNumbersPostStaticInternalVariables =...
                 plot_element_numbers(app,app.UIAxesPostStaticInternalVariables);
          else
            numele = length(app.hTextElementNumbersPostStaticInternalVariables);
            for i = 1:numele
              app.hTextElementNumbersPostStaticInternalVariables{i}.Visible = "on";
            end            
          end
        case 'Off'
          numele = length(app.hTextElementNumbersPostStaticInternalVariables);
          for i = 1:numele
            app.hTextElementNumbersPostStaticInternalVariables{i}.Visible = "off";
          end
      end       
    end

    % Selection changed function: ViewsPostStaticNodalforces
    function ViewsPostStaticNodalforcesSelectionChanged(app, event)
      selectedButton = app.ViewsPostStaticNodalforces.SelectedObject;
      value = selectedButton.Text;
      switch value
        case '+X+Y+Z'
          view(app.UIAxesPostStaticNodalForces,3);          
        case '+Y-X+Z'
          view(app.UIAxesPostStaticNodalForces,[55 30]);
        case '-X-Y+Z'
          view(app.UIAxesPostStaticNodalForces,[145 30]);   
        case '-Y+X+Z'
          view(app.UIAxesPostStaticNodalForces,[235 30]); 
        case '+X+Z'
          view(app.UIAxesPostStaticNodalForces,[0 0]);   
        case '-X+Z'
          view(app.UIAxesPostStaticNodalForces,[180 0]);   
        case '+Y+Z'
          view(app.UIAxesPostStaticNodalForces,[90 0]);  
        case '-Y+Z'
          view(app.UIAxesPostStaticNodalForces,[270 0]); 
        case '+X+Y'
          view(app.UIAxesPostStaticNodalForces,2);             
      end        
    end

    % Value changed function: PlotaxisCheckBox
    function PlotaxisCheckBoxValueChanged(app, event)
      value = app.PlotaxisCheckBox.Value;
      if ~value % if PlotaxisCheckBox is false, deactivate PlotgridCheckBox
        app.PlotgridCheckBox.Value = false; 
        PlotgridCheckBoxValueChanged(app, event);
      end  
      % load or update model space without deleting results if available
      update_model_space_after_change_in_pre_settings_tab(app);
    end

    % Selection changed function: ColormapButtonGroup
    function ColormapButtonGroupSelectionChanged(app, event)
      selectedButton = app.ColormapButtonGroup.SelectedObject;
      value = selectedButton.Text;
      switch value
        case 'Parula'
          app.ColorMapName = parula;
        case 'Jet'
          app.ColorMapName = jet;
        case 'Turbo'
          app.ColorMapName = turbo;   
        case 'Hot'
          app.ColorMapName = hot;  
      end
      update_model_space_after_change_in_pre_settings_tab(app);      
      % % deactivate current model and results
      % app.CreateModelSwitch.Value = 'Off';
      % CreateModelSwitchValueChanged(app, event);         
    end

    % Value changed function: NodeNumbersFontSizeEditField
    function NodeNumbersFontSizeEditFieldValueChanged(app, event)
      value = app.NodeNumbersFontSizeEditField.Value;
      
    end

    % Selection changed function: BackgroundButtonGroup
    function BackgroundButtonGroupSelectionChanged(app, event)
      selectedButton = app.BackgroundButtonGroup.SelectedObject;
      value = selectedButton.Text;
      switch value
        case 'White'
          app.ModelSpaceBackgroundColor = 'w';
        case 'Gray'
          app.ModelSpaceBackgroundColor = [0.94 0.94 0.94];
      end  
      update_model_space_after_change_in_pre_settings_tab(app);
    end

    % Value changed function: ShowglobalcoordinatesystemCheckBox
    function ShowglobalcoordinatesystemCheckBoxValueChanged(app, event)
      value = app.ShowglobalcoordinatesystemCheckBox.Value;
      update_model_space_after_change_in_pre_settings_tab(app);
    end

    % Value changed function: PlotgridCheckBox
    function PlotgridCheckBoxValueChanged(app, event)
      value = app.PlotgridCheckBox.Value;
      if value && ~app.PlotaxisCheckBox.Value
        app.PlotaxisCheckBox.Value = true;
        PlotaxisCheckBoxValueChanged(app, event)
      else
        update_model_space_after_change_in_pre_settings_tab(app);  
      end
    end

    % Button pushed function: StrainsButtonPostStaticIntVariables
    function StrainsButtonPostStaticIntVariablesPushed(app, event)
      % plot the strain on the trusses
      set_model_and_switches_post_static_internal_variables(app,event);
      %
      ax = app.UIAxesPostStaticInternalVariables;      
      hold(ax,'on');
      %
      app.TabGroupOutput.SelectedTab = app.InternalvariablesTabOutput;     
      % legend(ax,'off');
      numele = size(app.UITableElementConnectivity.Data,1);
      %cm = colormap(app.UIAxesPostStaticInternalVariables,parula(numele));
      c = app.UITableEleIntVariablesTabOutput.Data(:,2); % strain
      value = app.DeformedSwitchPostStaticInternalVariables.Value;  
      mf = app.FactorEditFieldPostStaticInternalVariables.Value;      
      switch value
        case 'On'
          for i = 1:numele
            node1 = app.UITableElementConnectivity.Data(i,2);
            node2 = app.UITableElementConnectivity.Data(i,3);   
            x = app.UITableNodalCoordinates.Data([node1 node2],2)+...
                mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],2);
            y = app.UITableNodalCoordinates.Data([node1 node2],3)+...
                mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],3); 
            z = app.UITableNodalCoordinates.Data([node1 node2],4)+...
                mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],4); 
            x(end+1) = NaN;
            y(end+1) = NaN;
            z(end+1) = NaN;
            plt = patch(ax,x,y,z,[c(i);c(i);NaN],EdgeColor='flat');
            % hold(ax,'on');
            plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
          end
        case 'Off'
          for i = 1:numele
            node1 = app.UITableElementConnectivity.Data(i,2);
            node2 = app.UITableElementConnectivity.Data(i,3);   
            x = app.UITableNodalCoordinates.Data([node1 node2],2);
            y = app.UITableNodalCoordinates.Data([node1 node2],3); 
            z = app.UITableNodalCoordinates.Data([node1 node2],4); 
            x(end+1) = NaN;
            y(end+1) = NaN;
            z(end+1) = NaN;
            plt = patch(ax,x,y,z,[c(i);c(i);NaN],EdgeColor='flat');
            % hold(ax,'on');
            plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
          end
      end
      label = 'Strain';
      clblimits = [min(c),max(c)];
      clb = set_colorbar(app,ax,label,clblimits);
      % Enable element number switch
      post_static_int_var_enable_switches_and_buttons(app);
    end

    % Button pushed function: StressesButtonPostStaticIntVariables
    function StressesButtonPostStaticIntVariablesPushed(app, event)
      % plot the stress on the trusses
      set_model_and_switches_post_static_internal_variables(app,event);
      %
      ax = app.UIAxesPostStaticInternalVariables;      
      hold(ax,'on');
      %
      app.TabGroupOutput.SelectedTab = app.InternalvariablesTabOutput;    
      % legend(ax,'off');      
      numele = size(app.UITableElementConnectivity.Data,1);
      %cm = colormap(app.UIAxesPostStaticInternalVariables,parula(numele));
      c = app.UITableEleIntVariablesTabOutput.Data(:,3); % stress
      value = app.DeformedSwitchPostStaticInternalVariables.Value;  
      mf = app.FactorEditFieldPostStaticInternalVariables.Value;      
      switch value
        case 'On'
          for i = 1:numele
            node1 = app.UITableElementConnectivity.Data(i,2);
            node2 = app.UITableElementConnectivity.Data(i,3);   
            x = app.UITableNodalCoordinates.Data([node1 node2],2)+...
                mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],2);
            y = app.UITableNodalCoordinates.Data([node1 node2],3)+...
                mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],3); 
            z = app.UITableNodalCoordinates.Data([node1 node2],4)+...
                mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],4); 
            x(end+1) = NaN;
            y(end+1) = NaN;
            z(end+1) = NaN;
            plt = patch(ax,x,y,z,[c(i);c(i);NaN],EdgeColor='flat');
            % hold(ax,'on');
            plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
          end
        case 'Off'
          for i = 1:numele
            node1 = app.UITableElementConnectivity.Data(i,2);
            node2 = app.UITableElementConnectivity.Data(i,3);   
            x = app.UITableNodalCoordinates.Data([node1 node2],2);
            y = app.UITableNodalCoordinates.Data([node1 node2],3); 
            z = app.UITableNodalCoordinates.Data([node1 node2],4); 
            x(end+1) = NaN;
            y(end+1) = NaN;
            z(end+1) = NaN;
            plt = patch(ax,x,y,z,[c(i);c(i);NaN],EdgeColor='flat');
            % hold(ax,'on');
            plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
          end
      end
      label = 'Stress';
      clblimits = [min(c),max(c)];
      clb = set_colorbar(app,ax,label,clblimits);
      % Enable element number switch
      post_static_int_var_enable_switches_and_buttons(app);           
    end

    % Button pushed function: TCForcesButtonPostStaticIntVariables
    function TCForcesButtonPostStaticIntVariablesPushed(app, event)
      % plot traction/compression members on the trusses
      set_model_and_switches_post_static_internal_variables(app,event);
      %
      ax = app.UIAxesPostStaticInternalVariables;      
      hold(ax,'on');
      %
      app.TabGroupOutput.SelectedTab = app.InternalvariablesTabOutput;      
      % legend(ax,'off');      
      numele = size(app.UITableElementConnectivity.Data,1);
      c = zeros(numele,1);
      c(app.UITableEleIntVariablesTabOutput.Data(:,4)<0) = -1; % traction
      c(app.UITableEleIntVariablesTabOutput.Data(:,4)>0) = 1; % compresion 
      value = app.DeformedSwitchPostStaticInternalVariables.Value;  
      mf = app.FactorEditFieldPostStaticInternalVariables.Value;      
      switch value
        case 'On'
          for i = 1:numele
            node1 = app.UITableElementConnectivity.Data(i,2);
            node2 = app.UITableElementConnectivity.Data(i,3);   
            x = app.UITableNodalCoordinates.Data([node1 node2],2)+...
                mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],2);
            y = app.UITableNodalCoordinates.Data([node1 node2],3)+...
                mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],3); 
            z = app.UITableNodalCoordinates.Data([node1 node2],4)+...
                mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],4); 
            x(end+1) = NaN;
            y(end+1) = NaN;
            z(end+1) = NaN;
            plt = patch(ax,x,y,z,[c(i);c(i);NaN],EdgeColor='flat');
            % hold(ax,'on');
            plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
          end
        case 'Off'
          for i = 1:numele
            node1 = app.UITableElementConnectivity.Data(i,2);
            node2 = app.UITableElementConnectivity.Data(i,3);   
            x = app.UITableNodalCoordinates.Data([node1 node2],2);
            y = app.UITableNodalCoordinates.Data([node1 node2],3); 
            z = app.UITableNodalCoordinates.Data([node1 node2],4); 
            x(end+1) = NaN;
            y(end+1) = NaN;
            z(end+1) = NaN;
            plt = patch(ax,x,y,z,[c(i);c(i);NaN],EdgeColor='flat');
            % hold(ax,'on');
            plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
          end
      end
      label = 'Compression/Traction';
      clblimits = [min(c),max(c)];      
      clb = set_colorbar_traction_compression(app,ax,label,clblimits);
      clb.Ticks = [-1,1];
      clb.TickLabels = {'C(-)','T(+)'};
      % Enable element number switch
      post_static_int_var_enable_switches_and_buttons(app);         
    end

    % Button down function: PostStaticIntVariablesTab
    function PostStaticIntVariablesTabButtonDown(app, event)
      % view output internal variable tab once Post/Static Internal Variable tab
      % is clicked
      app.TabGroupOutput.SelectedTab = app.InternalvariablesTabOutput;      
    end

    % Button down function: PostStaticModelTab
    function PostStaticModelTabButtonDown(app, event)
      % view output Summary tab once Post/Static Model tab is clicked
      app.TabGroupOutput.SelectedTab = app.SummaryTabOutput;          
    end

    % Button down function: PostStaticDisplacementsTab
    function PostStaticDisplacementsTabButtonDown(app, event)
      % view output Displacement tab once Post/Static Displacement is clicked
      app.TabGroupOutput.SelectedTab = app.DisplacementsTabOutput;         
    end

    % Button down function: PostStaticNodalforcesTab
    function PostStaticNodalforcesTabButtonDown(app, event)
      % view output Nodal Force tab once Post/Static Nodal Force is clicked
      app.TabGroupOutput.SelectedTab = app.NodalforcesTabOutput;           
    end

    % Button pushed function: MaxMinStrainsButtonPostStaticIntVariables
    function MaxMinStrainsButtonPostStaticIntVariablesPushed(app, event)
      % plot Max/Min strain on the trusses
      set_model_and_switches_post_static_internal_variables(app,event);
      %
      ax = app.UIAxesPostStaticInternalVariables;      
      hold(ax,'on');
      colorbar(ax,'off');       
      %
      app.TabGroupOutput.SelectedTab = app.InternalvariablesTabOutput;  

      % deformed mesh data
      value = app.DeformedSwitchPostStaticInternalVariables.Value;  
      mf = app.FactorEditFieldPostStaticInternalVariables.Value;

      % % plot nodes
      % switch value
      %   case 'On'
      %     x = app.UITableNodalCoordinates.Data(:,2)+...
      %         mf*app.UITableNodalDisplacementsTabOutput.Data(:,2);
      %     y = app.UITableNodalCoordinates.Data(:,3)+...
      %         mf*app.UITableNodalDisplacementsTabOutput.Data(:,3);      
      %     z = app.UITableNodalCoordinates.Data(:,4)+...
      %         mf*app.UITableNodalDisplacementsTabOutput.Data(:,4);
      %   case 'Off'
      %     x = app.UITableNodalCoordinates.Data(:,2);
      %     y = app.UITableNodalCoordinates.Data(:,3);      
      %     z = app.UITableNodalCoordinates.Data(:,4);            
      % end
      % plt = plot3(ax,x,y,z,'-ok','MarkerFaceColor','k','MarkerSize',app.MarkersSizeEditField.Value);
      % plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend

      % check if the model is 2D, if so put the front view visualization
      numnod = length(app.UITableNodalCoordinates.Data(:,1));
      sfz = length(find(app.UITableNodalCoordinates.Data(:,4)==0)); % determine if all z-coordinates are 0     
      if sfz==numnod % the model is 2D
        view(ax,2);        
      end

      % min/max strain
      max_strain_element = find(app.UITableEleIntVariablesTabOutput.Data(:,2)==max(app.UITableEleIntVariablesTabOutput.Data(:,2)));
      min_strain_element = find(app.UITableEleIntVariablesTabOutput.Data(:,2)==min(app.UITableEleIntVariablesTabOutput.Data(:,2)));
      max_strain = app.UITableEleIntVariablesTabOutput.Data(max_strain_element,2);
      min_strain = app.UITableEleIntVariablesTabOutput.Data(min_strain_element,2);        

      max_strain_element = min(max_strain_element); % in case there are multiple max strains, we take the element with the lowest index
      max_strain = unique(max_strain);
      min_strain_element = min(min_strain_element); % in case there are multiple min strains, we take the element with the lowest index
      min_strain = unique(min_strain);

      if max_strain_element==min_strain_element
        app.TabGroupOutput.SelectedTab = app.MessagesTabOutput;  
        app.MessagesTextArea.Value{end+1} =...
        'All elements have the same strain... nothing to do';       
      else
        % plot elements
        pltlegend = cell(2,1);
        numele = size(app.UITableElementConnectivity.Data,1);
        k = 1;
        for i = 1:numele
          node1 = app.UITableElementConnectivity.Data(i,2);
          node2 = app.UITableElementConnectivity.Data(i,3);   
          switch value
            case 'On'
              x = app.UITableNodalCoordinates.Data([node1 node2],2)+...
                  mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],2);
              y = app.UITableNodalCoordinates.Data([node1 node2],3)+...
                  mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],3);      
              z = app.UITableNodalCoordinates.Data([node1 node2],4)+...
                  mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],4);
            case 'Off'
              x = app.UITableNodalCoordinates.Data([node1 node2],2);
              y = app.UITableNodalCoordinates.Data([node1 node2],3);      
              z = app.UITableNodalCoordinates.Data([node1 node2],4);            
          end
          if i == max_strain_element
            plt = plot3(ax,x,y,z,'-r');
            pltlegend{k} = sprintf('Max. strain %.10f',max_strain); 
            k = k+1;
          elseif i == min_strain_element
            plt = plot3(ax,x,y,z,'-b'); 
            pltlegend{k} = sprintf('Min. strain %.10f',min_strain);    
            k = k+1;
          else
            plt = plot3(ax,x,y,z,'-k');         
            plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend          
          end
        end
        fsize = app.LegendsEditField.Value;
        legend(ax,pltlegend,'Location','eastoutside','FontSize',fsize);        
      end

      % Enable element number switch
      post_static_int_var_enable_switches_and_buttons(app); 
      % set background color, coordinate system, etc.
      % this function must be at the end; otherwise, the coordinate system
      % won't be plotted
      model_space_configuration(app,ax);       
    end

    % Button pushed function: 
    % MaxMinStressesButtonPostStaticIntVariables
    function MaxMinStressesButtonPostStaticIntVariablesPushed(app, event)
      % plot Max/Min stress on the trusses
      set_model_and_switches_post_static_internal_variables(app,event);
      %
      ax = app.UIAxesPostStaticInternalVariables;      
      hold(ax,'on');
      colorbar(ax,'off');       
      %
      app.TabGroupOutput.SelectedTab = app.InternalvariablesTabOutput;  
      
      % deformed mesh data
      value = app.DeformedSwitchPostStaticInternalVariables.Value;  
      mf = app.FactorEditFieldPostStaticInternalVariables.Value;

      % % plot nodes
      % switch value
      %   case 'On'
      %     x = app.UITableNodalCoordinates.Data(:,2)+...
      %         mf*app.UITableNodalDisplacementsTabOutput.Data(:,2);
      %     y = app.UITableNodalCoordinates.Data(:,3)+...
      %         mf*app.UITableNodalDisplacementsTabOutput.Data(:,3);      
      %     z = app.UITableNodalCoordinates.Data(:,4)+...
      %         mf*app.UITableNodalDisplacementsTabOutput.Data(:,4);
      %   case 'Off'
      %     x = app.UITableNodalCoordinates.Data(:,2);
      %     y = app.UITableNodalCoordinates.Data(:,3);      
      %     z = app.UITableNodalCoordinates.Data(:,4);            
      % end
      % plt = plot3(ax,x,y,z,'-ok','MarkerFaceColor','k','MarkerSize',app.MarkersSizeEditField.Value);
      % plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend

      % check if the model is 2D, if so put the front view visualization
      numnod = length(app.UITableNodalCoordinates.Data(:,1));
      sfz = length(find(app.UITableNodalCoordinates.Data(:,4)==0)); % determine if all z-coordinates are 0     
      if sfz==numnod % the model is 2D
        view(ax,2);        
      end

      % min/max stress
      max_stress_element = find(app.UITableEleIntVariablesTabOutput.Data(:,3)==max(app.UITableEleIntVariablesTabOutput.Data(:,3)));
      min_stress_element = find(app.UITableEleIntVariablesTabOutput.Data(:,3)==min(app.UITableEleIntVariablesTabOutput.Data(:,3)));
      max_stress = app.UITableEleIntVariablesTabOutput.Data(max_stress_element,3);
      min_stress = app.UITableEleIntVariablesTabOutput.Data(min_stress_element,3);        

      max_stress_element = min(max_stress_element); % in case there are multiple max stresses, we take the element with the lowest index
      max_stress = unique(max_stress);
      min_stress_element = min(min_stress_element); % in case there are multiple min stresses, we take the element with the lowest index
      min_stress = unique(min_stress);

      if max_stress_element==min_stress_element
        app.TabGroupOutput.SelectedTab = app.MessagesTabOutput;  
        app.MessagesTextArea.Value{end+1} =...
        'All elements have the same stress... nothing to do';       
      else
        % plot elements
        pltlegend = cell(2,1);
        numele = size(app.UITableElementConnectivity.Data,1);
        k = 1;
        for i = 1:numele
          node1 = app.UITableElementConnectivity.Data(i,2);
          node2 = app.UITableElementConnectivity.Data(i,3);   
          switch value
            case 'On'
              x = app.UITableNodalCoordinates.Data([node1 node2],2)+...
                  mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],2);
              y = app.UITableNodalCoordinates.Data([node1 node2],3)+...
                  mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],3);      
              z = app.UITableNodalCoordinates.Data([node1 node2],4)+...
                  mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],4);
            case 'Off'
              x = app.UITableNodalCoordinates.Data([node1 node2],2);
              y = app.UITableNodalCoordinates.Data([node1 node2],3);      
              z = app.UITableNodalCoordinates.Data([node1 node2],4);            
          end
          if i == max_stress_element
            plt = plot3(ax,x,y,z,'-r');     
            pltlegend{k} = sprintf('Max. stress %f',max_stress); 
            k = k+1;
          elseif i == min_stress_element
            plt = plot3(ax,x,y,z,'-b'); 
            pltlegend{k} = sprintf('Min. stress %f',min_stress);    
            k = k+1;
          else
            plt = plot3(ax,x,y,z,'-k');         
            plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend          
          end
        end
        fsize = app.LegendsEditField.Value;
        legend(ax,pltlegend,'Location','eastoutside','FontSize',fsize);
      end
      % Enable element number switch
      post_static_int_var_enable_switches_and_buttons(app); 
      % set background color, coordinate system, etc.
      % this function must be at the end; otherwise, the coordinate system
      % won't be plotted
      model_space_configuration(app,ax);             
    end

    % Button pushed function: MaxMinForcesButtonPostStaticIntVariables
    function MaxMinForcesButtonPostStaticIntVariablesPushed(app, event)
      % plot Max/Min forces on the trusses
      set_model_and_switches_post_static_internal_variables(app,event);
      %
      ax = app.UIAxesPostStaticInternalVariables;      
      hold(ax,'on');
      colorbar(ax,'off');       
      %
      app.TabGroupOutput.SelectedTab = app.InternalvariablesTabOutput;  
      
      % deformed mesh data
      value = app.DeformedSwitchPostStaticInternalVariables.Value;  
      mf = app.FactorEditFieldPostStaticInternalVariables.Value;

      % % plot nodes
      % switch value
      %   case 'On'
      %     x = app.UITableNodalCoordinates.Data(:,2)+...
      %         mf*app.UITableNodalDisplacementsTabOutput.Data(:,2);
      %     y = app.UITableNodalCoordinates.Data(:,3)+...
      %         mf*app.UITableNodalDisplacementsTabOutput.Data(:,3);      
      %     z = app.UITableNodalCoordinates.Data(:,4)+...
      %         mf*app.UITableNodalDisplacementsTabOutput.Data(:,4);
      %   case 'Off'
      %     x = app.UITableNodalCoordinates.Data(:,2);
      %     y = app.UITableNodalCoordinates.Data(:,3);      
      %     z = app.UITableNodalCoordinates.Data(:,4);            
      % end
      % plt = plot3(ax,x,y,z,'-ok','MarkerFaceColor','k','MarkerSize',app.MarkersSizeEditField.Value);
      % plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend

      % check if the model is 2D, if so put the front view visualization
      numnod = length(app.UITableNodalCoordinates.Data(:,1));
      sfz = length(find(app.UITableNodalCoordinates.Data(:,4)==0)); % determine if all z-coordinates are 0     
      if sfz==numnod % the model is 2D
        view(ax,2);        
      end

      % min/max force
      max_force_element = find(app.UITableEleIntVariablesTabOutput.Data(:,4)==max(app.UITableEleIntVariablesTabOutput.Data(:,4)));
      min_force_element = find(app.UITableEleIntVariablesTabOutput.Data(:,4)==min(app.UITableEleIntVariablesTabOutput.Data(:,4)));
      max_force = app.UITableEleIntVariablesTabOutput.Data(max_force_element,4);
      min_force = app.UITableEleIntVariablesTabOutput.Data(min_force_element,4);        

      max_force_element = min(max_force_element); % in case there are multiple max stresses, we take the element with the lowest index
      max_force = unique(max_force);
      min_force_element = min(min_force_element); % in case there are multiple min stresses, we take the element with the lowest index
      min_force = unique(min_force);

      if max_force_element==min_force_element
        app.TabGroupOutput.SelectedTab = app.MessagesTabOutput;  
        app.MessagesTextArea.Value{end+1} =...
        'All elements have the same force... nothing to do';       
      else
        % plot elements
        pltlegend = cell(2,1);
        numele = size(app.UITableElementConnectivity.Data,1);
        k = 1;
        for i = 1:numele
          node1 = app.UITableElementConnectivity.Data(i,2);
          node2 = app.UITableElementConnectivity.Data(i,3);   
          switch value
            case 'On'
              x = app.UITableNodalCoordinates.Data([node1 node2],2)+...
                  mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],2);
              y = app.UITableNodalCoordinates.Data([node1 node2],3)+...
                  mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],3);      
              z = app.UITableNodalCoordinates.Data([node1 node2],4)+...
                  mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],4);
            case 'Off'
              x = app.UITableNodalCoordinates.Data([node1 node2],2);
              y = app.UITableNodalCoordinates.Data([node1 node2],3);      
              z = app.UITableNodalCoordinates.Data([node1 node2],4);            
          end
          if i == max_force_element
            plt = plot3(ax,x,y,z,'-r');     
            pltlegend{k} = sprintf('Max. force %f',max_force); 
            k = k+1;
          elseif i == min_force_element
            plt = plot3(ax,x,y,z,'-b'); 
            pltlegend{k} = sprintf('Min. force %f',min_force);    
            k = k+1;
          else
            plt = plot3(ax,x,y,z,'-k');         
            plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend          
          end
        end
        fsize = app.LegendsEditField.Value;
        legend(ax,pltlegend,'Location','eastoutside','FontSize',fsize);
      end
      % Enable element number switch
      post_static_int_var_enable_switches_and_buttons(app); 
      % set background color, coordinate system, etc.
      % this function must be at the end; otherwise, the coordinate system
      % won't be plotted
      model_space_configuration(app,ax);        
    end

    % Button pushed function: UxButtonPostStaticDisplacements
    function UxButtonPostStaticDisplacementsPushed(app, event)
      % **** plot Ux displacement on the trusses
      % set or reset the model on the screen
      set_model_and_switches_post_static_displacements(app,event);
      %
      ax = app.UIAxesPostStaticDisplacements;
      hold(ax,'on');
      legend(ax,'off');  
      %
      app.TabGroupOutput.SelectedTab = app.DisplacementsTabOutput; 
      %
      numele = size(app.UITableElementConnectivity.Data,1);
      c = app.UITableNodalDisplacementsTabOutput.Data(:,2); % Ux
      %c(end+1) = NaN;
      value = app.DeformedSwitchPostStaticDisplacements.Value;
      mf = app.FactorEditFieldPostStaticDisplacements.Value;
      switch value
        case 'On'
          for i = 1:numele
            node1 = app.UITableElementConnectivity.Data(i,2);
            node2 = app.UITableElementConnectivity.Data(i,3);   
            x = app.UITableNodalCoordinates.Data([node1 node2],2)+...
                mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],2);
            y = app.UITableNodalCoordinates.Data([node1 node2],3); 
            z = app.UITableNodalCoordinates.Data([node1 node2],4); 
            x(end+1) = NaN;
            y(end+1) = NaN;
            z(end+1) = NaN;
            plt = patch(ax,x,y,z,[c(node1);c(node2);NaN],'EdgeColor','interp',...
                        'Marker','o','MarkerSize',app.MarkersSizeEditField.Value,'MarkerFaceColor','flat');
            % hold(ax,'on');
            plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
          end
        case 'Off'
          for i = 1:numele
            node1 = app.UITableElementConnectivity.Data(i,2);
            node2 = app.UITableElementConnectivity.Data(i,3);   
            x = app.UITableNodalCoordinates.Data([node1 node2],2);
            y = app.UITableNodalCoordinates.Data([node1 node2],3); 
            z = app.UITableNodalCoordinates.Data([node1 node2],4); 
            x(end+1) = NaN;
            y(end+1) = NaN;
            z(end+1) = NaN;
            plt = patch(ax,x,y,z,[c(node1);c(node2);NaN],'EdgeColor','interp',...
                        'Marker','o','MarkerSize',app.MarkersSizeEditField.Value,'MarkerFaceColor','flat');
            % hold(ax,'on');
            plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
          end
      end
      label = 'Ux';
      clblimits = [min(c),max(c)];      
      clb = set_colorbar(app,ax,label,clblimits);
      % Enable node number switch
      post_static_displacements_enable_switches_and_buttons(app);         
    end

    % Button pushed function: UyButtonPostStaticDisplacements
    function UyButtonPostStaticDisplacementsPushed(app, event)
      % **** plot Uy displacement on the trusses
      % set or reset the model on the screen
      set_model_and_switches_post_static_displacements(app,event);
      %
      ax = app.UIAxesPostStaticDisplacements;
      hold(ax,'on');
      legend(ax,'off');
      %
      app.TabGroupOutput.SelectedTab = app.DisplacementsTabOutput;       
      %
      numele = size(app.UITableElementConnectivity.Data,1);
      c = app.UITableNodalDisplacementsTabOutput.Data(:,3); % Uy
      %c(end+1) = NaN;
      value = app.DeformedSwitchPostStaticDisplacements.Value;
      mf = app.FactorEditFieldPostStaticDisplacements.Value;      
      switch value
        case 'On'
          for i = 1:numele
            node1 = app.UITableElementConnectivity.Data(i,2);
            node2 = app.UITableElementConnectivity.Data(i,3);   
            x = app.UITableNodalCoordinates.Data([node1 node2],2);
            y = app.UITableNodalCoordinates.Data([node1 node2],3)+...
                mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],3); 
            z = app.UITableNodalCoordinates.Data([node1 node2],4); 
            x(end+1) = NaN;
            y(end+1) = NaN;
            z(end+1) = NaN;
            plt = patch(ax,x,y,z,[c(node1);c(node2);NaN],'EdgeColor','interp',...
                        'Marker','o','MarkerSize',app.MarkersSizeEditField.Value,'MarkerFaceColor','flat');
            % hold(ax,'on');
            plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
          end
        case 'Off'
          for i = 1:numele
            node1 = app.UITableElementConnectivity.Data(i,2);
            node2 = app.UITableElementConnectivity.Data(i,3);   
            x = app.UITableNodalCoordinates.Data([node1 node2],2);
            y = app.UITableNodalCoordinates.Data([node1 node2],3); 
            z = app.UITableNodalCoordinates.Data([node1 node2],4); 
            x(end+1) = NaN;
            y(end+1) = NaN;
            z(end+1) = NaN;
            plt = patch(ax,x,y,z,[c(node1);c(node2);NaN],'EdgeColor','interp',...
                        'Marker','o','MarkerSize',app.MarkersSizeEditField.Value,'MarkerFaceColor','flat');
            % hold(ax,'on');
            plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
          end
      end
      label = 'Uy';
      clblimits = [min(c),max(c)];      
      clb = set_colorbar(app,ax,label,clblimits);
      % Enable node number switch
      post_static_displacements_enable_switches_and_buttons(app);     
    end

    % Button pushed function: UzButtonPostStaticDisplacements
    function UzButtonPostStaticDisplacementsPushed(app, event)
      % **** plot Uz displacement on the trusses
      % set or reset the model on the screen
      set_model_and_switches_post_static_displacements(app,event);    
      %
      ax = app.UIAxesPostStaticDisplacements;
      hold(ax,'on');
      legend(ax,'off');    
      %
      app.TabGroupOutput.SelectedTab = app.DisplacementsTabOutput; 
      %
      numele = size(app.UITableElementConnectivity.Data,1);
      c = app.UITableNodalDisplacementsTabOutput.Data(:,4); % Uz
      %c(end+1) = NaN;
      value = app.DeformedSwitchPostStaticDisplacements.Value;  
      mf = app.FactorEditFieldPostStaticDisplacements.Value;      
      switch value
        case 'On'
          for i = 1:numele
            node1 = app.UITableElementConnectivity.Data(i,2);
            node2 = app.UITableElementConnectivity.Data(i,3);   
            x = app.UITableNodalCoordinates.Data([node1 node2],2);
            y = app.UITableNodalCoordinates.Data([node1 node2],3); 
            z = app.UITableNodalCoordinates.Data([node1 node2],4)+...
                mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],4); 
            x(end+1) = NaN;
            y(end+1) = NaN;
            z(end+1) = NaN;
            plt = patch(ax,x,y,z,[c(node1);c(node2);NaN],'EdgeColor','interp',...
                        'Marker','o','MarkerSize',app.MarkersSizeEditField.Value,'MarkerFaceColor','flat');
            % hold(ax,'on');
            plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
          end
        case 'Off'
          for i = 1:numele
            node1 = app.UITableElementConnectivity.Data(i,2);
            node2 = app.UITableElementConnectivity.Data(i,3);   
            x = app.UITableNodalCoordinates.Data([node1 node2],2);
            y = app.UITableNodalCoordinates.Data([node1 node2],3); 
            z = app.UITableNodalCoordinates.Data([node1 node2],4); 
            x(end+1) = NaN;
            y(end+1) = NaN;
            z(end+1) = NaN;
            plt = patch(ax,x,y,z,[c(node1);c(node2);NaN],'EdgeColor','interp',...
                        'Marker','o','MarkerSize',app.MarkersSizeEditField.Value,'MarkerFaceColor','flat');
            % hold(ax,'on');
            plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
          end
      end
      label = 'Uz';
      clblimits = [min(c),max(c)];      
      clb = set_colorbar(app,ax,label,clblimits);
      % Enable node number switch
      post_static_displacements_enable_switches_and_buttons(app);        
    end

    % Button pushed function: UButtonPostStaticDisplacements
    function UButtonPostStaticDisplacementsPushed(app, event)
      % **** plot ||U|| displacement on the trusses
      % set or reset the model on the screen
      set_model_and_switches_post_static_displacements(app,event);      
      %
      ax = app.UIAxesPostStaticDisplacements;
      hold(ax,'on');
      legend(ax,'off');   
      %
      app.TabGroupOutput.SelectedTab = app.DisplacementsTabOutput; 
      %
      numele = size(app.UITableElementConnectivity.Data,1);
      c = app.UITableNodalDisplacementsTabOutput.Data(:,5); % ||U||
      %c(end+1) = NaN;
      value = app.DeformedSwitchPostStaticDisplacements.Value;  
      mf = app.FactorEditFieldPostStaticDisplacements.Value;      
      switch value
        case 'On'
          for i = 1:numele
            node1 = app.UITableElementConnectivity.Data(i,2);
            node2 = app.UITableElementConnectivity.Data(i,3);   
            x = app.UITableNodalCoordinates.Data([node1 node2],2)+...
                mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],2);
            y = app.UITableNodalCoordinates.Data([node1 node2],3)+...
                mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],3); 
            z = app.UITableNodalCoordinates.Data([node1 node2],4)+...
                mf*app.UITableNodalDisplacementsTabOutput.Data([node1 node2],4); 
            x(end+1) = NaN;
            y(end+1) = NaN;
            z(end+1) = NaN;
            plt = patch(ax,x,y,z,[c(node1);c(node2);NaN],'EdgeColor','interp',...
                        'Marker','o','MarkerSize',app.MarkersSizeEditField.Value,'MarkerFaceColor','flat');
            % hold(ax,'on');
            plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
          end
        case 'Off'
          for i = 1:numele
            node1 = app.UITableElementConnectivity.Data(i,2);
            node2 = app.UITableElementConnectivity.Data(i,3);   
            x = app.UITableNodalCoordinates.Data([node1 node2],2);
            y = app.UITableNodalCoordinates.Data([node1 node2],3); 
            z = app.UITableNodalCoordinates.Data([node1 node2],4); 
            x(end+1) = NaN;
            y(end+1) = NaN;
            z(end+1) = NaN;
            plt = patch(ax,x,y,z,[c(node1);c(node2);NaN],'EdgeColor','interp',...
                        'Marker','o','MarkerSize',app.MarkersSizeEditField.Value,'MarkerFaceColor','flat');
            % hold(ax,'on');
            plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
          end
      end
      label = '||U||';
      clblimits = [min(c),max(c)];      
      clb = set_colorbar(app,ax,label,clblimits);
      % Enable node number switch
      post_static_displacements_enable_switches_and_buttons(app);        
    end

    % Value changed function: NodenumbersSwitchPostStaticDisplacements
    function NodenumbersSwitchPostStaticDisplacementsValueChanged(app, event)
      value = app.NodenumbersSwitchPostStaticDisplacements.Value;
      % plot node numbers
      switch value
        case 'On'
          if isempty(app.hTextNodeNumbersPostStaticDisplacements)
            app.hTextNodeNumbersPostStaticDisplacements =...
                 plot_node_numbers(app,app.UIAxesPostStaticDisplacements);
          else
            numnod = length(app.hTextNodeNumbersPostStaticDisplacements);
            for i = 1:numnod
              app.hTextNodeNumbersPostStaticDisplacements{i}.Visible = "on";
              app.hTextNodeNumbersPostStaticDisplacements{i}.FontSize = app.NodeNumbersFontSizeEditField.Value;              
            end                
          end
        case 'Off'
          numnod = length(app.hTextNodeNumbersPostStaticDisplacements);
          for i = 1:numnod
            app.hTextNodeNumbersPostStaticDisplacements{i}.Visible = "off";
          end    
      end            
    end

    % Value changed function: DeformedSwitchPostStaticDisplacements
    function DeformedSwitchPostStaticDisplacementsValueChanged(app, event)
      value = app.DeformedSwitchPostStaticDisplacements.Value;
      switch value
        case 'On'
          app.FactorEditFieldPostStaticDisplacements.Enable = "on";
          app.OriginalmeshCheckBoxPostStaticDisplacements.Enable = "on";
          %plt = plot_model(app,app.UIAxesPostStaticDisplacements);
        case 'Off'
          app.FactorEditFieldPostStaticDisplacements.Enable = "off";     
          app.OriginalmeshCheckBoxPostStaticDisplacements.Enable = "off";          
      end
    end

    % Value changed function: FactorEditFieldPostStaticDisplacements
    function FactorEditFieldPostStaticDisplacementsValueChanged(app, event)
      value = app.FactorEditFieldPostStaticDisplacements.Value;
      %plt = plot_model(app,app.UIAxesPostStaticDisplacements);
    end

    % Value changed function: 
    % OriginalmeshCheckBoxPostStaticDisplacements
    function OriginalmeshCheckBoxPostStaticDisplacementsValueChanged(app, event)
      value = app.OriginalmeshCheckBoxPostStaticDisplacements.Value;
      %plt = plot_model(app,app.UIAxesPostStaticDisplacements);      
    end

    % Button pushed function: ReactionsButtonPostStaticNodalforces
    function ReactionsButtonPostStaticNodalforcesPushed(app, event)
      set_model_and_switches_post_static_nodal_forces(app,event);  
      ax = app.UIAxesPostStaticNodalForces;
      hold(ax,'on');
      scalelength = 0.1;
      arrowheadsize = 1.0;
      arrowlinewidth = 1.0;
      xmax = max(app.UITableNodalCoordinates.Data(:,2));
      xmin = min(app.UITableNodalCoordinates.Data(:,2));      
      ymax = max(app.UITableNodalCoordinates.Data(:,3));
      ymin = min(app.UITableNodalCoordinates.Data(:,3));     
      zmax = max(app.UITableNodalCoordinates.Data(:,4));
      zmin = min(app.UITableNodalCoordinates.Data(:,4));  
      dx = abs(xmax-xmin);
      dy = abs(ymax-ymin);
      dz = abs(zmax-zmin);
      dxyz = mean([dx,dy,dz]);
      dx = [scalelength*dxyz 0 0];      
      dy = [0 scalelength*dxyz 0];
      dz = [0 0 scalelength*dxyz];     

      fixed_x = find(app.UITableNodalForcesTabOutput.Data(:,5));
      fixed_y = find(app.UITableNodalForcesTabOutput.Data(:,6));
      fixed_z = find(app.UITableNodalForcesTabOutput.Data(:,7));

      fsize = app.ReactionsFontSizeEditField.Value;
      % x-reactions
      if ~isempty(fixed_x)
        for i = 1:length(fixed_x)
          node = fixed_x(i);
          Rx = app.UITableNodalForcesTabOutput.Data(node,5);
          s = sign(Rx);
          xyz = app.UITableNodalCoordinates.Data(node,2:4);
          plt = quiver3(ax,xyz(1)+0.4*s*dx(1),xyz(2),xyz(3),s*dx(1),dx(2),dx(3),'off',...
                        'LineWidth',arrowlinewidth,'MaxHeadSize',arrowheadsize,'Color','m');  
          plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
          % xt = xyz+s*dx*2.0;
          xt = xyz+s*dx*3.0+dy*0.35;
          text(ax,xt(1),xt(2),xt(3),num2str(abs(Rx)),'FontSize',fsize,'FontWeight','bold','Color','m');           
        end
      end
      % y-reactions
      if ~isempty(fixed_y)
        for i = 1:length(fixed_y)
          node = fixed_y(i);
          Ry = app.UITableNodalForcesTabOutput.Data(node,6);
          s = sign(Ry);
          xyz = app.UITableNodalCoordinates.Data(node,2:4);
          plt = quiver3(ax,xyz(1),xyz(2)+0.4*s*dy(2),xyz(3),dy(1),s*dy(2),dy(3),'off',...
                        'LineWidth',arrowlinewidth,'MaxHeadSize',arrowheadsize,'Color','m');  
          plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
          %yt = xyz+s*dy*2.0;
          yt = xyz+s*dy*1.8;
          text(ax,yt(1),yt(2),yt(3),num2str(abs(Ry)),'FontSize',fsize,'FontWeight','bold','Color','m');
        end
      end    
      % z-reactions
      if ~isempty(fixed_z)
        for i = 1:length(fixed_z)
          node = fixed_z(i);
          Rz = app.UITableNodalForcesTabOutput.Data(node,7);
          s = sign(Rz);
          xyz = app.UITableNodalCoordinates.Data(node,2:4);
          plt = quiver3(ax,xyz(1),xyz(2),xyz(3)+0.4*s*dz(3),dz(1),dz(2),s*dz(3),'off',...
                        'LineWidth',arrowlinewidth,'MaxHeadSize',arrowheadsize,'Color','m');  
          plt.Annotation.LegendInformation.IconDisplayStyle = 'off'; % skip the previous data from the legend
          zt = xyz+s*dz*2.0;
          text(ax,zt(1),zt(2),zt(3),num2str(abs(Rz)),'FontSize',fsize,'FontWeight','bold','Color','m');          
        end
      end  
      % Enable node number switch
      post_static_nodal_forces_enable_switches_and_buttons(app);
    end

    % Value changed function: DeformedSwitchPostStaticInternalVariables
    function DeformedSwitchPostStaticInternalVariablesValueChanged(app, event)
      value = app.DeformedSwitchPostStaticInternalVariables.Value;
      switch value
        case 'On'
          app.FactorEditFieldPostStaticInternalVariables.Enable = "on";
          app.OriginalmeshCheckBoxPostStaticInternalVariables.Enable = "on";
          %plt = plot_model(app,app.UIAxesPostStaticInternalVariables);
        case 'Off'
          app.FactorEditFieldPostStaticInternalVariables.Enable = "off";     
          app.OriginalmeshCheckBoxPostStaticInternalVariables.Enable = "off";          
      end      
    end

    % Value changed function: 
    % OriginalmeshCheckBoxPostStaticInternalVariables
    function OriginalmeshCheckBoxPostStaticInternalVariablesValueChanged(app, event)
      value = app.OriginalmeshCheckBoxPostStaticInternalVariables.Value;
    end

    % Value changed function: 
    % FactorEditFieldPostStaticInternalVariables
    function FactorEditFieldPostStaticInternalVariablesValueChanged(app, event)
      value = app.FactorEditFieldPostStaticInternalVariables.Value;
      
    end

    % Value changed function: NodenumbersSwitchPostStaticNodalForces
    function NodenumbersSwitchPostStaticNodalForcesValueChanged(app, event)
      value = app.NodenumbersSwitchPostStaticNodalForces.Value;
      % plot node numbers
      switch value
        case 'On'
          if isempty(app.hTextNodeNumbersPostStaticNodalForces)
            app.hTextNodeNumbersPostStaticNodalForces =...
                 plot_node_numbers(app,app.UIAxesPostStaticNodalForces);
          else
            numnod = length(app.hTextNodeNumbersPostStaticNodalForces);
            for i = 1:numnod
              app.hTextNodeNumbersPostStaticNodalForces{i}.Visible = "on";
              app.hTextNodeNumbersPostStaticNodalForces{i}.FontSize = app.NodeNumbersFontSizeEditField.Value;              
            end                
          end
        case 'Off'
          numnod = length(app.hTextNodeNumbersPostStaticNodalForces);
          for i = 1:numnod
            app.hTextNodeNumbersPostStaticNodalForces{i}.Visible = "off";
          end    
      end        
    end
  end

  % Component initialization
  methods (Access = private)

    % Create UIFigure and components
    function createComponents(app)

      % Get the file path for locating images
      pathToMLAPP = fileparts(mfilename('fullpath'));

      % Create FeaLabTrussUIFigure and hide until all components are created
      app.FeaLabTrussUIFigure = uifigure('Visible', 'off');
      app.FeaLabTrussUIFigure.Color = [0.9412 0.9412 0.9412];
      app.FeaLabTrussUIFigure.Position = [100 100 1280 720];
      app.FeaLabTrussUIFigure.Name = 'FEALAB/Truss';
      app.FeaLabTrussUIFigure.Icon = fullfile(pathToMLAPP, 'fealab_truss_icon.png');
      app.FeaLabTrussUIFigure.WindowStyle = 'modal';
      app.FeaLabTrussUIFigure.WindowState = 'maximized';

      % Create GridLayout
      app.GridLayout = uigridlayout(app.FeaLabTrussUIFigure);
      app.GridLayout.ColumnWidth = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
      app.GridLayout.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
      app.GridLayout.ColumnSpacing = 5;
      app.GridLayout.RowSpacing = 0;
      app.GridLayout.Padding = [5 5 5 5];
      app.GridLayout.BackgroundColor = [0.4667 0.4784 0.5882];

      % Create TabGroupMain
      app.TabGroupMain = uitabgroup(app.GridLayout);
      app.TabGroupMain.Layout.Row = [1 22];
      app.TabGroupMain.Layout.Column = [1 48];

      % Create PreTab
      app.PreTab = uitab(app.TabGroupMain);
      app.PreTab.Title = 'Pre';
      app.PreTab.BackgroundColor = [0.4667 0.4784 0.5882];

      % Create GridLayout2
      app.GridLayout2 = uigridlayout(app.PreTab);
      app.GridLayout2.ColumnWidth = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
      app.GridLayout2.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
      app.GridLayout2.ColumnSpacing = 0;
      app.GridLayout2.RowSpacing = 0;
      app.GridLayout2.Padding = [0 0 0 0];
      app.GridLayout2.BackgroundColor = [0.4667 0.4784 0.5882];

      % Create PrePreTab
      app.PrePreTab = uitabgroup(app.GridLayout2);
      app.PrePreTab.TabLocation = 'left';
      app.PrePreTab.Layout.Row = [1 27];
      app.PrePreTab.Layout.Column = [1 43];

      % Create ModelDefinition
      app.ModelDefinition = uitab(app.PrePreTab);
      app.ModelDefinition.Title = 'Model Definition';

      % Create GridLayout5
      app.GridLayout5 = uigridlayout(app.ModelDefinition);
      app.GridLayout5.ColumnWidth = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
      app.GridLayout5.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
      app.GridLayout5.ColumnSpacing = 5;
      app.GridLayout5.RowSpacing = 5;

      % Create EnternodecoordinatesLabel
      app.EnternodecoordinatesLabel = uilabel(app.GridLayout5);
      app.EnternodecoordinatesLabel.FontWeight = 'bold';
      app.EnternodecoordinatesLabel.Layout.Row = 1;
      app.EnternodecoordinatesLabel.Layout.Column = [1 5];
      app.EnternodecoordinatesLabel.Text = 'Node coordinates';

      % Create DCheckBox2D
      app.DCheckBox2D = uicheckbox(app.GridLayout5);
      app.DCheckBox2D.ValueChangedFcn = createCallbackFcn(app, @DCheckBox2DValueChanged, true);
      app.DCheckBox2D.Text = '2D';
      app.DCheckBox2D.Layout.Row = 2;
      app.DCheckBox2D.Layout.Column = [7 8];

      % Create NumberofnodesEditFieldLabel
      app.NumberofnodesEditFieldLabel = uilabel(app.GridLayout5);
      app.NumberofnodesEditFieldLabel.Layout.Row = 2;
      app.NumberofnodesEditFieldLabel.Layout.Column = [1 3];
      app.NumberofnodesEditFieldLabel.Text = 'Number of nodes';

      % Create NumberofnodesEditField
      app.NumberofnodesEditField = uieditfield(app.GridLayout5, 'numeric');
      app.NumberofnodesEditField.ValueDisplayFormat = '%.0f';
      app.NumberofnodesEditField.ValueChangedFcn = createCallbackFcn(app, @NumberofnodesEditFieldValueChanged, true);
      app.NumberofnodesEditField.Layout.Row = 2;
      app.NumberofnodesEditField.Layout.Column = [5 6];
      app.NumberofnodesEditField.Value = 5;

      % Create NumberofelementsEditFieldLabel
      app.NumberofelementsEditFieldLabel = uilabel(app.GridLayout5);
      app.NumberofelementsEditFieldLabel.Layout.Row = 2;
      app.NumberofelementsEditFieldLabel.Layout.Column = [10 13];
      app.NumberofelementsEditFieldLabel.Text = 'Number of elements';

      % Create NumberofelementsEditField
      app.NumberofelementsEditField = uieditfield(app.GridLayout5, 'numeric');
      app.NumberofelementsEditField.ValueDisplayFormat = '%.0f';
      app.NumberofelementsEditField.ValueChangedFcn = createCallbackFcn(app, @NumberofelementsEditFieldValueChanged, true);
      app.NumberofelementsEditField.Layout.Row = 2;
      app.NumberofelementsEditField.Layout.Column = [16 17];
      app.NumberofelementsEditField.Value = 5;

      % Create EnterelementconnectivityLabel
      app.EnterelementconnectivityLabel = uilabel(app.GridLayout5);
      app.EnterelementconnectivityLabel.FontWeight = 'bold';
      app.EnterelementconnectivityLabel.Layout.Row = 1;
      app.EnterelementconnectivityLabel.Layout.Column = [10 13];
      app.EnterelementconnectivityLabel.Text = 'Element connectivity';

      % Create UITableElementConnectivity
      app.UITableElementConnectivity = uitable(app.GridLayout5);
      app.UITableElementConnectivity.BackgroundColor = [1 1 1];
      app.UITableElementConnectivity.ColumnName = {'Element'; 'Node 1'; 'Node 2'};
      app.UITableElementConnectivity.RowName = {};
      app.UITableElementConnectivity.SelectionType = 'row';
      app.UITableElementConnectivity.ColumnEditable = [false true true];
      app.UITableElementConnectivity.CellEditCallback = createCallbackFcn(app, @UITableElementConnectivityCellEdit, true);
      app.UITableElementConnectivity.Multiselect = 'off';
      app.UITableElementConnectivity.Layout.Row = [3 9];
      app.UITableElementConnectivity.Layout.Column = [10 17];

      % Create AreaEditFieldLabel
      app.AreaEditFieldLabel = uilabel(app.GridLayout5);
      app.AreaEditFieldLabel.Layout.Row = 2;
      app.AreaEditFieldLabel.Layout.Column = 19;
      app.AreaEditFieldLabel.Text = 'Area';

      % Create AreaEditField
      app.AreaEditField = uieditfield(app.GridLayout5, 'numeric');
      app.AreaEditField.Layout.Row = 2;
      app.AreaEditField.Layout.Column = [20 21];

      % Create EnterelementpropertiesLabel
      app.EnterelementpropertiesLabel = uilabel(app.GridLayout5);
      app.EnterelementpropertiesLabel.FontWeight = 'bold';
      app.EnterelementpropertiesLabel.Layout.Row = 1;
      app.EnterelementpropertiesLabel.Layout.Column = [19 22];
      app.EnterelementpropertiesLabel.Text = 'Element properties';

      % Create UITableElementProperties
      app.UITableElementProperties = uitable(app.GridLayout5);
      app.UITableElementProperties.BackgroundColor = [1 1 1];
      app.UITableElementProperties.ColumnName = {'Element'; 'Area'; 'Young''s Modulus'};
      app.UITableElementProperties.RowName = {};
      app.UITableElementProperties.ColumnEditable = [false true true];
      app.UITableElementProperties.CellEditCallback = createCallbackFcn(app, @UITableElementPropertiesCellEdit, true);
      app.UITableElementProperties.Layout.Row = [3 9];
      app.UITableElementProperties.Layout.Column = [19 27];

      % Create YMEditFieldLabel_2
      app.YMEditFieldLabel_2 = uilabel(app.GridLayout5);
      app.YMEditFieldLabel_2.HorizontalAlignment = 'center';
      app.YMEditFieldLabel_2.Layout.Row = 2;
      app.YMEditFieldLabel_2.Layout.Column = 24;
      app.YMEditFieldLabel_2.Text = 'Y.M.';

      % Create YMEditField
      app.YMEditField = uieditfield(app.GridLayout5, 'numeric');
      app.YMEditField.Layout.Row = 2;
      app.YMEditField.Layout.Column = [25 26];

      % Create FillAreaCheckBox
      app.FillAreaCheckBox = uicheckbox(app.GridLayout5);
      app.FillAreaCheckBox.ValueChangedFcn = createCallbackFcn(app, @FillAreaCheckBoxValueChanged, true);
      app.FillAreaCheckBox.Text = 'Fill';
      app.FillAreaCheckBox.Layout.Row = 2;
      app.FillAreaCheckBox.Layout.Column = [22 23];

      % Create FillYMCheckBox
      app.FillYMCheckBox = uicheckbox(app.GridLayout5);
      app.FillYMCheckBox.ValueChangedFcn = createCallbackFcn(app, @FillYMCheckBoxValueChanged, true);
      app.FillYMCheckBox.Text = 'Fill';
      app.FillYMCheckBox.Layout.Row = 2;
      app.FillYMCheckBox.Layout.Column = [27 28];

      % Create NumberofsupportsEditFieldLabel
      app.NumberofsupportsEditFieldLabel = uilabel(app.GridLayout5);
      app.NumberofsupportsEditFieldLabel.Layout.Row = 12;
      app.NumberofsupportsEditFieldLabel.Layout.Column = [1 4];
      app.NumberofsupportsEditFieldLabel.Text = 'Number of supports';

      % Create NumberofsupportsEditField
      app.NumberofsupportsEditField = uieditfield(app.GridLayout5, 'numeric');
      app.NumberofsupportsEditField.ValueDisplayFormat = '%.0f';
      app.NumberofsupportsEditField.ValueChangedFcn = createCallbackFcn(app, @NumberofsupportsEditFieldValueChanged, true);
      app.NumberofsupportsEditField.Layout.Row = 12;
      app.NumberofsupportsEditField.Layout.Column = [5 6];
      app.NumberofsupportsEditField.Value = 2;

      % Create EntersupportdataLabel
      app.EntersupportdataLabel = uilabel(app.GridLayout5);
      app.EntersupportdataLabel.FontWeight = 'bold';
      app.EntersupportdataLabel.Layout.Row = 11;
      app.EntersupportdataLabel.Layout.Column = [1 4];
      app.EntersupportdataLabel.Text = 'Support data';

      % Create UITableSupports
      app.UITableSupports = uitable(app.GridLayout5);
      app.UITableSupports.BackgroundColor = [1 1 1];
      app.UITableSupports.ColumnName = {'Node'; 'x-disp'; 'x-fix?'; 'y-disp'; 'y-fix?'; 'z-disp'; 'z-fix?'};
      app.UITableSupports.ColumnWidth = {75, 75, 'auto', 'auto', 'auto', 'auto', 'auto'};
      app.UITableSupports.RowName = {};
      app.UITableSupports.SelectionType = 'row';
      app.UITableSupports.ColumnEditable = true;
      app.UITableSupports.CellEditCallback = createCallbackFcn(app, @UITableSupportsCellEdit, true);
      app.UITableSupports.Multiselect = 'off';
      app.UITableSupports.Layout.Row = [13 19];
      app.UITableSupports.Layout.Column = [1 14];
      app.UITableSupports.FontSize = 11;

      % Create NumberofloadednodesEditFieldLabel
      app.NumberofloadednodesEditFieldLabel = uilabel(app.GridLayout5);
      app.NumberofloadednodesEditFieldLabel.Layout.Row = 12;
      app.NumberofloadednodesEditFieldLabel.Layout.Column = [16 20];
      app.NumberofloadednodesEditFieldLabel.Text = 'Number of loaded nodes';

      % Create NumberofloadednodesEditField
      app.NumberofloadednodesEditField = uieditfield(app.GridLayout5, 'numeric');
      app.NumberofloadednodesEditField.ValueDisplayFormat = '%.0f';
      app.NumberofloadednodesEditField.ValueChangedFcn = createCallbackFcn(app, @NumberofloadednodesEditFieldValueChanged, true);
      app.NumberofloadednodesEditField.Layout.Row = 12;
      app.NumberofloadednodesEditField.Layout.Column = [21 22];
      app.NumberofloadednodesEditField.Value = 2;

      % Create UITableLoads
      app.UITableLoads = uitable(app.GridLayout5);
      app.UITableLoads.BackgroundColor = [1 1 1];
      app.UITableLoads.ColumnName = {'Node'; 'x-load'; 'y-load'; 'z-load'};
      app.UITableLoads.RowName = {};
      app.UITableLoads.SelectionType = 'row';
      app.UITableLoads.ColumnEditable = true;
      app.UITableLoads.CellEditCallback = createCallbackFcn(app, @UITableLoadsCellEdit, true);
      app.UITableLoads.Multiselect = 'off';
      app.UITableLoads.Layout.Row = [13 19];
      app.UITableLoads.Layout.Column = [16 25];

      % Create EnterloaddataLabel
      app.EnterloaddataLabel = uilabel(app.GridLayout5);
      app.EnterloaddataLabel.FontWeight = 'bold';
      app.EnterloaddataLabel.Layout.Row = 11;
      app.EnterloaddataLabel.Layout.Column = [16 19];
      app.EnterloaddataLabel.Text = 'Load data';

      % Create PlotmodelLabel
      app.PlotmodelLabel = uilabel(app.GridLayout5);
      app.PlotmodelLabel.HorizontalAlignment = 'center';
      app.PlotmodelLabel.WordWrap = 'on';
      app.PlotmodelLabel.Layout.Row = 21;
      app.PlotmodelLabel.Layout.Column = [1 3];
      app.PlotmodelLabel.Text = 'Create model';

      % Create CreateModelSwitch
      app.CreateModelSwitch = uiswitch(app.GridLayout5, 'slider');
      app.CreateModelSwitch.ValueChangedFcn = createCallbackFcn(app, @CreateModelSwitchValueChanged, true);
      app.CreateModelSwitch.FontSize = 10;
      app.CreateModelSwitch.Layout.Row = 22;
      app.CreateModelSwitch.Layout.Column = [1 3];

      % Create UITableNodalCoordinates
      app.UITableNodalCoordinates = uitable(app.GridLayout5);
      app.UITableNodalCoordinates.BackgroundColor = [1 1 1];
      app.UITableNodalCoordinates.ColumnName = {'Node'; 'x'; 'y'; 'z'};
      app.UITableNodalCoordinates.RowName = {};
      app.UITableNodalCoordinates.SelectionType = 'row';
      app.UITableNodalCoordinates.ColumnEditable = [false true true true];
      app.UITableNodalCoordinates.CellEditCallback = createCallbackFcn(app, @UITableNodalCoordinatesCellEdit, true);
      app.UITableNodalCoordinates.Multiselect = 'off';
      app.UITableNodalCoordinates.Layout.Row = [3 9];
      app.UITableNodalCoordinates.Layout.Column = [1 8];

      % Create SettingsTab
      app.SettingsTab = uitab(app.PrePreTab);
      app.SettingsTab.Title = 'Settings';

      % Create GridLayout14
      app.GridLayout14 = uigridlayout(app.SettingsTab);
      app.GridLayout14.ColumnWidth = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
      app.GridLayout14.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
      app.GridLayout14.ColumnSpacing = 5;
      app.GridLayout14.RowSpacing = 5;

      % Create NodenumbersEditFieldLabel
      app.NodenumbersEditFieldLabel = uilabel(app.GridLayout14);
      app.NodenumbersEditFieldLabel.Layout.Row = 5;
      app.NodenumbersEditFieldLabel.Layout.Column = [1 5];
      app.NodenumbersEditFieldLabel.Text = 'Node numbers';

      % Create NodeNumbersFontSizeEditField
      app.NodeNumbersFontSizeEditField = uieditfield(app.GridLayout14, 'numeric');
      app.NodeNumbersFontSizeEditField.ValueChangedFcn = createCallbackFcn(app, @NodeNumbersFontSizeEditFieldValueChanged, true);
      app.NodeNumbersFontSizeEditField.Layout.Row = 5;
      app.NodeNumbersFontSizeEditField.Layout.Column = [6 7];
      app.NodeNumbersFontSizeEditField.Value = 12;

      % Create ElementnumbersLabel
      app.ElementnumbersLabel = uilabel(app.GridLayout14);
      app.ElementnumbersLabel.Layout.Row = 2;
      app.ElementnumbersLabel.Layout.Column = [1 5];
      app.ElementnumbersLabel.Text = 'Element numbers';

      % Create ElementNumbersFontSizeEditField
      app.ElementNumbersFontSizeEditField = uieditfield(app.GridLayout14, 'numeric');
      app.ElementNumbersFontSizeEditField.Layout.Row = 2;
      app.ElementNumbersFontSizeEditField.Layout.Column = [6 7];
      app.ElementNumbersFontSizeEditField.Value = 12;

      % Create FontSizesLabel
      app.FontSizesLabel = uilabel(app.GridLayout14);
      app.FontSizesLabel.FontWeight = 'bold';
      app.FontSizesLabel.Layout.Row = 1;
      app.FontSizesLabel.Layout.Column = [1 6];
      app.FontSizesLabel.Text = 'Font Sizes';

      % Create SymbolSizesLabel
      app.SymbolSizesLabel = uilabel(app.GridLayout14);
      app.SymbolSizesLabel.FontWeight = 'bold';
      app.SymbolSizesLabel.Layout.Row = 8;
      app.SymbolSizesLabel.Layout.Column = [1 6];
      app.SymbolSizesLabel.Text = 'Symbol Sizes';

      % Create SupportsLabel
      app.SupportsLabel = uilabel(app.GridLayout14);
      app.SupportsLabel.Layout.Row = 10;
      app.SupportsLabel.Layout.Column = [1 5];
      app.SupportsLabel.Text = 'Supports';

      % Create SupportsSizeEditField
      app.SupportsSizeEditField = uieditfield(app.GridLayout14, 'numeric');
      app.SupportsSizeEditField.Layout.Row = 10;
      app.SupportsSizeEditField.Layout.Column = [6 7];
      app.SupportsSizeEditField.Value = 8;

      % Create ElementnumbersLabel_2
      app.ElementnumbersLabel_2 = uilabel(app.GridLayout14);
      app.ElementnumbersLabel_2.Layout.Row = 4;
      app.ElementnumbersLabel_2.Layout.Column = [1 5];
      app.ElementnumbersLabel_2.Text = 'Loads';

      % Create LoadsSizeEditField
      app.LoadsSizeEditField = uieditfield(app.GridLayout14, 'numeric');
      app.LoadsSizeEditField.Layout.Row = 4;
      app.LoadsSizeEditField.Layout.Column = [6 7];
      app.LoadsSizeEditField.Value = 12;

      % Create ModelspaceLabel
      app.ModelspaceLabel = uilabel(app.GridLayout14);
      app.ModelspaceLabel.FontWeight = 'bold';
      app.ModelspaceLabel.Layout.Row = 12;
      app.ModelspaceLabel.Layout.Column = [1 6];
      app.ModelspaceLabel.Text = 'Model space';

      % Create PlotgridCheckBox
      app.PlotgridCheckBox = uicheckbox(app.GridLayout14);
      app.PlotgridCheckBox.ValueChangedFcn = createCallbackFcn(app, @PlotgridCheckBoxValueChanged, true);
      app.PlotgridCheckBox.Text = 'Plot grid';
      app.PlotgridCheckBox.Layout.Row = 14;
      app.PlotgridCheckBox.Layout.Column = [1 4];
      app.PlotgridCheckBox.Value = true;

      % Create ShowglobalcoordinatesystemCheckBox
      app.ShowglobalcoordinatesystemCheckBox = uicheckbox(app.GridLayout14);
      app.ShowglobalcoordinatesystemCheckBox.ValueChangedFcn = createCallbackFcn(app, @ShowglobalcoordinatesystemCheckBoxValueChanged, true);
      app.ShowglobalcoordinatesystemCheckBox.Text = 'Show global coordinate system';
      app.ShowglobalcoordinatesystemCheckBox.Layout.Row = 15;
      app.ShowglobalcoordinatesystemCheckBox.Layout.Column = [1 8];
      app.ShowglobalcoordinatesystemCheckBox.Value = true;

      % Create PlotaxisCheckBox
      app.PlotaxisCheckBox = uicheckbox(app.GridLayout14);
      app.PlotaxisCheckBox.ValueChangedFcn = createCallbackFcn(app, @PlotaxisCheckBoxValueChanged, true);
      app.PlotaxisCheckBox.Text = 'Plot axis';
      app.PlotaxisCheckBox.Layout.Row = 13;
      app.PlotaxisCheckBox.Layout.Column = [1 4];
      app.PlotaxisCheckBox.Value = true;

      % Create BackgroundButtonGroup
      app.BackgroundButtonGroup = uibuttongroup(app.GridLayout14);
      app.BackgroundButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @BackgroundButtonGroupSelectionChanged, true);
      app.BackgroundButtonGroup.BorderType = 'none';
      app.BackgroundButtonGroup.BorderWidth = 0;
      app.BackgroundButtonGroup.Title = 'Background';
      app.BackgroundButtonGroup.Layout.Row = [16 17];
      app.BackgroundButtonGroup.Layout.Column = [1 6];

      % Create WhiteButton
      app.WhiteButton = uiradiobutton(app.BackgroundButtonGroup);
      app.WhiteButton.Text = 'White';
      app.WhiteButton.Position = [11 4 58 22];
      app.WhiteButton.Value = true;

      % Create GrayButton
      app.GrayButton = uiradiobutton(app.BackgroundButtonGroup);
      app.GrayButton.Text = 'Gray';
      app.GrayButton.Position = [74 4 48 22];

      % Create ColormapButtonGroup
      app.ColormapButtonGroup = uibuttongroup(app.GridLayout14);
      app.ColormapButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @ColormapButtonGroupSelectionChanged, true);
      app.ColormapButtonGroup.BorderType = 'none';
      app.ColormapButtonGroup.BorderWidth = 0;
      app.ColormapButtonGroup.Title = 'Colormap';
      app.ColormapButtonGroup.Layout.Row = [18 19];
      app.ColormapButtonGroup.Layout.Column = [1 10];

      % Create ParulaButton
      app.ParulaButton = uiradiobutton(app.ColormapButtonGroup);
      app.ParulaButton.Text = 'Parula';
      app.ParulaButton.Position = [54 4 58 22];

      % Create JetButton
      app.JetButton = uiradiobutton(app.ColormapButtonGroup);
      app.JetButton.Text = 'Jet';
      app.JetButton.Position = [11 4 38 22];

      % Create TurboButton
      app.TurboButton = uiradiobutton(app.ColormapButtonGroup);
      app.TurboButton.Text = 'Turbo';
      app.TurboButton.Position = [117 4 53 22];
      app.TurboButton.Value = true;

      % Create HotButton
      app.HotButton = uiradiobutton(app.ColormapButtonGroup);
      app.HotButton.Text = 'Hot';
      app.HotButton.Position = [175 4 41 22];

      % Create ElementnumbersLabel_3
      app.ElementnumbersLabel_3 = uilabel(app.GridLayout14);
      app.ElementnumbersLabel_3.Layout.Row = 3;
      app.ElementnumbersLabel_3.Layout.Column = [1 5];
      app.ElementnumbersLabel_3.Text = 'Legends';

      % Create LegendsEditField
      app.LegendsEditField = uieditfield(app.GridLayout14, 'numeric');
      app.LegendsEditField.Layout.Row = 3;
      app.LegendsEditField.Layout.Column = [6 7];
      app.LegendsEditField.Value = 11;

      % Create SupportsLabel_2
      app.SupportsLabel_2 = uilabel(app.GridLayout14);
      app.SupportsLabel_2.Layout.Row = 9;
      app.SupportsLabel_2.Layout.Column = [1 5];
      app.SupportsLabel_2.Text = 'Markers';

      % Create MarkersSizeEditField
      app.MarkersSizeEditField = uieditfield(app.GridLayout14, 'numeric');
      app.MarkersSizeEditField.Layout.Row = 9;
      app.MarkersSizeEditField.Layout.Column = [6 7];
      app.MarkersSizeEditField.Value = 6;

      % Create ReactionsLabel
      app.ReactionsLabel = uilabel(app.GridLayout14);
      app.ReactionsLabel.Layout.Row = 6;
      app.ReactionsLabel.Layout.Column = [1 5];
      app.ReactionsLabel.Text = 'Reactions';

      % Create ReactionsFontSizeEditField
      app.ReactionsFontSizeEditField = uieditfield(app.GridLayout14, 'numeric');
      app.ReactionsFontSizeEditField.Layout.Row = 6;
      app.ReactionsFontSizeEditField.Layout.Column = [6 7];
      app.ReactionsFontSizeEditField.Value = 12;

      % Create FEALABTruss11Panel
      app.FEALABTruss11Panel = uipanel(app.GridLayout2);
      app.FEALABTruss11Panel.ForegroundColor = [0.9412 0.9412 0.9412];
      app.FEALABTruss11Panel.BorderType = 'none';
      app.FEALABTruss11Panel.Title = 'FEALAB/Truss 1.1';
      app.FEALABTruss11Panel.BackgroundColor = [0.4667 0.4784 0.5882];
      app.FEALABTruss11Panel.Layout.Row = [1 27];
      app.FEALABTruss11Panel.Layout.Column = [44 48];
      app.FEALABTruss11Panel.FontSize = 11;

      % Create GridLayout3
      app.GridLayout3 = uigridlayout(app.FEALABTruss11Panel);
      app.GridLayout3.ColumnWidth = {'1x', '1x', '1x', '1x', '1x', '1x', '1x'};
      app.GridLayout3.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
      app.GridLayout3.ColumnSpacing = 5;
      app.GridLayout3.RowSpacing = 8;
      app.GridLayout3.Padding = [5 5 5 5];
      app.GridLayout3.BackgroundColor = [0.4667 0.4784 0.5882];

      % Create LoadfromfileButtonPre
      app.LoadfromfileButtonPre = uibutton(app.GridLayout3, 'push');
      app.LoadfromfileButtonPre.ButtonPushedFcn = createCallbackFcn(app, @LoadfromfileButtonPrePushed, true);
      app.LoadfromfileButtonPre.Layout.Row = 1;
      app.LoadfromfileButtonPre.Layout.Column = [2 6];
      app.LoadfromfileButtonPre.Text = 'Load from file';

      % Create SavetoafileButtonPre
      app.SavetoafileButtonPre = uibutton(app.GridLayout3, 'push');
      app.SavetoafileButtonPre.ButtonPushedFcn = createCallbackFcn(app, @SavetoafileButtonPrePushed, true);
      app.SavetoafileButtonPre.Layout.Row = 2;
      app.SavetoafileButtonPre.Layout.Column = [2 6];
      app.SavetoafileButtonPre.Text = 'Save to a file';

      % Create TABSnapshotButtonPre
      app.TABSnapshotButtonPre = uibutton(app.GridLayout3, 'push');
      app.TABSnapshotButtonPre.ButtonPushedFcn = createCallbackFcn(app, @TABSnapshotButtonPrePushed, true);
      app.TABSnapshotButtonPre.Layout.Row = 3;
      app.TABSnapshotButtonPre.Layout.Column = [2 6];
      app.TABSnapshotButtonPre.Text = 'TAB Snapshot';

      % Create RunanalysisButtonStaticAnalysis
      app.RunanalysisButtonStaticAnalysis = uibutton(app.GridLayout3, 'push');
      app.RunanalysisButtonStaticAnalysis.ButtonPushedFcn = createCallbackFcn(app, @RunanalysisButtonStaticAnalysisPushed, true);
      app.RunanalysisButtonStaticAnalysis.BackgroundColor = [1 1 1];
      app.RunanalysisButtonStaticAnalysis.Enable = 'off';
      app.RunanalysisButtonStaticAnalysis.Layout.Row = 15;
      app.RunanalysisButtonStaticAnalysis.Layout.Column = [2 6];
      app.RunanalysisButtonStaticAnalysis.Text = 'Run analysis';

      % Create PostStaticTab
      app.PostStaticTab = uitab(app.TabGroupMain);
      app.PostStaticTab.Title = 'Post/Static';

      % Create GridLayout6
      app.GridLayout6 = uigridlayout(app.PostStaticTab);
      app.GridLayout6.ColumnWidth = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
      app.GridLayout6.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
      app.GridLayout6.ColumnSpacing = 0;
      app.GridLayout6.RowSpacing = 0;
      app.GridLayout6.Padding = [0 0 0 0];

      % Create PostStaticPostStaticTabGroup
      app.PostStaticPostStaticTabGroup = uitabgroup(app.GridLayout6);
      app.PostStaticPostStaticTabGroup.TabLocation = 'left';
      app.PostStaticPostStaticTabGroup.Layout.Row = [1 27];
      app.PostStaticPostStaticTabGroup.Layout.Column = [1 43];

      % Create PostStaticModelTab
      app.PostStaticModelTab = uitab(app.PostStaticPostStaticTabGroup);
      app.PostStaticModelTab.Title = 'Model';
      app.PostStaticModelTab.ButtonDownFcn = createCallbackFcn(app, @PostStaticModelTabButtonDown, true);

      % Create GridLayoutPostStaticModel
      app.GridLayoutPostStaticModel = uigridlayout(app.PostStaticModelTab);
      app.GridLayoutPostStaticModel.ColumnWidth = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
      app.GridLayoutPostStaticModel.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
      app.GridLayoutPostStaticModel.ColumnSpacing = 2;
      app.GridLayoutPostStaticModel.RowSpacing = 2;
      app.GridLayoutPostStaticModel.Padding = [8 5 8 5];
      app.GridLayoutPostStaticModel.BackgroundColor = [1 1 1];

      % Create UIAxesModelPostStatic
      app.UIAxesModelPostStatic = uiaxes(app.GridLayoutPostStaticModel);
      xlabel(app.UIAxesModelPostStatic, 'X')
      ylabel(app.UIAxesModelPostStatic, 'Y')
      zlabel(app.UIAxesModelPostStatic, 'Z')
      app.UIAxesModelPostStatic.View = [60 30];
      app.UIAxesModelPostStatic.GridColor = [0.8 0.8 0.8];
      app.UIAxesModelPostStatic.XGrid = 'on';
      app.UIAxesModelPostStatic.YGrid = 'on';
      app.UIAxesModelPostStatic.ZGrid = 'on';
      app.UIAxesModelPostStatic.FontSize = 11;
      app.UIAxesModelPostStatic.Clipping = 'off';
      app.UIAxesModelPostStatic.Layout.Row = [2 27];
      app.UIAxesModelPostStatic.Layout.Column = [7 47];

      % Create ViewsModelPostStatic
      app.ViewsModelPostStatic = uibuttongroup(app.GridLayoutPostStaticModel);
      app.ViewsModelPostStatic.SelectionChangedFcn = createCallbackFcn(app, @ViewsModelPostStaticSelectionChanged, true);
      app.ViewsModelPostStatic.Enable = 'off';
      app.ViewsModelPostStatic.Title = 'Views';
      app.ViewsModelPostStatic.Layout.Row = [1 14];
      app.ViewsModelPostStatic.Layout.Column = [1 5];

      % Create View1ModelPostStatic
      app.View1ModelPostStatic = uiradiobutton(app.ViewsModelPostStatic);
      app.View1ModelPostStatic.Text = '+X+Y+Z';
      app.View1ModelPostStatic.Position = [10 222 66 22];
      app.View1ModelPostStatic.Value = true;

      % Create View2ModelPostStatic
      app.View2ModelPostStatic = uiradiobutton(app.ViewsModelPostStatic);
      app.View2ModelPostStatic.Text = '+Y-X+Z';
      app.View2ModelPostStatic.Position = [10 196 66 22];

      % Create View3ModelPostStatic
      app.View3ModelPostStatic = uiradiobutton(app.ViewsModelPostStatic);
      app.View3ModelPostStatic.Text = '-X-Y+Z';
      app.View3ModelPostStatic.Position = [10 170 66 22];

      % Create View4ModelPostStatic
      app.View4ModelPostStatic = uiradiobutton(app.ViewsModelPostStatic);
      app.View4ModelPostStatic.Text = '-Y+X+Z';
      app.View4ModelPostStatic.Position = [10 144 66 22];

      % Create View5ModelPostStatic
      app.View5ModelPostStatic = uiradiobutton(app.ViewsModelPostStatic);
      app.View5ModelPostStatic.Text = '+X+Z';
      app.View5ModelPostStatic.Position = [10 118 66 22];

      % Create View6ModelPostStatic
      app.View6ModelPostStatic = uiradiobutton(app.ViewsModelPostStatic);
      app.View6ModelPostStatic.Text = '-X+Z';
      app.View6ModelPostStatic.Position = [10 92 66 22];

      % Create View7ModelPostStatic
      app.View7ModelPostStatic = uiradiobutton(app.ViewsModelPostStatic);
      app.View7ModelPostStatic.Text = '+Y+Z';
      app.View7ModelPostStatic.Position = [10 66 66 22];

      % Create View8ModelPostStatic
      app.View8ModelPostStatic = uiradiobutton(app.ViewsModelPostStatic);
      app.View8ModelPostStatic.Text = '-Y+Z';
      app.View8ModelPostStatic.Position = [10 40 66 22];

      % Create View9ModelPostStatic
      app.View9ModelPostStatic = uiradiobutton(app.ViewsModelPostStatic);
      app.View9ModelPostStatic.Text = '+X+Y';
      app.View9ModelPostStatic.Position = [10 14 66 22];

      % Create NodesLabel
      app.NodesLabel = uilabel(app.GridLayoutPostStaticModel);
      app.NodesLabel.WordWrap = 'on';
      app.NodesLabel.FontSize = 11;
      app.NodesLabel.Layout.Row = 16;
      app.NodesLabel.Layout.Column = [1 5];
      app.NodesLabel.Text = 'Nodes';

      % Create NodenumbersSwitchModelPostStatic
      app.NodenumbersSwitchModelPostStatic = uiswitch(app.GridLayoutPostStaticModel, 'slider');
      app.NodenumbersSwitchModelPostStatic.ValueChangedFcn = createCallbackFcn(app, @NodenumbersSwitchModelPostStaticValueChanged, true);
      app.NodenumbersSwitchModelPostStatic.Enable = 'off';
      app.NodenumbersSwitchModelPostStatic.FontSize = 11;
      app.NodenumbersSwitchModelPostStatic.Layout.Row = 17;
      app.NodenumbersSwitchModelPostStatic.Layout.Column = [1 5];

      % Create ElementsLabel
      app.ElementsLabel = uilabel(app.GridLayoutPostStaticModel);
      app.ElementsLabel.WordWrap = 'on';
      app.ElementsLabel.FontSize = 11;
      app.ElementsLabel.Layout.Row = 18;
      app.ElementsLabel.Layout.Column = [1 5];
      app.ElementsLabel.Text = 'Elements';

      % Create ElementnumbersSwitchModelPostStatic
      app.ElementnumbersSwitchModelPostStatic = uiswitch(app.GridLayoutPostStaticModel, 'slider');
      app.ElementnumbersSwitchModelPostStatic.ValueChangedFcn = createCallbackFcn(app, @ElementnumbersSwitchModelPostStaticValueChanged, true);
      app.ElementnumbersSwitchModelPostStatic.Enable = 'off';
      app.ElementnumbersSwitchModelPostStatic.FontSize = 11;
      app.ElementnumbersSwitchModelPostStatic.Layout.Row = 19;
      app.ElementnumbersSwitchModelPostStatic.Layout.Column = [1 5];

      % Create ConstraintsLabel
      app.ConstraintsLabel = uilabel(app.GridLayoutPostStaticModel);
      app.ConstraintsLabel.WordWrap = 'on';
      app.ConstraintsLabel.FontSize = 11;
      app.ConstraintsLabel.Layout.Row = 20;
      app.ConstraintsLabel.Layout.Column = [1 5];
      app.ConstraintsLabel.Text = 'Supports';

      % Create SupportsSwitchModelPostStatic
      app.SupportsSwitchModelPostStatic = uiswitch(app.GridLayoutPostStaticModel, 'slider');
      app.SupportsSwitchModelPostStatic.ValueChangedFcn = createCallbackFcn(app, @SupportsSwitchModelPostStaticValueChanged, true);
      app.SupportsSwitchModelPostStatic.Enable = 'off';
      app.SupportsSwitchModelPostStatic.FontSize = 11;
      app.SupportsSwitchModelPostStatic.Layout.Row = 21;
      app.SupportsSwitchModelPostStatic.Layout.Column = [1 5];

      % Create LoadsSwitchLabel
      app.LoadsSwitchLabel = uilabel(app.GridLayoutPostStaticModel);
      app.LoadsSwitchLabel.WordWrap = 'on';
      app.LoadsSwitchLabel.FontSize = 11;
      app.LoadsSwitchLabel.Layout.Row = 22;
      app.LoadsSwitchLabel.Layout.Column = [1 5];
      app.LoadsSwitchLabel.Text = 'Loads';

      % Create LoadsSwitchModelPostStatic
      app.LoadsSwitchModelPostStatic = uiswitch(app.GridLayoutPostStaticModel, 'slider');
      app.LoadsSwitchModelPostStatic.ValueChangedFcn = createCallbackFcn(app, @LoadsSwitchModelPostStaticValueChanged, true);
      app.LoadsSwitchModelPostStatic.Enable = 'off';
      app.LoadsSwitchModelPostStatic.FontSize = 11;
      app.LoadsSwitchModelPostStatic.Layout.Row = 23;
      app.LoadsSwitchModelPostStatic.Layout.Column = [1 5];

      % Create PostStaticDisplacementsTab
      app.PostStaticDisplacementsTab = uitab(app.PostStaticPostStaticTabGroup);
      app.PostStaticDisplacementsTab.Title = 'Displacements';
      app.PostStaticDisplacementsTab.ButtonDownFcn = createCallbackFcn(app, @PostStaticDisplacementsTabButtonDown, true);

      % Create GridLayoutPostStaticDisplacements
      app.GridLayoutPostStaticDisplacements = uigridlayout(app.PostStaticDisplacementsTab);
      app.GridLayoutPostStaticDisplacements.ColumnWidth = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
      app.GridLayoutPostStaticDisplacements.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
      app.GridLayoutPostStaticDisplacements.ColumnSpacing = 2;
      app.GridLayoutPostStaticDisplacements.RowSpacing = 2;
      app.GridLayoutPostStaticDisplacements.Padding = [8 5 8 5];
      app.GridLayoutPostStaticDisplacements.BackgroundColor = [1 1 1];

      % Create UIAxesPostStaticDisplacements
      app.UIAxesPostStaticDisplacements = uiaxes(app.GridLayoutPostStaticDisplacements);
      xlabel(app.UIAxesPostStaticDisplacements, 'X')
      ylabel(app.UIAxesPostStaticDisplacements, 'Y')
      zlabel(app.UIAxesPostStaticDisplacements, 'Z')
      app.UIAxesPostStaticDisplacements.View = [60 30];
      app.UIAxesPostStaticDisplacements.GridColor = [0.8 0.8 0.8];
      app.UIAxesPostStaticDisplacements.XGrid = 'on';
      app.UIAxesPostStaticDisplacements.YGrid = 'on';
      app.UIAxesPostStaticDisplacements.ZGrid = 'on';
      app.UIAxesPostStaticDisplacements.FontSize = 11;
      app.UIAxesPostStaticDisplacements.Layout.Row = [2 27];
      app.UIAxesPostStaticDisplacements.Layout.Column = [7 47];

      % Create ViewsPostStaticDisplacements
      app.ViewsPostStaticDisplacements = uibuttongroup(app.GridLayoutPostStaticDisplacements);
      app.ViewsPostStaticDisplacements.SelectionChangedFcn = createCallbackFcn(app, @ViewsPostStaticDisplacementsSelectionChanged, true);
      app.ViewsPostStaticDisplacements.Enable = 'off';
      app.ViewsPostStaticDisplacements.Title = 'Views';
      app.ViewsPostStaticDisplacements.Layout.Row = [1 14];
      app.ViewsPostStaticDisplacements.Layout.Column = [1 5];

      % Create View1PostStaticDisplacements
      app.View1PostStaticDisplacements = uiradiobutton(app.ViewsPostStaticDisplacements);
      app.View1PostStaticDisplacements.Text = '+X+Y+Z';
      app.View1PostStaticDisplacements.Position = [10 222 66 22];
      app.View1PostStaticDisplacements.Value = true;

      % Create View2PostStaticDisplacements
      app.View2PostStaticDisplacements = uiradiobutton(app.ViewsPostStaticDisplacements);
      app.View2PostStaticDisplacements.Text = '+Y-X+Z';
      app.View2PostStaticDisplacements.Position = [10 196 66 22];

      % Create View3PostStaticDisplacements
      app.View3PostStaticDisplacements = uiradiobutton(app.ViewsPostStaticDisplacements);
      app.View3PostStaticDisplacements.Text = '-X-Y+Z';
      app.View3PostStaticDisplacements.Position = [10 170 66 22];

      % Create View4PostStaticDisplacements
      app.View4PostStaticDisplacements = uiradiobutton(app.ViewsPostStaticDisplacements);
      app.View4PostStaticDisplacements.Text = '-Y+X+Z';
      app.View4PostStaticDisplacements.Position = [10 144 66 22];

      % Create View5PostStaticDisplacements
      app.View5PostStaticDisplacements = uiradiobutton(app.ViewsPostStaticDisplacements);
      app.View5PostStaticDisplacements.Text = '+X+Z';
      app.View5PostStaticDisplacements.Position = [10 118 66 22];

      % Create View6PostStaticDisplacements
      app.View6PostStaticDisplacements = uiradiobutton(app.ViewsPostStaticDisplacements);
      app.View6PostStaticDisplacements.Text = '-X+Z';
      app.View6PostStaticDisplacements.Position = [10 92 66 22];

      % Create View7PostStaticDisplacements
      app.View7PostStaticDisplacements = uiradiobutton(app.ViewsPostStaticDisplacements);
      app.View7PostStaticDisplacements.Text = '+Y+Z';
      app.View7PostStaticDisplacements.Position = [10 66 66 22];

      % Create View8PostStaticDisplacements
      app.View8PostStaticDisplacements = uiradiobutton(app.ViewsPostStaticDisplacements);
      app.View8PostStaticDisplacements.Text = '-Y+Z';
      app.View8PostStaticDisplacements.Position = [10 40 66 22];

      % Create View9PostStaticDisplacements
      app.View9PostStaticDisplacements = uiradiobutton(app.ViewsPostStaticDisplacements);
      app.View9PostStaticDisplacements.Text = '+X+Y';
      app.View9PostStaticDisplacements.Position = [10 14 66 22];

      % Create UxButtonPostStaticDisplacements
      app.UxButtonPostStaticDisplacements = uibutton(app.GridLayoutPostStaticDisplacements, 'push');
      app.UxButtonPostStaticDisplacements.ButtonPushedFcn = createCallbackFcn(app, @UxButtonPostStaticDisplacementsPushed, true);
      app.UxButtonPostStaticDisplacements.FontSize = 11;
      app.UxButtonPostStaticDisplacements.Enable = 'off';
      app.UxButtonPostStaticDisplacements.Layout.Row = 16;
      app.UxButtonPostStaticDisplacements.Layout.Column = [1 3];
      app.UxButtonPostStaticDisplacements.Text = 'Ux';

      % Create UyButtonPostStaticDisplacements
      app.UyButtonPostStaticDisplacements = uibutton(app.GridLayoutPostStaticDisplacements, 'push');
      app.UyButtonPostStaticDisplacements.ButtonPushedFcn = createCallbackFcn(app, @UyButtonPostStaticDisplacementsPushed, true);
      app.UyButtonPostStaticDisplacements.FontSize = 11;
      app.UyButtonPostStaticDisplacements.Enable = 'off';
      app.UyButtonPostStaticDisplacements.Layout.Row = 17;
      app.UyButtonPostStaticDisplacements.Layout.Column = [1 3];
      app.UyButtonPostStaticDisplacements.Text = 'Uy';

      % Create UzButtonPostStaticDisplacements
      app.UzButtonPostStaticDisplacements = uibutton(app.GridLayoutPostStaticDisplacements, 'push');
      app.UzButtonPostStaticDisplacements.ButtonPushedFcn = createCallbackFcn(app, @UzButtonPostStaticDisplacementsPushed, true);
      app.UzButtonPostStaticDisplacements.FontSize = 11;
      app.UzButtonPostStaticDisplacements.Enable = 'off';
      app.UzButtonPostStaticDisplacements.Layout.Row = 18;
      app.UzButtonPostStaticDisplacements.Layout.Column = [1 3];
      app.UzButtonPostStaticDisplacements.Text = 'Uz';

      % Create UButtonPostStaticDisplacements
      app.UButtonPostStaticDisplacements = uibutton(app.GridLayoutPostStaticDisplacements, 'push');
      app.UButtonPostStaticDisplacements.ButtonPushedFcn = createCallbackFcn(app, @UButtonPostStaticDisplacementsPushed, true);
      app.UButtonPostStaticDisplacements.FontSize = 11;
      app.UButtonPostStaticDisplacements.Enable = 'off';
      app.UButtonPostStaticDisplacements.Layout.Row = 19;
      app.UButtonPostStaticDisplacements.Layout.Column = [1 3];
      app.UButtonPostStaticDisplacements.Text = '||U||';

      % Create NodesLabel_2
      app.NodesLabel_2 = uilabel(app.GridLayoutPostStaticDisplacements);
      app.NodesLabel_2.WordWrap = 'on';
      app.NodesLabel_2.FontSize = 11;
      app.NodesLabel_2.Layout.Row = 23;
      app.NodesLabel_2.Layout.Column = [1 5];
      app.NodesLabel_2.Text = 'Nodes';

      % Create NodenumbersSwitchPostStaticDisplacements
      app.NodenumbersSwitchPostStaticDisplacements = uiswitch(app.GridLayoutPostStaticDisplacements, 'slider');
      app.NodenumbersSwitchPostStaticDisplacements.ValueChangedFcn = createCallbackFcn(app, @NodenumbersSwitchPostStaticDisplacementsValueChanged, true);
      app.NodenumbersSwitchPostStaticDisplacements.Enable = 'off';
      app.NodenumbersSwitchPostStaticDisplacements.FontSize = 11;
      app.NodenumbersSwitchPostStaticDisplacements.Layout.Row = 24;
      app.NodenumbersSwitchPostStaticDisplacements.Layout.Column = [1 5];

      % Create NodesLabel_3
      app.NodesLabel_3 = uilabel(app.GridLayoutPostStaticDisplacements);
      app.NodesLabel_3.WordWrap = 'on';
      app.NodesLabel_3.FontSize = 11;
      app.NodesLabel_3.Layout.Row = 25;
      app.NodesLabel_3.Layout.Column = [1 5];
      app.NodesLabel_3.Text = 'Deformed mesh';

      % Create DeformedSwitchPostStaticDisplacements
      app.DeformedSwitchPostStaticDisplacements = uiswitch(app.GridLayoutPostStaticDisplacements, 'slider');
      app.DeformedSwitchPostStaticDisplacements.ValueChangedFcn = createCallbackFcn(app, @DeformedSwitchPostStaticDisplacementsValueChanged, true);
      app.DeformedSwitchPostStaticDisplacements.Enable = 'off';
      app.DeformedSwitchPostStaticDisplacements.FontSize = 11;
      app.DeformedSwitchPostStaticDisplacements.Layout.Row = 26;
      app.DeformedSwitchPostStaticDisplacements.Layout.Column = [1 5];

      % Create FactorEditFieldLabel
      app.FactorEditFieldLabel = uilabel(app.GridLayoutPostStaticDisplacements);
      app.FactorEditFieldLabel.HorizontalAlignment = 'center';
      app.FactorEditFieldLabel.FontSize = 11;
      app.FactorEditFieldLabel.Layout.Row = 28;
      app.FactorEditFieldLabel.Layout.Column = [3 4];
      app.FactorEditFieldLabel.Text = 'Factor';

      % Create FactorEditFieldPostStaticDisplacements
      app.FactorEditFieldPostStaticDisplacements = uieditfield(app.GridLayoutPostStaticDisplacements, 'numeric');
      app.FactorEditFieldPostStaticDisplacements.ValueChangedFcn = createCallbackFcn(app, @FactorEditFieldPostStaticDisplacementsValueChanged, true);
      app.FactorEditFieldPostStaticDisplacements.FontSize = 11;
      app.FactorEditFieldPostStaticDisplacements.Enable = 'off';
      app.FactorEditFieldPostStaticDisplacements.Layout.Row = 28;
      app.FactorEditFieldPostStaticDisplacements.Layout.Column = [1 2];
      app.FactorEditFieldPostStaticDisplacements.Value = 1;

      % Create OriginalmeshCheckBoxPostStaticDisplacements
      app.OriginalmeshCheckBoxPostStaticDisplacements = uicheckbox(app.GridLayoutPostStaticDisplacements);
      app.OriginalmeshCheckBoxPostStaticDisplacements.ValueChangedFcn = createCallbackFcn(app, @OriginalmeshCheckBoxPostStaticDisplacementsValueChanged, true);
      app.OriginalmeshCheckBoxPostStaticDisplacements.Enable = 'off';
      app.OriginalmeshCheckBoxPostStaticDisplacements.Text = 'Original mesh';
      app.OriginalmeshCheckBoxPostStaticDisplacements.Layout.Row = 27;
      app.OriginalmeshCheckBoxPostStaticDisplacements.Layout.Column = [1 5];

      % Create PostStaticIntVariablesTab
      app.PostStaticIntVariablesTab = uitab(app.PostStaticPostStaticTabGroup);
      app.PostStaticIntVariablesTab.Title = 'Internal variables';
      app.PostStaticIntVariablesTab.BackgroundColor = [0.9412 0.9412 0.9412];
      app.PostStaticIntVariablesTab.ButtonDownFcn = createCallbackFcn(app, @PostStaticIntVariablesTabButtonDown, true);

      % Create GridLayoutPostStaticInternalVariables
      app.GridLayoutPostStaticInternalVariables = uigridlayout(app.PostStaticIntVariablesTab);
      app.GridLayoutPostStaticInternalVariables.ColumnWidth = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
      app.GridLayoutPostStaticInternalVariables.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
      app.GridLayoutPostStaticInternalVariables.ColumnSpacing = 2;
      app.GridLayoutPostStaticInternalVariables.RowSpacing = 2;
      app.GridLayoutPostStaticInternalVariables.Padding = [8 5 8 5];
      app.GridLayoutPostStaticInternalVariables.BackgroundColor = [1 1 1];

      % Create UIAxesPostStaticInternalVariables
      app.UIAxesPostStaticInternalVariables = uiaxes(app.GridLayoutPostStaticInternalVariables);
      xlabel(app.UIAxesPostStaticInternalVariables, 'X')
      ylabel(app.UIAxesPostStaticInternalVariables, 'Y')
      zlabel(app.UIAxesPostStaticInternalVariables, 'Z')
      app.UIAxesPostStaticInternalVariables.View = [60 30];
      app.UIAxesPostStaticInternalVariables.GridColor = [0.8 0.8 0.8];
      app.UIAxesPostStaticInternalVariables.XGrid = 'on';
      app.UIAxesPostStaticInternalVariables.YGrid = 'on';
      app.UIAxesPostStaticInternalVariables.ZGrid = 'on';
      app.UIAxesPostStaticInternalVariables.FontSize = 11;
      app.UIAxesPostStaticInternalVariables.Layout.Row = [2 27];
      app.UIAxesPostStaticInternalVariables.Layout.Column = [7 47];

      % Create ViewsPostStaticIntVariables
      app.ViewsPostStaticIntVariables = uibuttongroup(app.GridLayoutPostStaticInternalVariables);
      app.ViewsPostStaticIntVariables.SelectionChangedFcn = createCallbackFcn(app, @ViewsPostStaticIntVariablesSelectionChanged, true);
      app.ViewsPostStaticIntVariables.Enable = 'off';
      app.ViewsPostStaticIntVariables.Title = 'Views';
      app.ViewsPostStaticIntVariables.Layout.Row = [1 14];
      app.ViewsPostStaticIntVariables.Layout.Column = [1 5];

      % Create View1PostStaticIntVariables
      app.View1PostStaticIntVariables = uiradiobutton(app.ViewsPostStaticIntVariables);
      app.View1PostStaticIntVariables.Text = '+X+Y+Z';
      app.View1PostStaticIntVariables.Position = [10 222 66 22];
      app.View1PostStaticIntVariables.Value = true;

      % Create View2PostStaticIntVariables
      app.View2PostStaticIntVariables = uiradiobutton(app.ViewsPostStaticIntVariables);
      app.View2PostStaticIntVariables.Text = '+Y-X+Z';
      app.View2PostStaticIntVariables.Position = [10 196 66 22];

      % Create View3PostStaticIntVariables
      app.View3PostStaticIntVariables = uiradiobutton(app.ViewsPostStaticIntVariables);
      app.View3PostStaticIntVariables.Text = '-X-Y+Z';
      app.View3PostStaticIntVariables.Position = [10 170 66 22];

      % Create View4PostStaticIntVariables
      app.View4PostStaticIntVariables = uiradiobutton(app.ViewsPostStaticIntVariables);
      app.View4PostStaticIntVariables.Text = '-Y+X+Z';
      app.View4PostStaticIntVariables.Position = [10 144 66 22];

      % Create View5PostStaticIntVariables
      app.View5PostStaticIntVariables = uiradiobutton(app.ViewsPostStaticIntVariables);
      app.View5PostStaticIntVariables.Text = '+X+Z';
      app.View5PostStaticIntVariables.Position = [10 118 66 22];

      % Create View6PostStaticIntVariables
      app.View6PostStaticIntVariables = uiradiobutton(app.ViewsPostStaticIntVariables);
      app.View6PostStaticIntVariables.Text = '-X+Z';
      app.View6PostStaticIntVariables.Position = [10 92 66 22];

      % Create View7PostStaticIntVariables
      app.View7PostStaticIntVariables = uiradiobutton(app.ViewsPostStaticIntVariables);
      app.View7PostStaticIntVariables.Text = '+Y+Z';
      app.View7PostStaticIntVariables.Position = [10 66 66 22];

      % Create View8PostStaticIntVariables
      app.View8PostStaticIntVariables = uiradiobutton(app.ViewsPostStaticIntVariables);
      app.View8PostStaticIntVariables.Text = '-Y+Z';
      app.View8PostStaticIntVariables.Position = [10 40 66 22];

      % Create View9PostStaticIntVariables
      app.View9PostStaticIntVariables = uiradiobutton(app.ViewsPostStaticIntVariables);
      app.View9PostStaticIntVariables.Text = '+X+Y';
      app.View9PostStaticIntVariables.Position = [10 14 66 22];

      % Create StrainsButtonPostStaticIntVariables
      app.StrainsButtonPostStaticIntVariables = uibutton(app.GridLayoutPostStaticInternalVariables, 'push');
      app.StrainsButtonPostStaticIntVariables.ButtonPushedFcn = createCallbackFcn(app, @StrainsButtonPostStaticIntVariablesPushed, true);
      app.StrainsButtonPostStaticIntVariables.FontSize = 11;
      app.StrainsButtonPostStaticIntVariables.Enable = 'off';
      app.StrainsButtonPostStaticIntVariables.Layout.Row = 16;
      app.StrainsButtonPostStaticIntVariables.Layout.Column = [1 3];
      app.StrainsButtonPostStaticIntVariables.Text = 'Strains';

      % Create StressesButtonPostStaticIntVariables
      app.StressesButtonPostStaticIntVariables = uibutton(app.GridLayoutPostStaticInternalVariables, 'push');
      app.StressesButtonPostStaticIntVariables.ButtonPushedFcn = createCallbackFcn(app, @StressesButtonPostStaticIntVariablesPushed, true);
      app.StressesButtonPostStaticIntVariables.FontSize = 11;
      app.StressesButtonPostStaticIntVariables.Enable = 'off';
      app.StressesButtonPostStaticIntVariables.Layout.Row = 17;
      app.StressesButtonPostStaticIntVariables.Layout.Column = [1 3];
      app.StressesButtonPostStaticIntVariables.Text = 'Stresses';

      % Create ForcesButtonPostStaticIntVariables
      app.ForcesButtonPostStaticIntVariables = uibutton(app.GridLayoutPostStaticInternalVariables, 'push');
      app.ForcesButtonPostStaticIntVariables.ButtonPushedFcn = createCallbackFcn(app, @ForcesButtonPostStaticIntVariablesPushed, true);
      app.ForcesButtonPostStaticIntVariables.FontSize = 11;
      app.ForcesButtonPostStaticIntVariables.Enable = 'off';
      app.ForcesButtonPostStaticIntVariables.Layout.Row = 18;
      app.ForcesButtonPostStaticIntVariables.Layout.Column = [1 3];
      app.ForcesButtonPostStaticIntVariables.Text = 'Forces';

      % Create TCForcesButtonPostStaticIntVariables
      app.TCForcesButtonPostStaticIntVariables = uibutton(app.GridLayoutPostStaticInternalVariables, 'push');
      app.TCForcesButtonPostStaticIntVariables.ButtonPushedFcn = createCallbackFcn(app, @TCForcesButtonPostStaticIntVariablesPushed, true);
      app.TCForcesButtonPostStaticIntVariables.FontSize = 11;
      app.TCForcesButtonPostStaticIntVariables.Enable = 'off';
      app.TCForcesButtonPostStaticIntVariables.Layout.Row = 19;
      app.TCForcesButtonPostStaticIntVariables.Layout.Column = [1 3];
      app.TCForcesButtonPostStaticIntVariables.Text = 'Forces T/C';

      % Create MaxMinStrainsButtonPostStaticIntVariables
      app.MaxMinStrainsButtonPostStaticIntVariables = uibutton(app.GridLayoutPostStaticInternalVariables, 'push');
      app.MaxMinStrainsButtonPostStaticIntVariables.ButtonPushedFcn = createCallbackFcn(app, @MaxMinStrainsButtonPostStaticIntVariablesPushed, true);
      app.MaxMinStrainsButtonPostStaticIntVariables.FontSize = 11;
      app.MaxMinStrainsButtonPostStaticIntVariables.Enable = 'off';
      app.MaxMinStrainsButtonPostStaticIntVariables.Layout.Row = 20;
      app.MaxMinStrainsButtonPostStaticIntVariables.Layout.Column = [1 3];
      app.MaxMinStrainsButtonPostStaticIntVariables.Text = '+/- Strains';

      % Create MaxMinStressesButtonPostStaticIntVariables
      app.MaxMinStressesButtonPostStaticIntVariables = uibutton(app.GridLayoutPostStaticInternalVariables, 'push');
      app.MaxMinStressesButtonPostStaticIntVariables.ButtonPushedFcn = createCallbackFcn(app, @MaxMinStressesButtonPostStaticIntVariablesPushed, true);
      app.MaxMinStressesButtonPostStaticIntVariables.FontSize = 11;
      app.MaxMinStressesButtonPostStaticIntVariables.Enable = 'off';
      app.MaxMinStressesButtonPostStaticIntVariables.Layout.Row = 21;
      app.MaxMinStressesButtonPostStaticIntVariables.Layout.Column = [1 3];
      app.MaxMinStressesButtonPostStaticIntVariables.Text = '+/- Stresses';

      % Create MaxMinForcesButtonPostStaticIntVariables
      app.MaxMinForcesButtonPostStaticIntVariables = uibutton(app.GridLayoutPostStaticInternalVariables, 'push');
      app.MaxMinForcesButtonPostStaticIntVariables.ButtonPushedFcn = createCallbackFcn(app, @MaxMinForcesButtonPostStaticIntVariablesPushed, true);
      app.MaxMinForcesButtonPostStaticIntVariables.FontSize = 11;
      app.MaxMinForcesButtonPostStaticIntVariables.Enable = 'off';
      app.MaxMinForcesButtonPostStaticIntVariables.Layout.Row = 22;
      app.MaxMinForcesButtonPostStaticIntVariables.Layout.Column = [1 3];
      app.MaxMinForcesButtonPostStaticIntVariables.Text = '+/- Forces';

      % Create ElementNumLabel
      app.ElementNumLabel = uilabel(app.GridLayoutPostStaticInternalVariables);
      app.ElementNumLabel.WordWrap = 'on';
      app.ElementNumLabel.FontSize = 11;
      app.ElementNumLabel.Layout.Row = 23;
      app.ElementNumLabel.Layout.Column = [1 5];
      app.ElementNumLabel.Text = 'Elements';

      % Create ElementnumbersSwitchPostStaticIntVariables
      app.ElementnumbersSwitchPostStaticIntVariables = uiswitch(app.GridLayoutPostStaticInternalVariables, 'slider');
      app.ElementnumbersSwitchPostStaticIntVariables.ValueChangedFcn = createCallbackFcn(app, @ElementnumbersSwitchPostStaticIntVariablesValueChanged, true);
      app.ElementnumbersSwitchPostStaticIntVariables.Enable = 'off';
      app.ElementnumbersSwitchPostStaticIntVariables.Layout.Row = 24;
      app.ElementnumbersSwitchPostStaticIntVariables.Layout.Column = [1 5];

      % Create NodesLabel_4
      app.NodesLabel_4 = uilabel(app.GridLayoutPostStaticInternalVariables);
      app.NodesLabel_4.WordWrap = 'on';
      app.NodesLabel_4.FontSize = 11;
      app.NodesLabel_4.Layout.Row = 25;
      app.NodesLabel_4.Layout.Column = [1 5];
      app.NodesLabel_4.Text = 'Deformed mesh';

      % Create DeformedSwitchPostStaticInternalVariables
      app.DeformedSwitchPostStaticInternalVariables = uiswitch(app.GridLayoutPostStaticInternalVariables, 'slider');
      app.DeformedSwitchPostStaticInternalVariables.ValueChangedFcn = createCallbackFcn(app, @DeformedSwitchPostStaticInternalVariablesValueChanged, true);
      app.DeformedSwitchPostStaticInternalVariables.Enable = 'off';
      app.DeformedSwitchPostStaticInternalVariables.FontSize = 11;
      app.DeformedSwitchPostStaticInternalVariables.Layout.Row = 26;
      app.DeformedSwitchPostStaticInternalVariables.Layout.Column = [1 5];

      % Create FactorEditFieldLabel_2
      app.FactorEditFieldLabel_2 = uilabel(app.GridLayoutPostStaticInternalVariables);
      app.FactorEditFieldLabel_2.HorizontalAlignment = 'center';
      app.FactorEditFieldLabel_2.FontSize = 11;
      app.FactorEditFieldLabel_2.Layout.Row = 28;
      app.FactorEditFieldLabel_2.Layout.Column = [3 4];
      app.FactorEditFieldLabel_2.Text = 'Factor';

      % Create FactorEditFieldPostStaticInternalVariables
      app.FactorEditFieldPostStaticInternalVariables = uieditfield(app.GridLayoutPostStaticInternalVariables, 'numeric');
      app.FactorEditFieldPostStaticInternalVariables.ValueChangedFcn = createCallbackFcn(app, @FactorEditFieldPostStaticInternalVariablesValueChanged, true);
      app.FactorEditFieldPostStaticInternalVariables.FontSize = 11;
      app.FactorEditFieldPostStaticInternalVariables.Enable = 'off';
      app.FactorEditFieldPostStaticInternalVariables.Layout.Row = 28;
      app.FactorEditFieldPostStaticInternalVariables.Layout.Column = [1 2];
      app.FactorEditFieldPostStaticInternalVariables.Value = 1;

      % Create OriginalmeshCheckBoxPostStaticInternalVariables
      app.OriginalmeshCheckBoxPostStaticInternalVariables = uicheckbox(app.GridLayoutPostStaticInternalVariables);
      app.OriginalmeshCheckBoxPostStaticInternalVariables.ValueChangedFcn = createCallbackFcn(app, @OriginalmeshCheckBoxPostStaticInternalVariablesValueChanged, true);
      app.OriginalmeshCheckBoxPostStaticInternalVariables.Enable = 'off';
      app.OriginalmeshCheckBoxPostStaticInternalVariables.Text = 'Original mesh';
      app.OriginalmeshCheckBoxPostStaticInternalVariables.Layout.Row = 27;
      app.OriginalmeshCheckBoxPostStaticInternalVariables.Layout.Column = [1 5];

      % Create PostStaticNodalforcesTab
      app.PostStaticNodalforcesTab = uitab(app.PostStaticPostStaticTabGroup);
      app.PostStaticNodalforcesTab.Title = 'Nodal forces';
      app.PostStaticNodalforcesTab.ButtonDownFcn = createCallbackFcn(app, @PostStaticNodalforcesTabButtonDown, true);

      % Create GridLayoutPostStaticNodalForces
      app.GridLayoutPostStaticNodalForces = uigridlayout(app.PostStaticNodalforcesTab);
      app.GridLayoutPostStaticNodalForces.ColumnWidth = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
      app.GridLayoutPostStaticNodalForces.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
      app.GridLayoutPostStaticNodalForces.ColumnSpacing = 2;
      app.GridLayoutPostStaticNodalForces.RowSpacing = 2;
      app.GridLayoutPostStaticNodalForces.Padding = [8 5 8 5];
      app.GridLayoutPostStaticNodalForces.BackgroundColor = [1 1 1];

      % Create UIAxesPostStaticNodalForces
      app.UIAxesPostStaticNodalForces = uiaxes(app.GridLayoutPostStaticNodalForces);
      xlabel(app.UIAxesPostStaticNodalForces, 'X')
      ylabel(app.UIAxesPostStaticNodalForces, 'Y')
      zlabel(app.UIAxesPostStaticNodalForces, 'Z')
      app.UIAxesPostStaticNodalForces.View = [60 30];
      app.UIAxesPostStaticNodalForces.GridColor = [0.8 0.8 0.8];
      app.UIAxesPostStaticNodalForces.XGrid = 'on';
      app.UIAxesPostStaticNodalForces.YGrid = 'on';
      app.UIAxesPostStaticNodalForces.ZGrid = 'on';
      app.UIAxesPostStaticNodalForces.FontSize = 11;
      app.UIAxesPostStaticNodalForces.Layout.Row = [2 27];
      app.UIAxesPostStaticNodalForces.Layout.Column = [7 47];

      % Create ViewsPostStaticNodalforces
      app.ViewsPostStaticNodalforces = uibuttongroup(app.GridLayoutPostStaticNodalForces);
      app.ViewsPostStaticNodalforces.SelectionChangedFcn = createCallbackFcn(app, @ViewsPostStaticNodalforcesSelectionChanged, true);
      app.ViewsPostStaticNodalforces.Enable = 'off';
      app.ViewsPostStaticNodalforces.Title = 'Views';
      app.ViewsPostStaticNodalforces.Layout.Row = [1 14];
      app.ViewsPostStaticNodalforces.Layout.Column = [1 5];

      % Create View1PostStaticNodalforces
      app.View1PostStaticNodalforces = uiradiobutton(app.ViewsPostStaticNodalforces);
      app.View1PostStaticNodalforces.Text = '+X+Y+Z';
      app.View1PostStaticNodalforces.Position = [10 222 66 22];
      app.View1PostStaticNodalforces.Value = true;

      % Create View2PostStaticNodalforces
      app.View2PostStaticNodalforces = uiradiobutton(app.ViewsPostStaticNodalforces);
      app.View2PostStaticNodalforces.Text = '+Y-X+Z';
      app.View2PostStaticNodalforces.Position = [10 196 66 22];

      % Create View3PostStaticNodalforces
      app.View3PostStaticNodalforces = uiradiobutton(app.ViewsPostStaticNodalforces);
      app.View3PostStaticNodalforces.Text = '-X-Y+Z';
      app.View3PostStaticNodalforces.Position = [10 170 66 22];

      % Create View4PostStaticNodalforces
      app.View4PostStaticNodalforces = uiradiobutton(app.ViewsPostStaticNodalforces);
      app.View4PostStaticNodalforces.Text = '-Y+X+Z';
      app.View4PostStaticNodalforces.Position = [10 144 66 22];

      % Create View5PostStaticNodalforces
      app.View5PostStaticNodalforces = uiradiobutton(app.ViewsPostStaticNodalforces);
      app.View5PostStaticNodalforces.Text = '+X+Z';
      app.View5PostStaticNodalforces.Position = [10 118 66 22];

      % Create View6PostStaticNodalforces
      app.View6PostStaticNodalforces = uiradiobutton(app.ViewsPostStaticNodalforces);
      app.View6PostStaticNodalforces.Text = '-X+Z';
      app.View6PostStaticNodalforces.Position = [10 92 66 22];

      % Create View7PostStaticNodalforces
      app.View7PostStaticNodalforces = uiradiobutton(app.ViewsPostStaticNodalforces);
      app.View7PostStaticNodalforces.Text = '+Y+Z';
      app.View7PostStaticNodalforces.Position = [10 66 66 22];

      % Create View8PostStaticNodalforces
      app.View8PostStaticNodalforces = uiradiobutton(app.ViewsPostStaticNodalforces);
      app.View8PostStaticNodalforces.Text = '-Y+Z';
      app.View8PostStaticNodalforces.Position = [10 40 66 22];

      % Create View9PostStaticNodalforces
      app.View9PostStaticNodalforces = uiradiobutton(app.ViewsPostStaticNodalforces);
      app.View9PostStaticNodalforces.Text = '+X+Y';
      app.View9PostStaticNodalforces.Position = [10 14 66 22];

      % Create ReactionsButtonPostStaticNodalforces
      app.ReactionsButtonPostStaticNodalforces = uibutton(app.GridLayoutPostStaticNodalForces, 'push');
      app.ReactionsButtonPostStaticNodalforces.ButtonPushedFcn = createCallbackFcn(app, @ReactionsButtonPostStaticNodalforcesPushed, true);
      app.ReactionsButtonPostStaticNodalforces.FontSize = 11;
      app.ReactionsButtonPostStaticNodalforces.Enable = 'off';
      app.ReactionsButtonPostStaticNodalforces.Layout.Row = 16;
      app.ReactionsButtonPostStaticNodalforces.Layout.Column = [1 3];
      app.ReactionsButtonPostStaticNodalforces.Text = 'Reactions';

      % Create NodesLabel_5
      app.NodesLabel_5 = uilabel(app.GridLayoutPostStaticNodalForces);
      app.NodesLabel_5.WordWrap = 'on';
      app.NodesLabel_5.FontSize = 11;
      app.NodesLabel_5.Layout.Row = 27;
      app.NodesLabel_5.Layout.Column = [1 5];
      app.NodesLabel_5.Text = 'Nodes';

      % Create NodenumbersSwitchPostStaticNodalForces
      app.NodenumbersSwitchPostStaticNodalForces = uiswitch(app.GridLayoutPostStaticNodalForces, 'slider');
      app.NodenumbersSwitchPostStaticNodalForces.ValueChangedFcn = createCallbackFcn(app, @NodenumbersSwitchPostStaticNodalForcesValueChanged, true);
      app.NodenumbersSwitchPostStaticNodalForces.Enable = 'off';
      app.NodenumbersSwitchPostStaticNodalForces.FontSize = 11;
      app.NodenumbersSwitchPostStaticNodalForces.Layout.Row = 28;
      app.NodenumbersSwitchPostStaticNodalForces.Layout.Column = [1 5];

      % Create FEALABTruss11Panel_2
      app.FEALABTruss11Panel_2 = uipanel(app.GridLayout6);
      app.FEALABTruss11Panel_2.ForegroundColor = [0.9412 0.9412 0.9412];
      app.FEALABTruss11Panel_2.BorderType = 'none';
      app.FEALABTruss11Panel_2.Title = 'FEALAB/Truss 1.1';
      app.FEALABTruss11Panel_2.BackgroundColor = [0.4667 0.4784 0.5882];
      app.FEALABTruss11Panel_2.Layout.Row = [1 27];
      app.FEALABTruss11Panel_2.Layout.Column = [44 48];
      app.FEALABTruss11Panel_2.FontSize = 11;

      % Create GridLayout3_2
      app.GridLayout3_2 = uigridlayout(app.FEALABTruss11Panel_2);
      app.GridLayout3_2.ColumnWidth = {'1x', '1x', '1x', '1x', '1x', '1x', '1x'};
      app.GridLayout3_2.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
      app.GridLayout3_2.ColumnSpacing = 5;
      app.GridLayout3_2.RowSpacing = 8;
      app.GridLayout3_2.Padding = [5 5 5 5];
      app.GridLayout3_2.BackgroundColor = [0.4667 0.4784 0.5882];

      % Create ExportresultsButtonPostStatic
      app.ExportresultsButtonPostStatic = uibutton(app.GridLayout3_2, 'push');
      app.ExportresultsButtonPostStatic.ButtonPushedFcn = createCallbackFcn(app, @ExportresultsButtonPostStaticPushed, true);
      app.ExportresultsButtonPostStatic.Enable = 'off';
      app.ExportresultsButtonPostStatic.Layout.Row = 1;
      app.ExportresultsButtonPostStatic.Layout.Column = [2 6];
      app.ExportresultsButtonPostStatic.Text = 'Export results';

      % Create TABSnapshotButtonPostStatic
      app.TABSnapshotButtonPostStatic = uibutton(app.GridLayout3_2, 'push');
      app.TABSnapshotButtonPostStatic.ButtonPushedFcn = createCallbackFcn(app, @TABSnapshotButtonPostStaticPushed, true);
      app.TABSnapshotButtonPostStatic.Layout.Row = 2;
      app.TABSnapshotButtonPostStatic.Layout.Column = [2 6];
      app.TABSnapshotButtonPostStatic.Text = 'TAB Snapshot';

      % Create RoundtodigitsPostStatic
      app.RoundtodigitsPostStatic = uibuttongroup(app.GridLayout3_2);
      app.RoundtodigitsPostStatic.SelectionChangedFcn = createCallbackFcn(app, @RoundtodigitsPostStaticSelectionChanged, true);
      app.RoundtodigitsPostStatic.Enable = 'off';
      app.RoundtodigitsPostStatic.BorderType = 'none';
      app.RoundtodigitsPostStatic.Title = 'Round to digits';
      app.RoundtodigitsPostStatic.BackgroundColor = [0.902 0.902 0.902];
      app.RoundtodigitsPostStatic.Layout.Row = [9 16];
      app.RoundtodigitsPostStatic.Layout.Column = [2 6];
      app.RoundtodigitsPostStatic.FontSize = 11;

      % Create Digits1nf
      app.Digits1nf = uiradiobutton(app.RoundtodigitsPostStatic);
      app.Digits1nf.Text = '1';
      app.Digits1nf.FontSize = 9;
      app.Digits1nf.Position = [8 226 29 15];

      % Create Digits2nf
      app.Digits2nf = uiradiobutton(app.RoundtodigitsPostStatic);
      app.Digits2nf.Text = '2';
      app.Digits2nf.FontSize = 9;
      app.Digits2nf.Position = [8 206 29 15];

      % Create Digits3nf
      app.Digits3nf = uiradiobutton(app.RoundtodigitsPostStatic);
      app.Digits3nf.Text = '3';
      app.Digits3nf.FontSize = 9;
      app.Digits3nf.Position = [8 186 29 15];

      % Create Digits4nf
      app.Digits4nf = uiradiobutton(app.RoundtodigitsPostStatic);
      app.Digits4nf.Text = '4';
      app.Digits4nf.FontSize = 9;
      app.Digits4nf.Position = [8 166 29 15];

      % Create Digits5nf
      app.Digits5nf = uiradiobutton(app.RoundtodigitsPostStatic);
      app.Digits5nf.Text = '5';
      app.Digits5nf.FontSize = 9;
      app.Digits5nf.Position = [8 146 29 15];

      % Create Digits6nf
      app.Digits6nf = uiradiobutton(app.RoundtodigitsPostStatic);
      app.Digits6nf.Text = '6';
      app.Digits6nf.FontSize = 9;
      app.Digits6nf.Position = [8 126 29 15];

      % Create Digits0nf
      app.Digits0nf = uiradiobutton(app.RoundtodigitsPostStatic);
      app.Digits0nf.Text = '0';
      app.Digits0nf.FontSize = 9;
      app.Digits0nf.Position = [8 246 29 15];

      % Create Digits7nf
      app.Digits7nf = uiradiobutton(app.RoundtodigitsPostStatic);
      app.Digits7nf.Text = '7';
      app.Digits7nf.FontSize = 9;
      app.Digits7nf.Position = [8 106 29 15];

      % Create Digits8nf
      app.Digits8nf = uiradiobutton(app.RoundtodigitsPostStatic);
      app.Digits8nf.Text = '8';
      app.Digits8nf.FontSize = 9;
      app.Digits8nf.Position = [8 86 29 15];

      % Create Digits9nf
      app.Digits9nf = uiradiobutton(app.RoundtodigitsPostStatic);
      app.Digits9nf.Text = '9';
      app.Digits9nf.FontSize = 9;
      app.Digits9nf.Position = [8 66 29 15];

      % Create Digit10nf
      app.Digit10nf = uiradiobutton(app.RoundtodigitsPostStatic);
      app.Digit10nf.Text = '10';
      app.Digit10nf.FontSize = 9;
      app.Digit10nf.Position = [8 46 29 15];
      app.Digit10nf.Value = true;

      % Create AboutTab
      app.AboutTab = uitab(app.TabGroupMain);
      app.AboutTab.Title = 'About';

      % Create GridLayout20
      app.GridLayout20 = uigridlayout(app.AboutTab);
      app.GridLayout20.ColumnWidth = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
      app.GridLayout20.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};

      % Create TextArea_5
      app.TextArea_5 = uitextarea(app.GridLayout20);
      app.TextArea_5.Editable = 'off';
      app.TextArea_5.Layout.Row = [1 3];
      app.TextArea_5.Layout.Column = [1 5];
      app.TextArea_5.Value = {'                        Copyright (c) 2023                     '; '                 by Alejandro Ortiz-Bernardin '; '                          aortizb@uchile.cl'; '	          https://camlab.cl/alejandro/'; '							   '; '         Department of Mechanical Engineering                        '; '         Universidad de Chile,  Santiago, CHILE                        '; '						'; '   Computational and Applied Mechanics Laboratory,'; '        Facultad de Ciencias Físicas y Matemáticas,'; '            Universidad de Chile, Santiago, CHILE'; '                        All Rights Reserved.'};

      % Create TextArea_6
      app.TextArea_6 = uitextarea(app.GridLayout20);
      app.TextArea_6.Editable = 'off';
      app.TextArea_6.Layout.Row = [4 7];
      app.TextArea_6.Layout.Column = [1 5];
      app.TextArea_6.Value = {'LICENSE'; '-------------'; 'This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.'; ''; 'This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.'; ''; 'You should have received a copy of the GNU General Public License along with this program.  If not, see <https://www.gnu.org/licenses/>. '};

      % Create TabGroupOutput
      app.TabGroupOutput = uitabgroup(app.GridLayout);
      app.TabGroupOutput.Layout.Row = [23 27];
      app.TabGroupOutput.Layout.Column = [1 48];

      % Create MessagesTabOutput
      app.MessagesTabOutput = uitab(app.TabGroupOutput);
      app.MessagesTabOutput.Title = 'Messages';

      % Create GridLayout4
      app.GridLayout4 = uigridlayout(app.MessagesTabOutput);
      app.GridLayout4.RowHeight = {'1x'};
      app.GridLayout4.ColumnSpacing = 2;
      app.GridLayout4.RowSpacing = 2;
      app.GridLayout4.Padding = [0 0 0 0];
      app.GridLayout4.BackgroundColor = [0.4667 0.4784 0.5882];

      % Create MessagesTextArea
      app.MessagesTextArea = uitextarea(app.GridLayout4);
      app.MessagesTextArea.Editable = 'off';
      app.MessagesTextArea.Layout.Row = 1;
      app.MessagesTextArea.Layout.Column = [1 2];

      % Create SummaryTabOutput
      app.SummaryTabOutput = uitab(app.TabGroupOutput);
      app.SummaryTabOutput.Title = 'Summary';

      % Create GridLayout15
      app.GridLayout15 = uigridlayout(app.SummaryTabOutput);
      app.GridLayout15.RowHeight = {'1x'};
      app.GridLayout15.ColumnSpacing = 2;
      app.GridLayout15.RowSpacing = 2;
      app.GridLayout15.Padding = [0 0 0 0];

      % Create Label
      app.Label = uilabel(app.GridLayout15);
      app.Label.HorizontalAlignment = 'right';
      app.Label.Layout.Row = 1;
      app.Label.Layout.Column = 1;
      app.Label.Text = '';

      % Create SummaryTextAreaTabOutput
      app.SummaryTextAreaTabOutput = uitextarea(app.GridLayout15);
      app.SummaryTextAreaTabOutput.Editable = 'off';
      app.SummaryTextAreaTabOutput.Layout.Row = 1;
      app.SummaryTextAreaTabOutput.Layout.Column = [1 2];

      % Create NodesTabOutput
      app.NodesTabOutput = uitab(app.TabGroupOutput);
      app.NodesTabOutput.Title = 'Nodes';

      % Create GridLayout17
      app.GridLayout17 = uigridlayout(app.NodesTabOutput);
      app.GridLayout17.RowHeight = {'1x'};
      app.GridLayout17.ColumnSpacing = 2;
      app.GridLayout17.RowSpacing = 2;
      app.GridLayout17.Padding = [0 0 0 0];

      % Create UITableNodesTabOutput
      app.UITableNodesTabOutput = uitable(app.GridLayout17);
      app.UITableNodesTabOutput.ColumnName = {'Node'; 'x'; 'y'; 'z'};
      app.UITableNodesTabOutput.RowName = {};
      app.UITableNodesTabOutput.Layout.Row = 1;
      app.UITableNodesTabOutput.Layout.Column = [1 2];

      % Create ElementsTabOutput
      app.ElementsTabOutput = uitab(app.TabGroupOutput);
      app.ElementsTabOutput.Title = 'Elements';

      % Create GridLayout16
      app.GridLayout16 = uigridlayout(app.ElementsTabOutput);
      app.GridLayout16.RowHeight = {'1x'};
      app.GridLayout16.ColumnSpacing = 2;
      app.GridLayout16.RowSpacing = 2;
      app.GridLayout16.Padding = [0 0 0 0];

      % Create UITableElementsTabOutput
      app.UITableElementsTabOutput = uitable(app.GridLayout16);
      app.UITableElementsTabOutput.ColumnName = {'Element'; 'node 1'; 'node 2'; 'Area'; 'Young''s modulus'};
      app.UITableElementsTabOutput.RowName = {};
      app.UITableElementsTabOutput.Layout.Row = 1;
      app.UITableElementsTabOutput.Layout.Column = [1 2];

      % Create SupportsTabOutput
      app.SupportsTabOutput = uitab(app.TabGroupOutput);
      app.SupportsTabOutput.Title = 'Supports';

      % Create GridLayout18
      app.GridLayout18 = uigridlayout(app.SupportsTabOutput);
      app.GridLayout18.RowHeight = {'1x'};
      app.GridLayout18.ColumnSpacing = 2;
      app.GridLayout18.RowSpacing = 2;
      app.GridLayout18.Padding = [0 0 0 0];

      % Create UITableSupportsTabOutput
      app.UITableSupportsTabOutput = uitable(app.GridLayout18);
      app.UITableSupportsTabOutput.ColumnName = {'Node'; 'x-disp'; 'x-fix?'; 'y-disp'; 'y-fix?'; 'z-disp'; 'z-fix?'};
      app.UITableSupportsTabOutput.RowName = {};
      app.UITableSupportsTabOutput.Layout.Row = 1;
      app.UITableSupportsTabOutput.Layout.Column = [1 2];

      % Create LoadsTabOutput
      app.LoadsTabOutput = uitab(app.TabGroupOutput);
      app.LoadsTabOutput.Title = 'Loads';

      % Create GridLayout19
      app.GridLayout19 = uigridlayout(app.LoadsTabOutput);
      app.GridLayout19.RowHeight = {'1x'};
      app.GridLayout19.ColumnSpacing = 2;
      app.GridLayout19.RowSpacing = 2;
      app.GridLayout19.Padding = [0 0 0 0];

      % Create UITableLoadsTabOutput
      app.UITableLoadsTabOutput = uitable(app.GridLayout19);
      app.UITableLoadsTabOutput.ColumnName = {'Node'; 'x-load'; 'y-load'; 'z-load'};
      app.UITableLoadsTabOutput.RowName = {};
      app.UITableLoadsTabOutput.Layout.Row = 1;
      app.UITableLoadsTabOutput.Layout.Column = [1 2];

      % Create DisplacementsTabOutput
      app.DisplacementsTabOutput = uitab(app.TabGroupOutput);
      app.DisplacementsTabOutput.Title = 'Displacements';

      % Create GridLayout11
      app.GridLayout11 = uigridlayout(app.DisplacementsTabOutput);
      app.GridLayout11.RowHeight = {'1x'};
      app.GridLayout11.ColumnSpacing = 2;
      app.GridLayout11.RowSpacing = 2;
      app.GridLayout11.Padding = [0 0 0 0];

      % Create UITableNodalDisplacementsTabOutput
      app.UITableNodalDisplacementsTabOutput = uitable(app.GridLayout11);
      app.UITableNodalDisplacementsTabOutput.BackgroundColor = [1 1 1;0.9412 0.9412 0.9412];
      app.UITableNodalDisplacementsTabOutput.ColumnName = {'Node'; 'Ux'; 'Uy'; 'Uz'; 'U total'};
      app.UITableNodalDisplacementsTabOutput.RowName = {};
      app.UITableNodalDisplacementsTabOutput.Enable = 'off';
      app.UITableNodalDisplacementsTabOutput.Layout.Row = 1;
      app.UITableNodalDisplacementsTabOutput.Layout.Column = [1 2];
      app.UITableNodalDisplacementsTabOutput.FontSize = 11;

      % Create InternalvariablesTabOutput
      app.InternalvariablesTabOutput = uitab(app.TabGroupOutput);
      app.InternalvariablesTabOutput.Title = 'Internal variables';

      % Create GridLayout12
      app.GridLayout12 = uigridlayout(app.InternalvariablesTabOutput);
      app.GridLayout12.RowHeight = {'1x'};
      app.GridLayout12.ColumnSpacing = 2;
      app.GridLayout12.RowSpacing = 2;
      app.GridLayout12.Padding = [0 0 0 0];

      % Create UITableEleIntVariablesTabOutput
      app.UITableEleIntVariablesTabOutput = uitable(app.GridLayout12);
      app.UITableEleIntVariablesTabOutput.BackgroundColor = [1 1 1;0.9412 0.9412 0.9412];
      app.UITableEleIntVariablesTabOutput.ColumnName = {'Element'; 'Strain'; 'Stress'; 'Force'};
      app.UITableEleIntVariablesTabOutput.RowName = {};
      app.UITableEleIntVariablesTabOutput.Enable = 'off';
      app.UITableEleIntVariablesTabOutput.Layout.Row = 1;
      app.UITableEleIntVariablesTabOutput.Layout.Column = [1 2];
      app.UITableEleIntVariablesTabOutput.FontSize = 11;

      % Create NodalforcesTabOutput
      app.NodalforcesTabOutput = uitab(app.TabGroupOutput);
      app.NodalforcesTabOutput.Title = 'Nodal forces';

      % Create GridLayout13
      app.GridLayout13 = uigridlayout(app.NodalforcesTabOutput);
      app.GridLayout13.RowHeight = {'1x'};
      app.GridLayout13.ColumnSpacing = 2;
      app.GridLayout13.RowSpacing = 2;
      app.GridLayout13.Padding = [0 0 0 0];

      % Create UITableNodalForcesTabOutput
      app.UITableNodalForcesTabOutput = uitable(app.GridLayout13);
      app.UITableNodalForcesTabOutput.BackgroundColor = [1 1 1;0.9412 0.9412 0.9412];
      app.UITableNodalForcesTabOutput.ColumnName = {'Node'; 'Fx (force)'; 'Fy (force)'; 'Fz (force)'; 'Rx (reaction)'; 'Ry (reaction)'; 'Rz (reaction)'};
      app.UITableNodalForcesTabOutput.RowName = {};
      app.UITableNodalForcesTabOutput.Enable = 'off';
      app.UITableNodalForcesTabOutput.Layout.Row = 1;
      app.UITableNodalForcesTabOutput.Layout.Column = [1 2];
      app.UITableNodalForcesTabOutput.FontSize = 11;

      % Show the figure after all components are created
      app.FeaLabTrussUIFigure.Visible = 'on';
    end
  end

  % App creation and deletion
  methods (Access = public)

    % Construct app
    function app = fealab_truss_1_1

      % Create UIFigure and components
      createComponents(app)

      % Register the app with App Designer
      registerApp(app, app.FeaLabTrussUIFigure)

      % Execute the startup function
      runStartupFcn(app, @startupFcn)

      if nargout == 0
        clear app
      end
    end

    % Code that executes before app deletion
    function delete(app)

      % Delete UIFigure when app is deleted
      delete(app.FeaLabTrussUIFigure)
    end
  end
end