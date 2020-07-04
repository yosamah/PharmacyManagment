%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
%Function Name: addRow2Col.
%Parameters (In):Array and two messages. 
%Return (Out): Array '2 columns' after adding a new row.
%Description: The function is used to add a new row.
function table=addRow2Col(table,msg1,msg2)
[r,c]=size(table);
table(r+1,1)=input(msg1);
table(r+1,2)=input(msg2);
end