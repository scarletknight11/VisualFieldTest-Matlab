loop = 1;
xcor = [5, 3, 7];
ycor = [2, 3, 4];
maxreversal = 3;
step = 0.05;

previouscontrastlevel = ones(1,length(xcor));
reversals = cell(1,length(xcor));
previousresponse = cell(1,length(xcor));
for i=1:length(xcor)
    previousresponse{i} = 'yes';
end
%creating visual field tests, 4 different stair cases, hard code coordinates
while loop == 1
   ind=randsample(length(xcor), 1);
   %only go into staircase if number of reversal at current target location
   %less then or equal to max revs
   if (length(reversals{ind}) <= maxreversal)
        s = staircase(previouscontrastlevel(ind), previousresponse{ind}, xcor(ind), ycor(ind), step);
        previouscontrastlevel(ind) = s.contrastlevel;
        previousresponse{ind} = s.response;
        reversals{ind} =  cat(1, reversals{ind},s.reversal);
   end
     
   %end program if length of all the reversals are greater equal to max at
   %every locations, use for loop to calculate length of all reversals and
   %if statement to check lengths > max
   %all reversals
   %end
   for i=1:length(xcor)
        if length(reversals(i:length(xcor))) >= maxreversal
            break
        end
   end
end

%calculate mean of all reversals at every locations
%use for loop
%for i=1:length(xcor)
%    if length(reversals(i:length(xcor))) == maxreversal
%    end
%end