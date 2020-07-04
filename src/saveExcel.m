%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
%Function Name: saveExcel.
%Parameters (In): Chosen table number. 
%Return (Out): No outputs.
%Description: The function is used to save an array 'table' to an excel 
%             sheet.
function saveExcel(saveTableChoice)
    global table1; 
    global table2; 
    global table3;
    filePath=getFilePath;
    [r1,c1]=size(table1);
    [r2,c2]=size(table2);
    [r3,c3]=size(table3);
    if filePath~=0
        if saveTableChoice==1
            if r1~=0
                 xlswrite(filePath,{'Drug ID','Price'},'sheet1','A1');
                xlswrite(filePath,table1,'sheet1','A2');
                msgbox('Saved Successfully!');
            else
                msgbox('Sorry No Data To Save');
            end
        elseif saveTableChoice==2
            if r2~=0
                 xlswrite(filePath,{'DrugID ','DrugPrice','DrugNum'},'sheet1','A1');
                xlswrite(filePath,table2,'sheet1','A2');
                msgbox('Saved Successfully!');
            else
                msgbox('Sorry No Data To Save');
            end
        elseif saveTableChoice==3
            if r3~=0
                xlswrite(filePath,{'CustomerID','Drug ID','Discount '},'sheet1','A1');
                xlswrite(filePath,table3,'sheet1','A2');
                msgbox('Saved Successfully!');
            else
                msgbox('Sorry No Data To Save');
            end
        end
    else
        msgbox('Error Enter File Name');
    end
end