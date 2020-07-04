%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
%Function Name: swap.
%Parameters (In):Two variables. 
%Return (Out): Two variables after changing their values.
%Description: The function is used to replace the places of two values.
function [firstNum,secondNum]=swap(firstNum,secondNum)
%To store the value of first variable.
 container=firstNum; 
 firstNum=secondNum;
 secondNum=container;
end