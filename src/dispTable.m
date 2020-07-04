%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
%Function Name: dispTable.
%Parameters (In): No inputs. 
%Return (Out): No outputs.
%Description: The function is used display a table in the coomand window or
%             in an excel sheet after asking the user.
function dispTable
[fileName,tableNum]=chooseName;
if tableNum==1
    fprintf('Drug ID  Price\n');
    table=xlsread(fileName);
    disp(table);
elseif tableNum==2
     fprintf('Customer ID PriceDrug NumDrugs \n');
      table=xlsread(fileName);
      disp(table);
elseif tableNum==3
    fprintf('Customer ID  Drugs ID  Discount\n');
     table=xlsread(fileName);
     disp(table);
end
end