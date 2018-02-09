clc;
clear;

nx=30;
ny=50;
G=sparse(nx*ny,nx*ny);

%n:m,n  
%a:m,n+1    
%d:m,n-1
%w:m+1,n
%s:m-1,n
for i=1:(nx*ny)
    G(i,i)=1;
end

for j=2:(ny-1)
    for i=2:(nx-1)
        
        n=i+(j-1)*nx;
        
        w=(i-1)+(j-1)*nx;
        d= i+j*nx;
        s=(i+1)+(j-1)*nx;
        a=i+(j-2)*nx;
        
        G(n,n)=-4;
        G(n,w)=1;
        G(n,d)=1;
        G(n,a)=1;
        G(n,s)=1;     
          
    end
end
figure(1);
spy(G);
[E,D] = eigs(G,9,'SM');


F = E(:,1);
for i=1:nx
    for j=1:ny
        n=i+(j-1)*nx;
        Emap(i,j) = F(n);
    end
end
figure(2);
surf(Emap,'linestyle','none');

F = E(:,2);
for i=1:nx
    for j=1:ny
        n=i+(j-1)*nx;
        Emap(i,j) = F(n);
    end
end
figure(3);
surf(Emap,'linestyle','none');

F = E(:,3);
for i=1:nx
    for j=1:ny
        n=i+(j-1)*nx;
        Emap(i,j) = F(n);
    end
end
figure(4);
surf(Emap,'linestyle','none');

F = E(:,4);
for i=1:nx
    for j=1:ny
        n=i+(j-1)*nx;
        Emap(i,j) = F(n);
    end
end
figure(5);
surf(Emap,'linestyle','none');

F = E(:,5);
for i=1:nx
    for j=1:ny
        n=i+(j-1)*nx;
        Emap(i,j) = F(n);
    end
end
figure(6);
surf(Emap,'linestyle','none');

F = E(:,6);
for i=1:nx
    for j=1:ny
        n=i+(j-1)*nx;
        Emap(i,j) = F(n);
    end
end
figure(7);
surf(Emap,'linestyle','none');

F = E(:,7);
for i=1:nx
    for j=1:ny
        n=i+(j-1)*nx;
        Emap(i,j) = F(n);
    end
end
figure(8);
surf(Emap,'linestyle','none');

F = E(:,8);
for i=1:nx
    for j=1:ny
        n=i+(j-1)*nx;
        Emap(i,j) = F(n);
    end
end
figure(9);
surf(Emap,'linestyle','none');

F = E(:,9);
for i=1:nx
    for j=1:ny
        n=i+(j-1)*nx;
        Emap(i,j) = F(n);
    end
end
figure(10);
surf(Emap,'linestyle','none');


