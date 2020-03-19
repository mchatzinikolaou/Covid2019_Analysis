##Uses method of least squares, and a linear search on b.

function beta= SIR_Regression (I0,R0,S0,I_statistics,a)
  
  TotalDays= length(I_statistics);
  
  %Range of infection rates.
  b=0.1:0.01:1;
  BestB=0;
  BestError=Inf;
  
  
  %Try next b; This will be replaced by nextB(); 
  for j=1:length(b)
    
     
     [i,r,s]= InfectionSolution(I0,R0,S0,b(j),a,TotalDays);
     
     %Calculate MSE
     predicted_Infections=i(1:TotalDays);
     MSE = sum((predicted_Infections- I_statistics).^2);
     
     %Optimizing condition.
     if MSE < BestError
       BestB=b(j);
       BestError=MSE;
     endif
     
     
  endfor
  
  beta=BestB;
  [i,r,s]= InfectionSolution(I0,R0,S0,beta,a,TotalDays);
  plot(1:TotalDays,i,1:TotalDays,I_statistics);
endfunction
