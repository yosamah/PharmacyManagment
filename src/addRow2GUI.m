%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
function varargout = addRow2GUI(varargin)
% ADDROW2GUI M-file for addRow2GUI.fig
%      ADDROW2GUI, by itself, creates a new ADDROW2GUI or raises the existing
%      singleton*.
%
%      H = ADDROW2GUI returns the handle to a new ADDROW2GUI or the handle to
%      the existing singleton*.
%
%      ADDROW2GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ADDROW2GUI.M with the given input arguments.
%
%      ADDROW2GUI('Property','Value',...) creates a new ADDROW2GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before addRow2GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to addRow2GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help addRow2GUI

% Last Modified by GUIDE v2.5 16-May-2020 15:39:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @addRow2GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @addRow2GUI_OutputFcn, ...
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


% --- Executes just before addRow2GUI is made visible.
function addRow2GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to addRow2GUI (see VARARGIN)

% Choose default command line output for addRow2GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes addRow2GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = addRow2GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function custId_Callback(hObject, eventdata, handles)
% hObject    handle to custId (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of custId as text
%        str2double(get(hObject,'String')) returns contents of custId as a double


% --- Executes during object creation, after setting all properties.
function custId_CreateFcn(hObject, eventdata, handles)
% hObject    handle to custId (see GCBO)
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



function drugNum_Callback(hObject, eventdata, handles)
% hObject    handle to drugNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of drugNum as text
%        str2double(get(hObject,'String')) returns contents of drugNum as a double


% --- Executes during object creation, after setting all properties.
function drugNum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to drugNum (see GCBO)
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
global table2;
custIdStatus    = isPositive(get(handles.custId,'string'),0);
drugPriceStatus = isPositive(get(handles.drugPrice,'string'),0);
drugNumStatus   = isPositive(get(handles.drugNum,'string'),0);
status = drugPriceStatus & custIdStatus &  drugNumStatus;
if(status)
    custId    = str2double(get(handles.custId,'string'));
    drugPrice = str2double(get(handles.drugPrice,'string'));
    drugNum   = str2double(get(handles.drugNum,'string')); 
    addRowTable2(custId,drugPrice,drugNum);
    dispTableGUI(table2);
    disp(table2);
else
    msgbox('Error Enter Positive Values');
    disp('Error Enter Positive Values');
end


