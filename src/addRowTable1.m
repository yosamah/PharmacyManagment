%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
%Function Name: addRowTable1.
%Parameters (In): 2 input messages. 
%Return (Out): No Output.
%Description: The function is used to add a new row in an array '3 columns'
function addRowTable1(msg1,msg2)
global table1;
[index,found]=search(table1,msg1);
if ~found
    table1=insertSorted(table1,[msg1,msg2]);
else
    table1(index,1)= msg1;
    table1(index,2)= msg2;
end
disp(table1);
end
