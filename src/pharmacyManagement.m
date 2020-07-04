%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
function varargout = pharmacyManagement(varargin)
% PHARMACYMANAGEMENT M-file for pharmacyManagement.fig
%      PHARMACYMANAGEMENT, by itself, creates a new PHARMACYMANAGEMENT or raises the existing
%      singleton*.
%
%      H = PHARMACYMANAGEMENT returns the handle to a new PHARMACYMANAGEMENT or the handle to
%      the existing singleton*.
%
%      PHARMACYMANAGEMENT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PHARMACYMANAGEMENT.M with the given input arguments.
%
%      PHARMACYMANAGEMENT('Property','Value',...) creates a new PHARMACYMANAGEMENT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before pharmacyManagement_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to pharmacyManagement_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help pharmacyManagement

% Last Modified by GUIDE v2.5 17-May-2020 23:29:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @pharmacyManagement_OpeningFcn, ...
                   'gui_OutputFcn',  @pharmacyManagement_OutputFcn, ...
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


% --- Executes just before pharmacyManagement is made visible.
function pharmacyManagement_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to pharmacyManagement (see VARARGIN)

% Choose default command line output for pharmacyManagement
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

set(handles.figure1, 'Name', 'MISR PHARMACY');
% UIWAIT makes pharmacyManagement wait for user response (see UIRESUME)
% uiwait(handles.figure1);
int();

% --- Outputs from this function are returned to the command line.
function varargout = pharmacyManagement_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in addRow.
function addRow_Callback(hObject, eventdata, handles)
% hObject    handle to addRow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in loadTable.
global addRowChoice;
if addRowChoice==1
    addRow1GUI();
elseif addRowChoice==2
    addRow2GUI();
elseif addRowChoice==3
    Gui1();
end
   

function loadTable_Callback(hObject, eventdata, handles)
% hObject    handle to loadTable (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in saveTable.
global loadTableChoice;

loadExcel(loadTableChoice);

function saveTable_Callback(hObject, eventdata, handles)
% hObject    handle to saveTable (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in dispTable.
global saveTableChoice;
saveExcel(saveTableChoice);

function dispTable_Callback(hObject, eventdata, handles)
% hObject    handle to dispTable (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in orderedDrugs.
global dispTableChoice;
displayTable(dispTableChoice);
function orderedDrugs_Callback(hObject, eventdata, handles)
% hObject    handle to orderedDrugs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[returnn,computedTable]=orderedDrugsTable(1);


% --- Executes on button press in extraDiscount.
function extraDiscount_Callback(hObject, eventdata, handles)
% hObject    handle to extraDiscount (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in drugsNumber.
[status,extraDiscountTable]=extraDiscount(1);
function drugsNumber_Callback(hObject, eventdata, handles)
% hObject    handle to drugsNumber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in addRowChoice.
[status,numberDrugsTable]=numberDrugs(1);
function addRowChoice_Callback(hObject, eventdata, handles)
% hObject    handle to addRowChoice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns addRowChoice contents as cell array
%        contents{get(hObject,'Value')} returns selected item from addRowChoice


% --- Executes during object creation, after setting all properties.
global addRowChoice;
addRowChoice=get(hObject,'Value');
function addRowChoice_CreateFcn(hObject, eventdata, handles)
% hObject    handle to addRowChoice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in loadTableChoice.
function loadTableChoice_Callback(hObject, eventdata, handles)
% hObject    handle to loadTableChoice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns loadTableChoice contents as cell array
%        contents{get(hObject,'Value')} returns selected item from loadTableChoice


% --- Executes during object creation, after setting all properties.
global loadTableChoice;
loadTableChoice=get(hObject,'value');
function loadTableChoice_CreateFcn(hObject, eventdata, handles)
% hObject    handle to loadTableChoice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in saveTableChoice.
function saveTableChoice_Callback(hObject, eventdata, handles)
% hObject    handle to saveTableChoice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns saveTableChoice contents as cell array
%        contents{get(hObject,'Value')} returns selected item from saveTableChoice


% --- Executes during object creation, after setting all properties.
global saveTableChoice;
saveTableChoice=get(hObject,'value');
function saveTableChoice_CreateFcn(hObject, eventdata, handles)
% hObject    handle to saveTableChoice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in dispTableChoice.
function dispTableChoice_Callback(hObject, eventdata, handles)
% hObject    handle to dispTableChoice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns dispTableChoice contents as cell array
%        contents{get(hObject,'Value')} returns selected item from dispTableChoice


% --- Executes during object creation, after setting all properties.
global dispTableChoice;
dispTableChoice=get(hObject,'value');
function dispTableChoice_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dispTableChoice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in saveView1.
function saveView1_Callback(hObject, eventdata, handles)
% hObject    handle to saveView1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in saveView2.
[returnn,computedTable]=orderedDrugsTable(0);
if returnn()
    saveExcelFile(computedTable);
end

function saveView2_Callback(hObject, eventdata, handles)
% hObject    handle to saveView2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[status,extraDiscountTable]=extraDiscount(0);
if status()
    saveExcelFile(extraDiscountTable);
end



% --- Executes on button press in saveView3.
function saveView3_Callback(hObject, eventdata, handles)
% hObject    handle to saveView3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[status,numberDrugsTable]=numberDrugs(0);
if status()
    saveExcelFile(numberDrugsTable);
end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
axes(hObject);
imshow('pharmacy.jpg');


% --- Executes during object creation, after setting all properties.
function image_CreateFcn(hObject, eventdata, handles)
% hObject    handle to image (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate image
axes(hObject);
imshow('pharmacyy.jpg');


% --- Executes on button press in clc.
function clc_Callback(hObject, eventdata, handles)
% hObject    handle to clc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in exit.
global table1;
global table2;
global table3;
table1=[]; table2=[]; table3=[];
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

closereq();
