
%Como abrir una imagen en MATLAB
X = imread('CWT.jpg');
imshow(X);
imhist(X)

Red=X(:,:,1); Green=X(:,:,2); Blue=X(:,:,3);

subplot(4,1,1)
imshow(Red)
subplot(4,1,2)
imshow(Green)
subplot(4,1,3)
imshow(Blue)
subplot(4,1,4)
imshow(X)

I = rgb2gray(X);
imshow(I)

%transformaci�n a HSV
Y = imread('HSV.png');imshow(Y);

HSV=rgb2hsv(X);
Hue=HSV(:,:,1); Sat=HSV(:,:,2); Val=HSV(:,:,3);

figure
subplot(4,1,1)
imshow(Hue)
subplot(4,1,2)
imshow(Sat)
subplot(4,1,3)
imshow(Val)
subplot(4,1,4)
imshow(X)

%como hacer video de im�genes jpg
%1. Obtener el nombre de todas las im�genes de inter�s
catalogo=dir('*.jpg');

%Aqui el nombre del video y su formato
vwObj = VideoWriter('Teign.mp4');
vwObj.FrameRate = 3;
open(vwObj);
for i=1:length(catalogo)
   name=catalogo(i).name;
   I=imread (name);%Leer imagen
   h=imshow(I);%mostrarla
   %rect=[133 90 390 280]; %[left bottom width height] in pixels
   frame = getframe(gcf);%getframe(gcf,rect); en esta opcion solo obtienes una seccion del video
   writeVideo(vwObj, frame);
end
close(vwObj);
