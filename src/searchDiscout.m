%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
function [index,status]=searchDiscout(custId,drugId)
global table3
[row3,col3]=size(table3);
for i=1:row3
        if custId==table3(i,1) && drugId==table3(i,2)
            status=1;
            index=i;
        else
            status=0;
            index=0;
        end
end
end