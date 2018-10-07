function varargout = fourier_reko(varargin)
% FOURIER_REKO MATLAB code for fourier_reko.fig
%      FOURIER_REKO, by itself, creates a new FOURIER_REKO or raises the existing
%      singleton*.
%
%      H = FOURIER_REKO returns the handle to a new FOURIER_REKO or the handle to
%      the existing singleton*.
%
%      FOURIER_REKO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FOURIER_REKO.M with the given input arguments.
%
%      FOURIER_REKO('Property','Value',...) creates a new FOURIER_REKO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fourier_reko_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fourier_reko_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fourier_reko

% Last Modified by GUIDE v2.5 06-Oct-2018 23:26:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fourier_reko_OpeningFcn, ...
                   'gui_OutputFcn',  @fourier_reko_OutputFcn, ...
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




% --- Executes just before fourier_reko is made visible.
function fourier_reko_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fourier_reko (see VARARGIN)

% Choose default command line output for fourier_reko
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fourier_reko wait for user response (see UIRESUME)
% uiwait(handles.figure1);

handles.fn = [zeros(1,250) ones(1,500) zeros(1,250)];
handles.current_edit_value = get(handles.slider1,'value');

handles.x = 0:1:999;

set(handles.edit1,'string',handles.current_edit_value);
guidata(hObject, handles);

[ak,bk] = fourieranalyse(handles.fn, handles.current_edit_value);
plot(handles.x,fouriersynthese(1000, ak, bk),handles.x,handles.fn)


% --- Outputs from this function are returned to the command line.
function varargout = fourier_reko_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
func_index = get(hObject,'value');
func_items = get(hObject,'String');
selected_item = func_items{func_index};

switch selected_item
    case 'Rechteck'
       handles.fn =  [zeros(1,250) ones(1,500) zeros(1,250)];
    case 'Sägezahn'
       handles.fn = [zeros(1,250), 0:1/499:1 zeros(1,250)];
    case 'Dreieck'
       handles.fn = [zeros(1,199) 0:1/300:1-1/300 1 1-1/300:-1/300:0 zeros(1,200)];
    case 'Einheitsimpuls'
       handles.fn = [zeros(1,499) 1 zeros(1,500)] ;
end
guidata(hObject, handles);

[ak,bk] = fourieranalyse(handles.fn, handles.current_edit_value);
plot(handles.x,fouriersynthese(1000, ak, bk),handles.x,handles.fn)



% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.edit1,'string',round(get(handles.slider1,'value')));
handles.current_edit_value = get(handles.slider1,'value');
guidata(hObject, handles);

[ak,bk] = fourieranalyse(handles.fn, handles.current_edit_value);
plot(handles.x,fouriersynthese(1000, ak, bk),handles.x,handles.fn)




% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
N = str2double(get(handles.edit1,'string'));
if N == round(N) && N >= 0 && N <= 499 
    M = int16(N);
    set(handles.edit1,'string',num2str(M));
    handles.current_edit_value = str2num(get(handles.edit1,'string'));
    guidata(hObject, handles);
else
    set(handles.edit1,'string',num2str(handles.current_edit_value));
end

[ak,bk] = fourieranalyse(handles.fn, handles.current_edit_value);
plot(handles.x,fouriersynthese(1000, ak, bk),handles.x,handles.fn)




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
