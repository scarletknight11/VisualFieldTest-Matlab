%prompt = 'What is the original value? ';
%x = input(prompt)
%y = x*10

x = [1, 2, 3, 4, 5, 6, 7];
y = [1, 0.9, 0.75, 0.8, 0.85, 0.88, 0.87];
%plot(x,y)



%plot data
plot(x,y)

% Axes Labels
xlabel('# of Trial')
ylabel('Contrast Level')
% Add Legend
%legend({'Data Name'}, 'Location','northwest')
% Axis Limits
axis([0 7 0 1])