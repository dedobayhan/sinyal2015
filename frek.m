function ff=frek(nota,oktav)
notalar=['C' 'c' 'D' 'e' 'E' 'F' 'f' 'G' 'g' 'A' 'b' 'B'];
%C=do, c=do#, D=re, e=mibemol, E=mi, F=fa, f=fa#, G=sol, g=sol#, A=la,
%b=sibemol, B=si 
referans=16.35;
p=length(notalar);

for okt=0:8
    if okt==oktav
        
for j=1:p
    if nota==char(notalar(j)) 
        ff=2^okt*(2^((j-1)/12)*referans);
    end
end

    end
end
end