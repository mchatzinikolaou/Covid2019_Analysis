function [i,r,s] = InfectionSolution(I0,R0,S0,b,a,TotalDays)
  
  %Definitions.
  
  i=ones(TotalDays); %infected
  r=ones(TotalDays); %resolved
  s=ones(TotalDays); %safe
  
  %Initial Values. Normalized.
  i=I0/S0;
  r=R0/S0;
  s=S0/S0;
  
  %Progression of the disease. This is the discrete ODE.
  for day=(2:TotalDays)
    s(day)=s(day-1) - b*s(day-1) * i(day-1);
    i(day)=i(day-1) + b*s(day-1) * i(day-1) - a* i(day-1);
    r(day)=r(day-1) + a*i(day-1);
  endfor
 
 %Values. "De-normalized".
 i=i*S0;
 r=r*S0;
 s=s*S0;
 
 
endfunction
