%initialize matrix
matrix = [1 4 5 8 9; 3 4 5 7 9; 2 6 7 8 9; 10 9 6 3 9; 6 9 11 10 9];
% print row 3 column 1
matrix(3,1);
%extract third row in column 1 and 3
r = matrix(3,[1 3]);
%extract range of rows & columns
r = matrix(2:4,3:end);
%replace row 2 with 1
matrix(2:2,:) = 1;
%replace every element less then 5 with a negative -10
matrix(matrix < 5) = -10; 
%replace every element between 2 & 5 with -1
matrix(matrix >= 2 & matrix <= 5) = -1;

%use for loops easily
%create a vector with 20 random integers, 0 or greater
%use for loop and for each element in vector check weather less then or
%equal to 5. if less then or equal to 5, change to -1
%store result in new vector rather then replace in previous (seperate
%variable)
matrix2 = randi(10,20,1);
newvec = [];
for i=1:length(matrix2)
    if matrix2(i) <= 5
        matrix2(i) =-1;
        newvec = cat(1, newvec, matrix2(i))
    end
end

%make m2=matrix. using logical indexing change only m2, not matrix
%everywhere in matrix less then equal to 5, change to 0 in m2
m2 = matrix;
m2(m2 <= 5) = 0;

%exact same thing as for loop but using while loop
loop = 0
variable = true
while loop == 0
    if matrix2(i) <= 5
        matrix2(i) =-1
    end
end