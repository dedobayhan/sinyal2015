%% Deðiþkenler tanýmlandý ve okuma iþlemi yapýldý.
[nota,k,t]=textread('Notalar.txt','%s %s %s'); 
%%  Frekans deðeri tanýmlandý
fs=10000;

%% Duraklama deðeri
ds=round(fs/100);

%% Gecikme deðeri
gecikme=round(fs/10); 

%% 
notalar=zeros(1,fs); % Zeros=0 
a=zeros(1,length(notalar));% notalarýn karakterlerini sayarak  a deðiþkenine atýyor. 
durak=zeros(1,ds); 
oktav=str2num(cell2mat(k)); 

%%
  
for i=1:(length(nota)) %döngünün baþlangýç deðeri 1 den baþlýyor ve notalarýn bitimine kadar devam ediyor. 
       vurus((i),1)=str2num(cell2mat(t(i,1))); 
       
       frekans((i),1)=frek(nota((i),1),oktav((i),1)); 
       
       [x,z]=note(frekans((i),1),vurus((i),1));
       
       notalar=[notalar durak x]; 
end 
 

 notalarecho=zeros(1,(length(notalar))); 
 
 %Echo oluþturuldu%
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
  
  %% Sesi dinlemek için
  sound(normalizenotalarecho)
  %% Sinyali çizdirmek için
  plot(normalizenotalarecho)