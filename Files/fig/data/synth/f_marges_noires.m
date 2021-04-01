function [ im_ext ] = f_marges_noires( imb, taille_masque )
% v 2.0


if (mod ( taille_masque , 2 ) == 0)
disp(['ERREUR : la taille de la fenetre du masque vaut ' num2str(tf) ', il faut une taille impaire']);  

end
  
n = taille_masque;
[dimy , dimx]= size(imb) % nb lignes, nb colonnes
im_ext = zeros(dimy+(taille_masque-1), dimx+(taille_masque-1));
[dimy_ext, dimx_ext]=size(im_ext)

        figure
 imagesc(im_ext),colormap(gray)

for i=1:(n-1)/2
    
  im_ext((n-1)/2+1:dimy_ext-(n-1)/2,i)=0; %premiere colonne
  im_ext((n-1)/2+1:dimy_ext-(n-1)/2,dimx+(n-1)/2+i)=0; %derniere colonne
  im_ext(i,(n-1)/2+1:dimx_ext-(n-1)/2)=0; %premiere ligne
  im_ext(dimy+(n-1)/2+i,(n-1)/2+1:dimx_ext-(n-1)/2)=0; %derniere ligne
  
  %coins
  im_ext(i,1:(n-1)/2)=0; %coin en haut  gauche
  im_ext(dimy+(n-1)/2+i,1:(n-1)/2)=0; %coin en bas gauche
  im_ext(i,(n-1)/2+dimx+1:dimx_ext)=0; %coin en haut droite
  im_ext(dimy+(n-1)/2+i,(n-1)/2+dimx+1:dimx_ext)=0; %coin en bas droite
end

im_ext((n-1)/2+1:dimy_ext-(n-1)/2,(n-1)/2+1:dimx_ext-(n-1)/2)=imb(1:dimy,1:dimx);

