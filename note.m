function[x,t]=note(frekans,vurus)
    fs=8192;
    t=0:1/fs:vurus-(1/fs); 
       a=length(t);
    hk=[1 0.8 0.4 0.1];
        b=length(hk); 
        x=zeros(1,a);
        for i=1:b 
            x=x+(hk(i)*sin(2*pi*(i*frekans)*t)); 
        end
A=linspace(0,1.5,a/4);
B=linspace(1.5,1,a/8);
C=linspace(1,1,a/2);
D=linspace(1,0,a/8);
 zarf=[A B C D];
 x=x.*zarf;