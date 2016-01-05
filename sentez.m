%% De�i�kenler tan�mland� ve okuma i�lemi yap�ld�.
[nota,k,t]=textread('Notalar.txt','%s %s %s'); 
%%  Frekans de�eri tan�mland�
fs=10000;

%% Duraklama de�eri
ds=round(fs/100);

%% Gecikme de�eri
gecikme=round(fs/10); 

%% 
notalar=zeros(1,fs); % Zeros=0 
a=zeros(1,length(notalar));% notalar�n karakterlerini sayarak  a de�i�kenine at�yor. 
durak=zeros(1,ds); 
oktav=str2num(cell2mat(k)); 

%%
  
for i=1:(length(nota)) %d�ng�n�n ba�lang�� de�eri 1 den ba�l�yor ve notalar�n bitimine kadar devam ediyor. 
       vurus((i),1)=str2num(cell2mat(t(i,1))); 
       
       frekans((i),1)=frek(nota((i),1),oktav((i),1)); 
       
       [x,z]=note(frekans((i),1),vurus((i),1));
       
       notalar=[notalar durak x]; 
end 
 

 notalarecho=zeros(1,(length(notalar))); 
 
 %Echo olu�turuldu%
 for i=1:(length(notalar)) 
     
     f=(gecikme+i); 
     if f<(length(notalar)) 
     notalarecho(i)=notalar(i)*0.3+notalar(f); 
     else 
      notalarecho(i)=notalar(i)*0.3+0; 
     end
 end 
 
 %% 
  normalizenotalarecho=zeros(1,(length(notalar)));
  
  %% Normalize edildi
  normalizenotalarecho=notalarecho/max(abs(notalarecho)); 
  
  %% Sesi dinlemek i�in
  sound(normalizenotalarecho)
  %% Sinyali �izdirmek i�in
  plot(normalizenotalarecho)