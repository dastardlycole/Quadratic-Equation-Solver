%% Quadratic Equation Solver App
%%Setting up while loop and clearing any previously opened result
g=0;
while g==0
clear; 
clc;
close all;
clear sound;


%% Welcome Message and Start Button
  % code to play pre-recorded sound located in our file
[y,Fs] = audioread('welcomesound.m4a');
sound(y,Fs);
pause(5)
[y,Fs] = audioread('songg.mp3');
sound(y,Fs);
% Name of Program
disp('Quadratic Equation Solver')

 button = questdlg('Welcome to the Quadratic Equation Solver','Welcome','Start','Start');
 

 
%% Asking for values of a,b and c then using them to find the roots
clear sound
[y,Fs] = audioread('sound1.m4a');
sound(y,Fs);
        a=input('What is the coefficient of x squared?','s');
        %turn any number input to double
a=str2double(a);
%while and if loops for invalid entries from the user
 while isnan(a)||a==0||~isreal(a)
     if isnan(a)
         % clears any sound playing
         clear sound 
         %% failure message
         [y,Fs] = audioread('sound12.m4a');
sound(y,Fs);
     disp('Not a number. Try again');
     pause(1)
     [y,Fs] = audioread('sound1.m4a');
sound(y,Fs);
        a=input('What is the coefficient of x squared?','s');
     a=str2double(a);
     elseif a==0
         clear sound
         [y,Fs] = audioread('sound13.m4a');
sound(y,Fs);
         disp('The coefficient of x squared cannot be 0. Try again');
     pause(2)
     [y,Fs] = audioread('sound1.m4a');
sound(y,Fs);
        a=input('What is the coefficient of x squared?','s');
     a=str2double(a);
     else
     clear sound
     [y,Fs] = audioread('sound14.m4a');
sound(y,Fs);
     disp('Please input a real number. Try again');
     pause(1)
     [y,Fs] = audioread('sound1.m4a');
sound(y,Fs);
        a=input('What is the coefficient of x squared?','s');
     a=str2double(a);
     end
 end
 clear sound
 [y,Fs] = audioread('sound2.m4a');
sound(y,Fs);
 b=input('What is the coefficient of x?','s');
 b=str2double(b);
 while isnan(b)||~isreal(b)
     if isnan(b)
     clear sound
         [y,Fs] = audioread('sound12.m4a');
sound(y,Fs);
     disp('Not a number. Try again');
     pause(1)
 [y,Fs] = audioread('sound2.m4a');
sound(y,Fs);
 b=input('What is the coefficient of x?','s');
 b=str2double(b);
     else
          clear sound
     [y,Fs] = audioread('sound14.m4a');
sound(y,Fs);
     disp('Please input a real number. Try again');
     pause(1)
 [y,Fs] = audioread('sound2.m4a');
sound(y,Fs);
 b=input('What is the coefficient of x?','s');
 b=str2double(b);
     end
 end
 clear sound
 [y,Fs] = audioread('sound3.m4a');
sound(y,Fs);
 c=input('What is the constant?','s');
 c=str2double(c);
 while isnan(c)||~isreal(c)
     if isnan(c)
     clear sound
         [y,Fs] = audioread('sound12.m4a');
sound(y,Fs);
     disp('Not a number. Try again');
     pause(1)
 [y,Fs] = audioread('sound3.m4a');
sound(y,Fs);
 c=input('What is the constant?','s');
 c=str2double(c);
     else
         clear sound
     [y,Fs] = audioread('sound14.m4a');
sound(y,Fs);
     disp('Please input a real number. Try again');
     pause(1)
 [y,Fs] = audioread('sound3.m4a');
sound(y,Fs);
 c=input('What is the constant?','s');
 c=str2double(c);
     end
 end
%% equation of the roots and output to user through command window
x1=(-b+sqrt((b.^2)-(4*a*c)))/2*a;
x2=(-b-sqrt((b.^2)-(4*a*c)))/2*a;

% determining the type,number and values of roots
    if (b.^2)-(4*a*c)>0
        clear sound
        [y,Fs] = audioread('sound4.m4a');
sound(y,Fs);
    fprintf('The equation has 2 real roots\n x1 is: %.2f and x2 is: %.2f\n',x1,x2)
    elseif (b.^2)-(4*a*c)==0
        clear sound
        [y,Fs] = audioread('sound5.m4a');
sound(y,Fs);
      fprintf('The equation has 1 real repeated root\n x1 and x2 are:%.2f\n',x1')  
    else
        clear sound
        [y,Fs] = audioread('sound6.m4a');
sound(y,Fs);
        fprintf('The equation has no real roots\n')
    end
    pause(5)
    disp('NOTE: The more points we plot, The smoother the graph')
    [y,Fs] = audioread('sound7.m4a');
sound(y,Fs); 
pause(8)
%% Asking for min, max and increment/step for range of values to be plotted
%for real roots (we can't do this for imaginary)
if (b.^2)-(4*a*c)~=0
%determining bigger and smaller root to check roots are within range 
if x1>x2
    broot=x1;
    sroot=x2;
elseif x1<x2
    broot=x2;
    sroot=x1 ;
else
    broot=x1;
    sroot=x1;
end
end

clear sound
[y,Fs] = audioread('sound8.m4a');
sound(y,Fs);
Min=input('What is the minimum value?','s');
Min=str2double(Min);
 while isnan(Min)||sroot<=Min||~isreal(Min)
     if isnan(Min)
     clear sound
         [y,Fs] = audioread('sound12.m4a');
sound(y,Fs);
     disp('Not a number. Try again');
     pause(1)
[y,Fs] = audioread('sound8.m4a');
sound(y,Fs);
Min=input('What is the minimum value?','s');
Min=str2double(Min);
     elseif sroot<=Min
         clear sound
         [y,Fs] = audioread('sound17.m4a');
sound(y,Fs);
     disp('Minimum should be less than than the smaller root');
     pause(1.5)
[y,Fs] = audioread('sound8.m4a');
sound(y,Fs);
Min=input('What is the minimum value?','s');
Min=str2double(Min);
     else
         clear sound
     [y,Fs] = audioread('sound14.m4a');
sound(y,Fs);
     disp('Please input a real number. Try again');
     pause(1)
[y,Fs] = audioread('sound8.m4a');
sound(y,Fs);
Min=input('What is the minimum value?','s');
Min=str2double(Min);
     end
 end
 clear sound
 [y,Fs] = audioread('sound9.m4a');
sound(y,Fs);
Max=input('What is the maximum value?','s');
Max=str2double(Max);
 while isnan(Max)||~isreal(Max)||broot>=Max||Min>=Max
     if isnan(Max)
     clear soundclear sound
         [y,Fs] = audioread('sound12.m4a');
sound(y,Fs);
     disp('Not a number. Try again');
     pause(1)
 [y,Fs] = audioread('sound9.m4a');
sound(y,Fs);
Max=input('What is the maximum value?','s');
Max=str2double(Max);
     elseif ~isreal(Max)
         clear sound
     [y,Fs] = audioread('sound14.m4a');
sound(y,Fs);
     disp('Please input a real number. Try again');
     pause(1)
 [y,Fs] = audioread('sound9.m4a');
sound(y,Fs);
Max=input('What is the maximum value?','s');
Max=str2double(Max);
     elseif broot>=Max
         clear sound
         [y,Fs] = audioread('sound18.m4a');
sound(y,Fs);
     disp('Maximum should be greater than the bigger root');
     pause(1)
[y,Fs] = audioread('sound9.m4a');
sound(y,Fs);
Max=input('What is the maximum value?','s');
Max=str2double(Max);
     else
          clear sound
          [y,Fs] = audioread('sound15.m4a');
sound(y,Fs);
          disp('The Maximum value has to be higher than the minimum value')
          pause(1)
 [y,Fs] = audioread('sound9.m4a');
sound(y,Fs);
Max=input('What is the maximum value?','s');
Max=str2double(Max);
     end
 end
 clear sound
 [y,Fs] = audioread('sound10.m4a');
sound(y,Fs);
N=input('What is the difference between each value?','s');
N=str2double(N);
 while isnan(N)||N==0||~isreal(N)||N>(Max-Min)/20
     if isnan(N)
     clear sound
         [y,Fs] = audioread('sound12.m4a');
sound(y,Fs);
     disp('Not a number. Try again');
     pause(1)
 [y,Fs] = audioread('sound10.m4a');
sound(y,Fs);
N=input('What is the difference between each value?','s');
N=str2double(N);
     elseif ~isreal(N)
         clear sound
     [y,Fs] = audioread('sound14.m4a');
sound(y,Fs);
disp('Please input a real number. Try again');
pause(1)
 [y,Fs] = audioread('sound10.m4a');
sound(y,Fs);
N=input('What is the difference between each value?','s');
N=str2double(N);
elseif N>(Max-Min)/100
         clear sound
     [y,Fs] = audioread('sound16.m4a');
sound(y,Fs);
disp('Step is too high. Try again');
pause(1.5)
 [y,Fs] = audioread('sound10.m4a');
sound(y,Fs);
N=input('What is the difference between each value?','s');
N=str2double(N);
     else
          clear sound
         [y,Fs] = audioread('sound13.m4a');
sound(y,Fs);
         disp('The difference between each value cannot be 0. Try again');
     pause(2)
 [y,Fs] = audioread('sound10.m4a');
sound(y,Fs);
N=input('What is the difference between each value?','s');
N=str2double(N);
     end
 end
 
% constructing a vector using the data
x=[Min:N:Max];
% finding corresponding values of y
y=[(a*(x.^2))+(b*x)+c];

%% Plotting the graph
k=figure('Name','Quadratic Equation Solver App','NumberTitle','off');
plot(x,y,'r')
% giving title,label,background color, setting axislocation to origin etc
set(gca,'Color','y','XAxisLocation','origin','YAxisLocation','origin')
%switching on grid
grid on
title('Graph of the Quadratic Equation')
xlabel('Values of x')
ylabel('Values of y')
% hold on to ensure scatter plot of roots is on the same axes
hold on
%size of markers in scatter plot
sz=100;
%%creating scatter plot showing roots if real and labelling them
 if (b.^2)-(4*a*c)>=0
scatter(x1,0,sz,c,'filled')
text(x1,0,'x1')
scatter(x2,0,sz,c,'filled')
text(x2,0,'x2')
 end
 %%creating legend showing equation of graph
quadratic=sprintf('%dx^{2}+%dx+%d',a,b,c);
legend(quadratic)
%%closing message
clear sound
[y,Fs] = audioread('sound11.m4a');
sound(y,Fs);
pause(10)
[y,Fs] = audioread('songg.mp3');
sound(y,Fs);

%% dialogue box asking to restart app
choice = questdlg('Should we solve another?','Restart','Yes','Nah', 'Yes');
if choice=='Yes'
    %setting g to 0 to fulfill while loop condition
    g=0;
else
    %changing value of g to fail while loop condition
    disp('Thank You For Using My App')
    g=1;
    uiwait(k)
    clear sound
end
end