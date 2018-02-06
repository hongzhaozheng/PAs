clc;
clear;

nx=30;
ny=30;
N=1000;
V=zeros(nx,ny);

for j=1:ny
    for i = 1:nx
        if j==1 || j==ny
            V(i,j)=1;
        end
    end
end


for k=1:N
    for i=2:(nx-1)
        for j=2:(ny-1)
            V(i,j)=(V(i,j-1)+V(i,j+1)+V(i-1,j)+V(i+1,j))/4;      
        end
    end
    surf(V);
    %imboxfilt(V,3);
    pause(0.1);
end
