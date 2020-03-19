function drawPrediction(I0,R0,S0,b,a,CFR,TotalDays)
  
  [i,r,s] = InfectionSolution(I0,R0,S0,b,a,TotalDays);
  fatalities=CFR*r;
  
  
%Draw Prediction.
 figure()
  plot(1:TotalDays,i,1:TotalDays,r,1:TotalDays,s,1:TotalDays,fatalities);
  title('Model Predictions for uncontrolled Spread');
  ylabel('Pupulation');
  xlabel('Days since first infection');
  legend('Infected','Resolved','Uninfected');
  grid on;
  grid minor;
  
  
  Total_Fatalities = fatalities(end)
 
 
endfunction
