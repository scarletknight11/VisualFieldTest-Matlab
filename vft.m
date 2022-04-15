%call group functions from vft
%get mean of all reversals

loop = 1;
xcor = [5, 3, 7];
ycor = [2, 3, 4];

grp = [1, 2, 1];
maxreversal = 3;
step = 0.05;
avg = zeros(1,length(xcor));

previouscontrastlevel = ones(1,length(xcor));
reversals = cell(1,length(xcor));
previousresponse = cell(1,length(xcor));

g = group(previouscontrastlevel, previousresponse, reversals,...
    maxreversal, xcor, ycor, step);

for i=1:length(xcor)
    %want all the reversal at ith location
    %one we have all those reversals at ith location, get average of all
    %store avgs into vector arrays
    avg(i) = mean(g.reversals{i});
end

%IMAGINE 2 GROUPS, 2 designate the group create variable
%xcor set x and ycor is set of y coordinates
%vector of 1's and 2's to speicify which group vectors are stored in
%seperate vector that specifies group 1 and group 2
%store all results from each group

for i=1:length(unique(grp))
    xcor1 = xcor(grp(i)== 1)

end
%output the order in which coordinate was presented
% one vector for xcor and other vector for ycoordinate, third vector for
% group number, 4th one is averages
% put 4 in a structure, like output of staircase
