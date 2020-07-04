%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
%Function Name: addRow1.
%Parameters (In):Array. 
%Return (Out): Array after adding a new row.
%Description: The function is used to add a new row after sorting the table
%             and make sure that the entered value 'ID' is not repeated and
%             if repeated, ask the user if he want to change this ID or
%             to update data in this row.
function table=addRow1(table)
if length(table)~=0
    table=sortt(table);
    Row1(1)=enterPositive('Enter Drug ID: ');
    [i,c]=search(table,Row1(1));
    [Row1(1),index,k]=change(i,c,table,Row1(1));
    Row1(2)=enterPositive('Enter Drug Price: ');
    if k==1
       table(index,1)=Row1(1);
        table(index,2)=Row1(2);
    else
        table=insertSorted(table,Row1);
    end
else
    table(1,1)=enterPositive('Enter Drug ID: ');
    table(1,2)=enterPositive('Enter Drug Price: ');
end
disp(table);
end