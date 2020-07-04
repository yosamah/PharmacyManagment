%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
%Function Name: addRow2.
%Parameters (In):Array. 
%Return (Out): Array '3 columns' after adding a new row.
%Description: The function is used to add a new row after sorting the table
%             and make sure that the entered value 'ID' is not repeated and
%             if repeated, ask the user if he want to change this ID or
%             to update data in this row.
function table=addRow2(table)
if length(table)~=0
    table=sortt(table);
    Row2(1)=enterPositive('Enter customer ID: ');
    [i,c]=search(table,Row2(1));
    [Row2(1),index,k]=change(i,c,table,Row2(1));
    Row2(2)=enterPositive('Enter amout of all drugs: ');
    Row2(3)=enterPositive('enter the total drugs of prev. orders: ');
    if k==1
       table(index,1)=Row2(1);
        table(index,2)=Row2(2);
        table(index,3)=Row2(3);
    else
        table=insertSorted(table,Row2);
    end
else
    table(1,1)=enterPositive('Enter Drug ID: ');
    table(1,2)=enterPositive('Enter Drug Price: ');
    table(1,3)=enterPositive('enter the total drugs of prev. orders: ');
end
disp(table);
end