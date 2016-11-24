A=imread('scramble.jpg');
C=imread('test.jpg');

Ri=zeros(size(A));
Ri=bitset(Ri,8,bitget(C,1));
Ri=bitset(Ri,7,bitget(C,2));
Ri=bitset(Ri,6,bitget(C,3));
Ri=bitset(Ri,5,bitget(C,4));
Ri=bitset(Ri,4,bitget(C,5));
Ri=bitset(Ri,3,bitget(C,6));
Ri=bitset(Ri,2,bitget(C,7));
Ri=bitset(Ri,1,bitget(C,8));
D=uint8(Ri);
imwrite(Ri,'test1.jpg');

R=zeros(size(A));
R=bitset(R,8,bitget(A,1));
R=bitset(R,7,bitget(A,2));
R=bitset(R,6,bitget(A,3));
R=bitset(R,5,bitget(A,4));
R=bitset(R,4,bitget(A,5));
R=bitset(R,3,bitget(A,6));
R=bitset(R,2,bitget(A,7));
R=bitset(R,1,bitget(A,8));
A=uint8(R);

B=bitget(A,1);
B1 = logical(B);

B=bitget(A,2);
B2 = logical(B);

B=bitget(A,3);
B3 = logical(B);

B=bitget(A,4);
B4 = logical(B);

B=bitget(A,5);
B5 = logical(B);

B=bitget(A,6);
B6 = logical(B);

B=bitget(A,7);
B7 = logical(B);

B=bitget(A,8);
B8 = logical(B);

K=imread('keyImage.jpg');
K=rgb2gray(K);
K1 = xor(B1,logical(K));
imshow(K1);

K2 = xor(B2,logical(K));
imshow(K2);

K3 = xor(B3,logical(K));
imshow(K3);

K4 = xor(B4,logical(K));
imshow(K4);

K5 = xor(B5,logical(K));
imshow(K5);

K6 = xor(B6,logical(K));
imshow(K6);

K7 = xor(B7,logical(K));
imshow(K7);

K8 = xor(B8,logical(K));
imshow(K8);

