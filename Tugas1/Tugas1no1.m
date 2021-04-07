function varargout = Tugas1no1(varargin)
% TUGAS1NO1 MATLAB code for Tugas1no1.fig
%      TUGAS1NO1, by itself, creates a new TUGAS1NO1 or raises the existing
%      singleton*.
%
%      H = TUGAS1NO1 returns the handle to a new TUGAS1NO1 or the handle to
%      the existing singleton*.
%
%      TUGAS1NO1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TUGAS1NO1.M with the given input arguments.
%
%      TUGAS1NO1('Property','Value',...) creates a new TUGAS1NO1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Tugas1no1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Tugas1no1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Tugas1no1

% Last Modified by GUIDE v2.5 07-Apr-2021 20:39:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Tugas1no1_OpeningFcn, ...
                   'gui_OutputFcn',  @Tugas1no1_OutputFcn, ...
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


% --- Executes just before Tugas1no1 is made visible.
function Tugas1no1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Tugas1no1 (see VARARGIN)

% Choose default command line output for Tugas1no1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Tugas1no1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Tugas1no1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input=get(handles.edit1,'string');
tahun=str2num(input);
if isempty(tahun)
    hasil = 'Tahun tidak boleh kosong!';
elseif (tahun == 0)
    hasil = 'Tahun tidak boleh bernilai nol!';
elseif (tahun <= 0)
    hasil = 'Tahun tidak boleh bernilai negatif!';
else
    if rem(tahun,100)==0
        if rem(tahun,400)==0
            hasil = 'Tahun yang diinputkan merupakan tahun kabisat';
        else
            hasil = 'Tahun yang diinputkan bukan tahun kabisat';
        end
    else
        if rem(tahun,4)==0
            hasil = 'Tahun yang diinputkan merupakan tahun kabisat';
        else
            hasil = 'Tahun yang diinputkan bukan tahun kabisat';
        end
    end
end
set(handles.edit2,'string',(hasil));


function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
