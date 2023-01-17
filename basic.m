clear all  % clears workspace
close all  % closes all open figures

mammogram_img = imread('mammogram.tif'); 
imshow(mammogram_img)


neg_image = imadjust(mammogram_img,'',[1 0]); %to get a negative image
imshow(neg_image)

clear all  % clears workspace
close all  % closes all open figures

pollen_img = imread('pollen.tif');
imshow(pollen_img)

pollen_hist_img = histeq(pollen_img); % this will equalize the histogram

figure
subplot(221); imshow(pollen_hist_img) % can used to plot multiple images into one fig
subplot(222); imshow(pollen_hist_img)
subplot(223); imhist(pollen_hist_img) % show histogram
subplot(224); imhist(pollen_hist_img)

