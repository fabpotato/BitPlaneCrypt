A1=imread('toCrypt1.jpg');
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
Ri=bitset(Ri,1,K8);
Ri=bitset(Ri,2,K7);
Ri=bitset(Ri,3,K6);
Ri=bitset(Ri,4,K5);
Ri=bitset(Ri,5,K4);
Ri=bitset(Ri,6,K3);
Ri=bitset(Ri,7,K2);
Ri=bitset(Ri,8,K1);
Ri=uint8(Ri);

 


imwrite(Ri,'encryptedf.jpg');
P=imread('encryptedf.jpg');




K1 = xor(K1,logical(K));

K2 = xor(K2,logical(K));

K3 = xor(K3,logical(K));

K4 = xor(K4,logical(K));

K5 = xor(K5,logical(K));

K6 = xor(K6,logical(K));

K7 = xor(K7,logical(K));

K8 = xor(K8,logical(K));

Ri=bitset(Ri,8,K8);
Ri=bitset(Ri,7,K7);
Ri=bitset(Ri,6,K6);
Ri=bitset(Ri,5,K5);
Ri=bitset(Ri,4,K4);
Ri=bitset(Ri,3,K3);
Ri=bitset(Ri,2,K2);
Ri=bitset(Ri,1,K1);
Ri=uint8(Ri);

imwrite(Ri,'outputf.jpg');
Q=imread('outputf.jpg');

[P,map1]=imread('encryptedf.jpg');
[Q,map2]=imread('outputf.jpg');
subplot(1,2,1), imshow(P,map1);
subplot(1,2,2), imshow(Q,map2);
