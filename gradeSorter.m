%This code will categorize students' final marks according to their number
%values

x= [73 92 65 41 37 80 67 54 90 82 85 69 76 74 82 87 69 78 85];
letterGrade = strings([1, length(x)]);
disp('Final Mark  Letter Grade')
disp(' ')
for i = 1:length(x)
   if x(i) >= 90
       letterGrade(i) = 'A+';
   elseif x(i) >= 80
       letterGrade(i) = 'A';
   elseif x(i) >= 75
       letterGrade(i) = 'B+';
   elseif x(i) >= 68
       letterGrade(i) = 'B';
   elseif x(i) >= 60
       letterGrade(i) = 'C+';
   elseif x(i) >= 50
       letterGrade(i) = 'C';
   elseif x(i) >= 40
       letterGrade(i) = 'D';
   elseif x(i) < 40
       letterGrade(i) = 'F';
   end
end
disp([x', letterGrade'])