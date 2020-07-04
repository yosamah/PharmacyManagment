%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
%Function Name: Search.
%Parameters (In): Array and the entered number. 
%Return (Out): 'number=1'when the input is repeated and the index if
%               repeated.
%Description: The function is used to search if there is two values equal
%             in the same column and to know the index of the first value 
%             repeated.
function [index,number]=search(array,entNum)
[row,col]=size(array);
index=row;
number=0;
if length(array)~=0
    %while loop ends when x is greater than or equal an element in array %
    while ((array(index)>entNum) && index~=1)
        index=index-1;
    end
    if array(index)==entNum
      %to know if there is an repeated element
      number=number+1; 
    end
end