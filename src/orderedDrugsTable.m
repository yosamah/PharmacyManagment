%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
%Function Name: orderedDrugsTable.
%Parameters (In): No outputs. 
%Return (Out): Status and computedTable.
%Description: The function is used to compute a table of ordered drugs.
function [status,computedTable]=orderedDrugsTable(number)
global table1;
global table3;
computedTable=[];
[r1,c1]=size(table1);
[r3,c3]=size(table3);
k=1;
if r1~=0 && r3~=0
    for i=1:r1
        for j=1:r3
            if table1(i,1)==table3(j,2)
                ID1(k)=i;
                ID2(k)=j;
                k=k+1;
            end
        end
    end
    for l=1:k-1
        computedTable(l,1)=table3(ID2(l),1);
        computedTable(l,2)=table3(ID2(l),2);
        computedTable(l,3)=table1(ID1(l),2);
        computedTable(l,4)=table1(ID1(l),2)*(100-table3(ID2(l),3))/100;
    end
    computedTable=sortt(computedTable);
    if number()
        dispTableGUI(computedTable);
    end
    status=1;
else
    msgbox('Table 1 and Table 2 must contain data to compute this table');
    status=0;
end
end