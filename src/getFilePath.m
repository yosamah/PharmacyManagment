%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
%Function Name: getFilePath.
%Parameters (In): No inputs . 
%Return (Out):The chosen file path.
%Description: This function is used to take the file path of a file to save
%             it in.
function filePath=getFilePath
[file,path] = uigetfile('*.xlsx');
if file==0
    filePath=0;
else
    filePath = fullfile(path,file);
end
end