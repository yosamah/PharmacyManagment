%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
%Function Name: extraDiscount.
%Parameters (In): Number to know if the user wants to display this table
%                 or another function wants the computed table only. 
%Return (Out): Status and computedTable.
%Description: The function is used to compute a table of extra discount 
%             using 3 tables 'Customer ID','PricePre','PriceCur',
%             'ExtraDiscount' ,'PriceDisount'(5 columns).
function [status,computedTable]=extraDiscount(number)
global table2;
computedTable=[];
[r1,c1]=size(table2);
[statuss,table4]=orderedDrugsTable(0);
if length(table4)~=0 && r1~=0
    [r4,c4]=size(table4);
    for i=1:r1
        sum(i)=0;
        for j=1:r4
            if table2(i,1)==table4(j,1);
                sum(i)=sum(i)+table4(j,4);
            end
        end
        computedTable(i,1)=table2(i,1);
        computedTable(i,2)=table2(i,2);
        computedTable(i,3)=sum(i);
        [priceAfter,discount]=calcDiscount(sum(i));
        computedTable(i,4)=discount;
        computedTable(i,5)=priceAfter;
    end
    computedTable=sortt(computedTable);
    if number()
        dispTableGUI(computedTable);
    end
    status=1;
else
        msgbox('Table 3 must contain data to compute this table');
   
    status=0;
end
end