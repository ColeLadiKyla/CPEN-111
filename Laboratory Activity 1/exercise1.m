clc;
clf;
close all;
clear all;
pkg load image;

image1 = imread('fruits.png'); % to read the image file
pic1_info = imfinfo('fruits.png') % the codee imfinfo will display the full information of the image to the command window
figure(1), imshow(image1) % show the image

image2resize = imresize(image1, 0.5); % to resize the image1
imwrite(image2resize, 'fruits2.png');
whos image2resize
figure(2), imshow('fruits2.png')

rgb2hsv = rgb2hsv(image2resize);
imwrite(rgb2hsv, 'fruits3.png');
figure(3), imshow('fruits3.png');
