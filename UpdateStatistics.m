function ExtractedData = UpdateStatistics(Country)


  
  ConfirmedCases_URL  = "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Confirmed.csv";
  Deaths_URL          = "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Deaths.csv";
  Recovered_URL       = "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Recovered.csv";
  
  ConfirmedCases_filename = "ConfirmedCases.csv";
  Deaths_filename         = "Deaths.csv";
  Recovered_filename      = "Recovered.csv";
  
  
  urlwrite(ConfirmedCases_URL,ConfirmedCases_filename);
  urlwrite(Deaths_URL,Deaths_filename);
  urlwrite(Recovered_URL,Recovered_filename);
  
  CasesFile=fopen(ConfirmedCases_filename);
  
  M={};
  
  while true
    line=fgetl(CasesFile);
    M = textscan(line, '%s', 'Delimiter',',');
  
  
##  %O mpampis leei gia na pianoume ola ta provinces:
##  anevazeis tin for mesa stin if , xwris na svineis 
##  ta midenika kai anti gia anathesi se kathe timi
##  kaneis prosthesi. kai sto if apla tha elegxeis
##tautoxrona mesa ena flag , pou tha anoigei sto 
##prwto hit kai tha kleinei meta tin if
##. (I if tha teleiwnei se continue)
  
  
  
  
    if strcmp(cell2mat(M){2,1},Country)
      break;
    endif
  
endwhile

  ExtractedData=[];
  j=1;
  for i=5:length(M{1,1})
    value=str2num(M{1,1}{i,1});
    if value
      ExtractedData(j++)=value;
    endif
  endfor
  
  
  
  
  endfunction
