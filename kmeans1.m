function [rst,iter] = kmeans1(data,k,pr)
%kmeans 聚类算法用于图像分割
%计算输入数据维数
tmp = size(data);
dim = tmp(1);
%计算输入数据个数
num = tmp(2);
%缓存数据与聚类中心的距离
cache = zeros(1,k);
%获得输入数据的最大值和最小值
maxnum = max(data(:));
minnum = min(data(:));
%初始化聚类中心
initPos = rand(dim,k);
%限定聚类中心的范围
initPos = initPos+minnum;
initPos = (initPos-min(initPos(:)))*maxnum/(max(initPos(:))-min(initPos(:)));
%保存聚类中心中间结果，用以判断程序是否退出
tmp1 = zeros(dim,k);
%保存迭代次数
iter = 0;
while sum((tmp1(:)-initPos(:)).^2)>pr || iter>100000
    for i=1:k
        rst{i} = [];
    end
    for i=1:num
        for j=1:k
            cache(j) = sum((initPos(:,j)-data(:,i)).^2);
        end
        [~,idx] = min(cache);
        rst{idx} = [rst{idx} data(:,i)];
    end
    tmp1 = initPos;
    for l=1:k
        initPos(:,l) = mean(rst{l}')';
    end
    iter = iter+1;
end
    