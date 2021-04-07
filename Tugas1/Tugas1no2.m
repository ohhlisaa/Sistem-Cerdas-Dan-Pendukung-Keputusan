function varargout = Tugas1no2(varargin)
% TUGAS1NO2 MATLAB code for Tugas1no2.fig
%      TUGAS1NO2, by itself, creates a new TUGAS1NO2 or raises the existing
%      singleton*.
%
%      H = TUGAS1NO2 returns the handle to a new TUGAS1NO2 or the handle to
%      the existing singleton*.
%
%      TUGAS1NO2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TUGAS1NO2.M with the given input arguments.
%
%      TUGAS1NO2('Property','Value',...) creates a new TUGAS1NO2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Tugas1no2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Tugas1no2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Tugas1no2

% Last Modified by GUIDE v2.5 07-Apr-2021 23:13:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Tugas1no2_OpeningFcn, ...
                   'gui_OutputFcn',  @Tugas1no2_OutputFcn, ...
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


% --- Executes just before Tugas1no2 is made visible.
function Tugas1no2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Tugas1no2 (see VARARGIN)

% Choose default command line output for Tugas1no2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Tugas1no2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Tugas1no2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function panjang_Callback(hObject, eventdata, handles)
% hObject    handle to panjang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of panjang as text
%        str2double(get(hObject,'String')) returns contents of panjang as a double

panjang = str2double(get(hObject, 'String'));
if isnan(panjang)
    set(handles.lebar,'Enable','off'); 
    set(hObject, 'String', '');
    errordlg('Panjang harus diisi dengan angka!','Ada yang salah ?');
elseif (panjang <= 0)
    set(handles.lebar,'Enable','off');
    set(hObject, 'String', '');
    errordlg('Panjang tidak boleh nol!','Ada yang salah ?'); 
elseif isempty(panjang)
    set(handles.lebar,'Enable','off'); 
    errordlg('Panjang tidak boleh kosong!','Ada yang salah ?');
else
    set(handles.lebar,'Enable','on');
end


% --- Executes during object creation, after setting all properties.
function panjang_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panjang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lebar_Callback(hObject, eventdata, handles)
% hObject    handle to lebar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lebar as text
%        str2double(get(hObject,'String')) returns contents of lebar as a double

lebar = str2double(get(hObject, 'String'));
if isnan(lebar)set(handles.tinggi,'Enable','off'); 
    set(hObject, 'String', '');
    errordlg('Lebar harus diisi dengan angka!','Ada yang salah ?');
elseif (lebar <= 0)set(handles.tinggi,'Enable','off'); 
    set(hObject, 'String', '');
    errordlg('Lebar tidak boleh nol!','Ada yang salah ?');
elseif isempty(lebar)
    set(handles.tinggi,'Enable','off');  
    errordlg('Lebar tidak boleh kosong!','Ada yang salah ?'); 
else
    set(handles.tinggi,'Enable','on'); 
end


% --- Executes during object creation, after setting all properties.
function lebar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lebar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tinggi_Callback(hObject, eventdata, handles)
% hObject    handle to tinggi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tinggi as text
%        str2double(get(hObject,'String')) returns contents of tinggi as a double

tinggi = str2double(get(hObject, 'String'));
if isnan(tinggi)
    set(handles.volumebalok,'Enable','off');
    set(handles.luasbalok,'Enable','off');
    set(hObject, 'String', '');
    errordlg('Tinggi harus diisi dengan angka!','Ada yang salah ?');
elseif (tinggi <= 0)
    set(handles.volumebalok,'Enable','off'); 
    set(handles.luasbalok,'Enable','off'); 
    set(hObject, 'String', '');
    errordlg('Tinggi tidak boleh nol!','Ada yang salah ?');
elseif isempty(tinggi)
    set(handles.volumebalok,'Enable','off'); 
    set(handles.luasbalok,'Enable','off');   
    errordlg('Tinggi tidak boleh kosong!','Ada yang salah ?');
else
    set(handles.volumebalok,'Enable','on');
    set(handles.luasbalok,'Enable','on');
end


% --- Executes during object creation, after setting all properties.
function tinggi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tinggi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in tmbl_reset.
function tmbl_reset_Callback(hObject, eventdata, handles)
% hObject    handle to tmbl_reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

selection=questdlg(['Anda yakin ingin mereset semua data ini',' ?'],...
    ['bertanya' '' '...'],...
    'Ya','Batal','Ya');
if strcmp(selection,'Batal')
    return
end
set(handles.hasil_teks, 'String', '');
set(handles.hasil, 'String', '');
set(handles.panjang, 'String', '');
set(handles.lebar, 'String', '');
set(handles.tinggi, 'String', '');
set(handles.lebar, 'Enable', 'off');
set(handles.tinggi, 'Enable', 'off');
set(handles.volumebalok, 'Enable', 'off');
set(handles.luasbalok, 'Enable', 'off');
set(handles.volumebalok, 'Value', 0);
set(handles.luasbalok, 'Value', 0);

% --- Executes on button press in tmbl_keluar.
function tmbl_keluar_Callback(hObject, eventdata, handles)
% hObject    handle to tmbl_keluar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

selection=questdlg(['Anda Yakin Ingin Menutup Aplikasi',' ?'],...
    ['bertanya' '' '...'],...
    'Ya','Batal','Ya');
if strcmp(selection,'Batal')
    return
end
close;


% --- Executes when selected object is changed in panel_pilih.
function panel_pilih_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in panel_pilih 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

p=str2num(get(handles.panjang, 'String'));
l=str2num(get(handles.lebar, 'String'));
t=str2num(get(handles.tinggi, 'String'));
luas=2*((p*l)+(p*t)+(l*t));
volume=p*l*t;
if (hObject == handles.volumebalok)
    set(handles.hasil_teks, 'String', 'Volume Balok');
    set(handles.hasil, 'String', volume);
else
    set(handles.hasil_teks, 'String', 'Luas Balok');
    set(handles.hasil, 'String', luas);
end


% --- Executes on button press in volumebalok.
function volumebalok_Callback(hObject, eventdata, handles)
% hObject    handle to volumebalok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of volumebalok


% --- Executes on button press in luasbalok.
function luasbalok_Callback(hObject, eventdata, handles)
% hObject    handle to luasbalok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of luasbalok


% --------Kode untuk validasi data (reset)
function initialize_gui(fig_handle, handles, isreset)
if isfield(handles, 'metricdata') && ~isreset
    return;
end
guidata(handles. LuasVolumeBalok, handles);
