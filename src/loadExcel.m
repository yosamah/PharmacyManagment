%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
%Function Name: loadExcel.
%Parameters (In):Chosen table. 
%Return (Out): No Outputs.
%Description: The function is used to load data from an excel sheet of
%             chosen table.
function loadExcel(loadTableChoice)
global table1;
global table2;
global table3;
filePath=getFilePath;
if filePath~=0
    table=xlsread(filePath);
    [r,c]=size(table);
    if r~=0
        if loadTableChoice==1
            if c==2
                [r1,c1]=size(table1);
                for i=1:r
                    for j=1:c
                    table1(r1+i,j)=table(i,j);
                    end
                end
                table1=sortt(table1);
                dispTableGUI(table1);
                disp(table1);
                msgbox('loaded successfully');
            else
                msgbox('Error! Table 1 contains 2 columns only');
            end
        elseif loadTableChoice==2
            if c==3
                [r1,c1]=size(table2);
                for i=1:r
                    for j=1:c
                    table2(r1+i,j)=table(i,j);
                    end
                end
                table2=sortt(table2);
                dispTableGUI(table2);
                disp(table2);
                 msgbox('loaded successfully');
            else
                msgbox('Error! Table 2 contains 3 columns only');
            end
        elseif loadTableChoice==3
            if c==3
                [r1,c1]=size(table3);
                for i=1:r
                    for j=1:c
                    table3(r1+i,j)=table(i,j);
                    end
                end
                table3=sortt(table3);
                dispTableGUI(table);
                disp(table3);
                msgbox('loaded successfully');
            else
                 msgbox('Error! Table 3 contains 3 columns only');
            end
        end
    else
        msgbox(' Sorry No Data To Load ');
    end
else
    msgbox('Error Enter File Name');
end
end