constrastlevel = 1;
step = 0.05 ;
lastresponse = 'yes';
reversal = [];
maxreversal = 5;
%creating visual field tests, 4 different stair cases, hard code coordinates
while maxreversal > length(reversal)
    prompt2 = "The constrast level presented is: " + constrastlevel + ", Can you see? ";
    x2 = input(prompt2, 's');
    if ~strcmp(x2, 'yes') && ~strcmp(x2, 'no')
         disp('Invalid Input');
         
    elseif(~strcmp(lastresponse, x2)) 
          reversal = cat(1,reversal, constrastlevel);
          disp(reversal);
    end
    if strcmp(x2, 'yes') 
        constrastlevel = constrastlevel - step;
    elseif strcmp(x2, 'no')
        constrastlevel = constrastlevel + step;
    end
    if strcmp(x2, 'yes') || strcmp(x2, 'no')
        lastresponse = x2;
    end
    if constrastlevel > 1
        constrastlevel = 1;
    end
    if constrastlevel == 1 && strcmp(x2, 'no')
          disp("Estimated Threshold is 1")
          return;
    end  
end
%estimate threshold & find mean of reversal
disp("Estimated Threshold is " + mean(reversal));