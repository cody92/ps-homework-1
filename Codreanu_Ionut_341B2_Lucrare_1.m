
clear all
clc
prompt = 'Alege una din teme(1,2,3)!';
result = str2num(input(prompt,'s'));
%todo validate input result to be a number
while result ~= 1 && result ~= 2 && result ~= 3
	prompt = 'Alege una din teme(1,2,3)!';
	result = str2num(input(prompt,'s'));
end

switch result
	case 1
		homework1();
	case 2
		homework2();
	case 3
		homework3();
	otherwise
		disp('Invalid!');
end