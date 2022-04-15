%for ii = 1:10
%    disp(ii);
%end

%a = -5:5;
%for i=1:length(a)
%    disp(a(i));
%end

%a = -5:5;
%sum_a = 0;
%for i=1:length(a)
%    sum_a = sum_a + a(i);
%    disp(sum_a);
%end

%a = 1:10;
%ind = [1 4 9 3];
%sum_a = 0;

%for i = ind
%    sum_a = sum_a + a(i);
%    disp(sum_a);
%end

%b = 20:54;
%sum_vec = zeros(1,length(b));
%sum_b = 0;
%for ii = 1:length(b)
%    sum_b = sum_b + b(ii);
%    sum_vec(ii) = sum_b;
%end
%plot(sum_vec);

%bal = 1000;
%num_years = 30;
%ball_vec = zeros(1, num_years);
%for year = 1:num_years
%    bal = 1.08*bal;
%    bal_vec(year) = bal;
%end
%plot(bal_vec);
v = [3,5,4,13];

%for each element in v check whether less then 5
%if less then 5 add one to that element
%for i = 1:length(v)
%    if v(i) < 5
%        v(i) = v(i) + 1;
%    end
%end
%disp(v);

%v(v < 5) = v(v < 5) + 1 

