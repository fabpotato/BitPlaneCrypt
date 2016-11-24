A1=imread('test.jpg');
A = A1;
B=bitget(A,1);
B1 = B;

B=bitget(A,2);
B2 = B;

B=bitget(A,3);
B3 = B;

B=bitget(A,4);
B4 = B;

B=bitget(A,5);
B5 = B;

B=bitget(A,6);
B6 = B;

B=bitget(A,7);
B7 = B;

B=bitget(A,8);
B8 = B;

Ri=zeros(size(K));
Ri=bitset(Ri,1,B8);
Ri=bitset(Ri,2,B7);
Ri=bitset(Ri,3,B6);
Ri=bitset(Ri,4,B5);
Ri=bitset(Ri,5,B4);
Ri=bitset(Ri,6,B3);
Ri=bitset(Ri,7,B2);
Ri=bitset(Ri,8,B1);
Ri=uint8(Ri);

A = Ri;
B=bitget(A,1);
B1 = B;

B=bitget(A,2);
B2 = B;

B=bitget(A,3);
B3 = B;

B=bitget(A,4);
B4 = B;

B=bitget(A,5);
B5 = B;

B=bitget(A,6);
B6 = B;

B=bitget(A,7);
B7 = B;

B=bitget(A,8);
B8 = B;


K=imread('keyImage.jpg');
K=rgb2gray(K);
K1 = xor(B1,logical(K));

K2 = xor(B2,logical(K));

K3 = xor(B3,logical(K));

K4 = xor(B4,logical(K));

K5 = xor(B5,logical(K));

K6 = xor(B6,logical(K));

K7 = xor(B7,logical(K));

K8 = xor(B8,logical(K));


Ri=zeros(size(K));
Ri=bitset(Ri,8,K8);
Ri=bitset(Ri,7,K7);
Ri=bitset(Ri,6,K6);
Ri=bitset(Ri,5,K5);
Ri=bitset(Ri,4,K4);
Ri=bitset(Ri,3,K3);
Ri=bitset(Ri,2,K2);
Ri=bitset(Ri,1,K1);
Ri=uint8(Ri);
 


imwrite(Ri,'test3.jpg');
img = imread('test3.jpg');


imshow(img);



