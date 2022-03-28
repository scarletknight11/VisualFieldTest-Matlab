function out = staircase(previouscontrastlevel, previousresponse, xcor, ycor, step)

% Arguments
% constrast level
% response
% step size
% xcor
% ycor

loop = 1;
reversal = [];


if strcmp(previousresponse, 'yes')
    newcontrastlevel = previouscontrastlevel - step;
    prompt2 = "The constrast level presented is: " + newcontrastlevel + " Coordinates " + xcor + "," + ycor + " Can you see? ";
elseif strcmp(previousresponse, 'no')
    newcontrastlevel = previouscontrastlevel + step;
    prompt2 = "The constrast level presented is: " + newcontrastlevel + " Coordinates " + xcor + "," + ycor + " Can you see? ";
end

while loop == 1
    %after run function
    newresponse = input(prompt2, 's');
    invalid = 0;
    if ~strcmp(newresponse, 'yes') && ~strcmp(newresponse, 'no')
        disp('Invalid Input');
        invalid = 1;
    end
    if invalid == 0
        if(~strcmp(newresponse, previousresponse))
            reversal = cat(1, reversal, newcontrastlevel);
            disp(reversal);
        end
        loop = 0;
    end
end
out.contrastlevel = newcontrastlevel;
out.response = newresponse;
out.reversal = reversal;