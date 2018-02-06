clc;
clear;

nx=30;
ny=30;
N=1000;
V=rand(nx,ny);
%V(:,ny) = 0;

j=1;
for i = 1:nx
     V(i,j)=1;
end 

for k=1:N
    for i=1:nx
        for j=2:(ny-1)
            if i==1
                V(i,j)=(V(i,j-1)+V(i,j+1)+V(i+1,j))/3;
            elseif i==nx
                V(i,j)=(V(i,j-1)+V(i,j+1)+V(i-1,j))/3;
            else
                V(i,j)=(V(i,j-1)+V(i,j+1)+V(i-1,j)+V(i+1,j))/4;
            end
        end
    end
    surf(V)
    pause(0.1)
end