%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
function varargout = addRow1GUI(varargin)
% ADDROW1GUI M-file for addRow1GUI.fig
%      ADDROW1GUI, by itself, creates a new ADDROW1GUI or raises the existing
%      singleton*.
%
%      H = ADDROW1GUI returns the handle to a new ADDROW1GUI or the handle to
%      the existing singleton*.
%
%      ADDROW1GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ADDROW1GUI.M with the given input arguments.
%
%      ADDROW1GUI('Property','Value',...) creates a new ADDROW1GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before addRow1GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to addRow1GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help addRow1GUI

% Last Modified by GUIDE v2.5 16-May-2020 16:22:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @addRow1GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @addRow1GUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before addRow1GUI is made visible.
function addRow1GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to addRow1GUI (see VARARGIN)

% Choose default command line output for addRow1GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes addRow1GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = addRow1GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function drugId_Callback(hObject, eventdata, handles)
% hObject    handle to drugId (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of drugId as text
%        str2double(get(hObject,'String')) returns contents of drugId as a double


% --- Executes during object creation, after setting all properties.
function drugId_CreateFcn(hObject, eventdata, handles)
% hObject    handle to drugId (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function drugPrice_Callback(hObject, eventdata, handles)
% hObject    handle to drugPrice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of drugPrice as text
%        str2double(get(hObject,'String')) returns contents of drugPrice as a double


% --- Executes during object creation, after setting all properties.
function drugPrice_CreateFcn(hObject, eventdata, handles)
% hObject    handle to drugPrice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in add.
function add_Callback(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global table1;

drugIdStatus    = isPositive(get(handles.drugId,'string'),0);
drugPriceStatus = isPositive(get(handles.drugPrice,'string'),0);
status = drugPriceStatus & drugIdStatus ;
if(status)
    drugId    = str2double(get(handles.drugId,'string'));
    drugPrice = str2double(get(handles.drugPrice,'string'));
    addRowTable1(drugId,drugPrice);
    dispTableGUI(table1);
    disp(table1);
else
    msgbox('Error Enter Positive Values');
    disp('Error Enter Positive Values');
end

