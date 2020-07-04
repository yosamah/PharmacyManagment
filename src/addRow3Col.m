%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
%Function Name: addRow3Col.
%Parameters (In):input messages. 
%Return (Out): No Output.
%Description: The function is used to add a new row in an array '3 columns'
function addRow3Col(msg1,msg2,msg3)
global table3;
[row,column]=size(table3);
table3(row+1,1)= msg1;
table3(row+1,2)= msg2;
table3(row+1,3)= msg3;
disp(table3);
end
