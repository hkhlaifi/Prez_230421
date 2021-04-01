clear all
close all

ACPI = imread('image_filter1_sigma_0_noise_4.png');
ARI  = imread('image_filter2_sigma_0_noise_4.png');
SEDD = imread('image_filter3_sigma_0_noise_4.png');
RCG  = imread('image_filter4_sigma_0_noise_4.png');

figure, imshow(ACPI)



L1 = 501
C1 = 137
L2 = 624
C2 = 400
ACPIc = f_marges_noires(ACPI(L1:L2, C1:C2, :), 5);  

figure, imshow(ACPIc)



ARIc  = f_marges_noires(ARI(L1:L2, C1:C2, :), 5);  
SEDDc = f_marges_noires(SEDD(L1:L2, C1:C2, :), 5);  
RCGc  = f_marges_noires(RCG(L1:L2, C1:C2, :), 5);  

imwrite(ACPIc, 'ACPIcrop.png')
imwrite(ARIc, 'ARIcrop.png')
imwrite(SEDDc, 'SEDDcrop.png')
imwrite(RCGc, 'RGCcrop.png')
