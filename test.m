%导入图像
I = imread('pic.jpg');
%将rgb图像转化成灰度图像
I = rgb2gray(I);
%选取图像的一部分
% I = I(128+1:128+256,256+1:256+256);
[m,n] = size(I);
%将二维图像压缩成一维图像，精度转换
I1 = double(reshape(I,[1,m*n]));
%调用kmeans聚类算法
[rst,iter] = kmeans1(I1,3,0.0001);
%图像分割
for i=1:3
    I1(I1>=min(rst{i})&I1<=max(rst{i})) = i;
end
%恢复原图像
I2 = reshape(I1,[m,n]);