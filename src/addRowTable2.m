%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
%Function Name: addRowTable2.
%Parameters (In): 3 input messages. 
%Return (Out): No Output.
%Description: The function is used to add a new row in an array '3 columns'
function addRowTable2(msg1,msg2,msg3)
global table2;
[index,found]=search(table2,msg1);
if ~found
    table2=insertSorted(table2,[msg1,msg2,msg3]);
else
    table2(index,1)= msg1;
    table2(index,2)= msg2;
    table2(index,3)= msg3;
end
disp(table2);
end
