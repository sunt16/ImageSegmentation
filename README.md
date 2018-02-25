# ImageSegmentation
Image segmetation using kmeans method
Ideas from
https://cn.mathworks.com/help/images/examples/color-based-segmentation-using-k-means-clustering.html
Image in this example from 
https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1357968263,3722616166&fm=27&gp=0.jpg
There's some problems in this example
1. We need to give the number of classes before running test1.m;
2. Initial value of cluster center is very crucial, improper value may influency the final result, so this program is not stable very well, needs to be adjusted later;
3. Validate methods haven't been used in these program.

The innovative point in this program
1. Image segmentation using kmeans has advantages compared to threshold method;
2. We first flatten our image into one dimension before input it into kmeans program;
3. Function reshape in matlab has been used to memorize the location information of data.
The results of our program
original image
![image]https://github.com/sunt16/ImageSegmentation/pic.jpg
when choosing 3 classes
