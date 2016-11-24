A=imread('toCrypt.jpg');
A = rgb2gray(A);
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

Ri=zeros(size(A));
Ri=bitset(Ri,8,B1);
Ri=bitset(Ri,7,B2);
Ri=bitset(Ri,6,B3);
Ri=bitset(Ri,5,B4);
Ri=bitset(Ri,4,B5);
Ri=bitset(Ri,3,B6);
Ri=bitset(Ri,2,B7);
Ri=bitset(Ri,1,B8);
imwrite(Ri,'test.jpg');

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

R=zeros(size(K));
R=bitset(R,8,K1);
R=bitset(R,7,K2);
R=bitset(R,6,K3);
R=bitset(R,5,K4);
R=bitset(R,4,K5);
R=bitset(R,3,K6);
R=bitset(R,2,K7);
R=bitset(R,1,K8);

R=uint8(R);
imshow(R);

imwrite(R,'scramble.jpg');

