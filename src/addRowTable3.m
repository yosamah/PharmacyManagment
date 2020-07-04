%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
function varargout = addRowTable3(varargin)
% ADDROWTABLE3 M-file for addRowTable3.fig
%      ADDROWTABLE3, by itself, creates a new ADDROWTABLE3 or raises the existing
%      singleton*.
%
%      H = ADDROWTABLE3 returns the handle to a new ADDROWTABLE3 or the handle to
%      the existing singleton*.
%
%      ADDROWTABLE3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ADDROWTABLE3.M with the given input arguments.
%
%      ADDROWTABLE3('Property','Value',...) creates a new ADDROWTABLE3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before addRowTable3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to addRowTable3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help addRowTable3

% Last Modified by GUIDE v2.5 17-May-2020 22:27:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @addRowTable3_OpeningFcn, ...
                   'gui_OutputFcn',  @addRowTable3_OutputFcn, ...
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


% --- Executes just before addRowTable3 is made visible.
function addRowTable3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to addRowTable3 (see VARARGIN)

% Choose default command line output for addRowTable3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes addRowTable3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = addRowTable3_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in add.
function add_Callback(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global table3;

custIdStatus = isPositive(get(handles.custId,'string'),0);
drugIdStatus = isPositive(get(handles.drugId,'string'),0);
discStatus   = isPositive(get(handles.disc,'string'),1);

status = drugIdStatus & custIdStatus &  discStatus;
if(status)
    custId = str2double(get(handles.custId,'string'));
    drugId = str2double(get(handles.drugId,'string'));
    [index,returnValue]=searchDiscout(custId,drugId);
    if returnValue()
        table3(index,3)=str2double(get(handles.disc,'string')); 
    else
        disc           = str2double(get(handles.disc,'string')); 
        addRow3Col(custId,drugId,disc);
    end
    dispTableGUI(table3);
    disp(table3);
else
    msgbox('Error Enter Positive Values');
    disp('Error Enter Positive Values');
end

function disc_Callback(hObject, eventdata, handles)
% hObject    handle to disc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of disc as text
%        str2double(get(hObject,'String')) returns contents of disc as a double


% --- Executes during object creation, after setting all properties.
function disc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to disc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


