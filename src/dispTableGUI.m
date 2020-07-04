%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
%Function Name: dispTableGUI.
%Parameters (In): Table. 
%Return (Out): No outputs.
%Description: The function is used display a table in a figure in GUI.
function dispTableGUI(table)
    f = figure;
    uitable(f,'Data',table,'Position',[0,0,400,400]);
end