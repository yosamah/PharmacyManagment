%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
%Function Name: calcDiscount.
%Parameters (In): Price before discount. 
%Return (Out): Price after discount and discount precentage.
%Description: The function is used to calculate the price after account 
%             and discount precentage. 
function [priceAfter,discount]=calcDiscount(price)
if price>1000
    discount=25;
    priceAfter=75*price/100;
elseif price>500
    discount=20;
    priceAfter=80*price/100;
elseif price>300
    discount=15;
    priceAfter=85*price/100;
elseif price>150
    discount=10;
    priceAfter=90*price/100;
elseif price>100
    discount=5;
    priceAfter=95*price/100;
else
    discount=0;
    priceAfter=price;
end
end