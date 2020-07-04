%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
%Function Name: saveExcelFile.
%Parameters (In): Chosen table.
%Return (Out): No outputs.
%Description: The function is used to save an array 'table' to an excel 
%             sheet if the file path is entered.
function saveExcelFile(table)
    filePath=getFilePath;
    if filePath~=0
        xlswrite(filePath,table)
        msgbox('Saved Successfully!');
    else
        msgbox('Error! Enter file name');
    end
end