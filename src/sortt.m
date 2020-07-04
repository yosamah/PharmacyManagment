%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
%Function Name: sortt.
%Parameters (In):Array. 
%Return (Out): Table after sorting.
%Description: The function is used to sort an array.
function table=sortt(table)
[row,col]=size(table); 
for i=1:row
    for j=i+1:row
        if table(i)>table(j)
            for k=1:col
                %Calling swap function to change the places of two numbers.
               [table(i,k),table(j,k)]=swap(table(i,k),table(j,k)); 
            end    
        end
    end
end
end