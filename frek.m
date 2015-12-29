function [frekans]=frek(nota,oktav,oktavdegeri)

notalar={'Do','Dod','Re','Mib','Mi','Fa','Fad','Sol','Sold','La','Sib','Si','Sus'}; 
n=strcmp(notalar,nota); 
m=find(n,1);
        if (nargin==0) 
                 disp ('veri giriþini yapýnýz');
        elseif (nargin==1)
                 if (m==13)
                    frekans=0;
                 else
                    frekans=16.35*(2^(4))*(2^((m-1)/12));
                 end
        elseif (nargin==2) 
                 if (m==13)
                    frekans=0;
                 else
                    frekans=16.35*(2^(oktav))*(2^((m-1)/12)); 
                 end
        else 
                 if (m==13)
                     frekans=0;
                 else
                     frekans=16.35*(2^(oktav+oktavdegeri))*(2^((m-1)/12)); 
                 end


    end

end 