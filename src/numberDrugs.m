%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
%Function Name: numberDrugs.
%Parameters (In): Number to display the table or not. 
%Return (Out): status abnnd computedTable.
%Description: The function is used to compute a table of number drugs
%             using 2 tables 'Drug ID','NumDrugs','Price'
%             '3' columns and if there is no data in table 1 and 2 status
%             becomes 0.
function [status,computedTable]=numberDrugs(number)
global table1; global table3;
computedTable=[];
[r1,c1]=size(table1);
[r2,c2]=size(table3);
if r2~=0 && r1~=0
    for i=1:r1
        c=0;
        for j=1:r2
            if table1(i,1)==table3(j,2)
                c=c+1;
            end
        end
        computedTable(i,1)=table1(i,1);
        computedTable(i,2)=c;
        computedTable(i,3)=c*table1(i,2);
    end
    computedTable=sortt(computedTable);
    disp(computedTable);
    if number()
        dispTableGUI(computedTable);
    end
    status=1;
else
        msgbox('Table 1 and Table 3 must contain data to compute this table');
   
    status=0;
end

end
