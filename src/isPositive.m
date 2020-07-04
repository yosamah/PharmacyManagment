%Pharmacy Management System, Yomna Osama Hussein AboBaker, ID:1190203
%                            Email:yomna.osamma@gmail.com.
%Function Name: isPositive.
%Parameters (In): Input message. 
%Return (Out): Status if the entered number is positive or not.
%Description: The function is used to know if the entered number is
%             positive or not.
function status=isPositive(num,s)
num = str2double(num);
disp(class(num));
disp(num);
    if(num == 0)
        status = 0;
    else
        if(num > 0)
            status = 1;
        else
            status = 0;
        end
        if s==1 && num>100
            status = 0;
        end
            
    end
end