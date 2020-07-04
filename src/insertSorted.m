%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
%Function Name: insertSorted.
%Parameters (In):Array and a new row. 
%Return (Out): Table after sorting the new row.
%Description: The function is used to sort an added row to an sorted array.
function table=insertSorted(table,nums)
[r,c]=size(table);
for k=1:length(nums)
        table(r+1,k)=nums(k);
end
[r,c]=size(table);
for i=r:-1:2
    if table(i,1)<table(i-1,1)
        for j=1:length(nums)
            [table(i,j),table(i-1,j)]=swap(table(i,j),table(i-1,j));
        end
    else
        break;
    end
end
end