% Refractive indices:
n1 = 3.34;          % Lower cladding
n2 = 3.44;          % Core
n3 = 1.00;          % Upper cladding (air)

% Layer heights:
h1 = 2.0;           % Lower cladding
h2 = 1.3;           % Core thickness
h3 = 0.5;           % Upper cladding

% Horizontal dimensions:
rh = 1.1;           % Ridge height
rw = linspace(0.325,1.0,10);           % Ridge half-width
side = 1.5;         % Space on side

% Grid size:
dx = 0.0125*8;        % grid size (horizontal)
dy = 0.0125*8;        % grid size (vertical)

lambda = 1.55;      % vacuum wavelength
nmodes = 1;         % number of modes to compute

for i=1:10
[x,y,xc,yc,nx,ny,eps,edges] = waveguidemesh([n1,n2,n3],[h1,h2,h3], ...
                                            rh,rw(i),side,dx,dy); 

% First consider the fundamental TE mode:

[Hx,Hy,neff] = wgmodes(lambda,n2,nmodes,dx,dy,eps,'000A');

fprintf(1,'neff = %.6f\n',neff);

figure(i);
subplot(121);
contourmode(x,y,Hx);
title('Hx (TE mode)'); xlabel('x'); ylabel('y');
for v = edges, line(v{:}); end

subplot(122);
contourmode(x,y,Hy);
title('Hy (TE mode)'); xlabel('x'); ylabel('y');
for v = edges, line(v{:}); end

% Next consider the fundamental TM mode
% (same calculation, but with opposite symmetry)

[Hx,Hy,neff] = wgmodes(lambda,n2,nmodes,dx,dy,eps,'000S');

fprintf(1,'neff = %.6f\n',neff);
end
% for j=1:10
%     figure(j+10);
%     subplot(121);
%     contourmode(x,y,Hx(:,:,j));
%     title('Hx (TM mode)'); xlabel('x'); ylabel('y');
%     for v = edges, line(v{:}); end
%     
%     subplot(122);
%     contourmode(x,y,Hy(:,:,j));
%     title('Hy (TM mode)'); xlabel('x'); ylabel('y');
%     for v = edges, line(v{:}); end
% end