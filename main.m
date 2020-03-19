##Author : Michalis Chatzinikolaou , S.ID 2011030111
##Undergraduate student: E.C.E department , T.U.Crete, Greece.

clear all;
close all;
clc;


TOTAL_DAYS = 365;

S0=10740000; %initial healthy population
I0=3;        %initial infected population   
R0=0;        %initial resolved population (Dead + Recovered)


%This will be automated. Manual for now.
greek_Statistics= UpdateStatistics('Greece');

days_since_first_infection= length(greek_Statistics);

a=1/14;      %Resolution rate in patients per day cured/dead.

%Approximate b
b=SIR_Regression (I0,R0,S0,greek_Statistics,a); %Infection rate in new cases per infected person per day.


CFR = 0.02;  %Case Fatality Rate. This is dynamic, stochastic,  and subject to change


drawPrediction(I0,R0,S0,b,a,CFR,TOTAL_DAYS);