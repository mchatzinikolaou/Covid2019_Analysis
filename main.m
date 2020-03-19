##Author : Michalis Chatzinikolaou , S.ID 2011030111
##Undergraduate student: E.C.E department , T.U.Crete, Greece.

clear all;
close all;
clc;


TOTAL_DAYS = 365;

S0=10740000; %initial healthy population
I0=3;        %initial infected population   
R0=0;        %initial resolved population (Dead + Recovered)

a=1/14;      %Resolution rate in patients per day cured/dead.
b=0.4;       %Infection rate in healthy people infected per patient per day.


[i,r,s]=drawPrediction(I0,R0,S0,b,a,TOTAL_DAYS);
