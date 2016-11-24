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


Ri=bitset(Ri,8,B1);
Ri=bitset(Ri,7,B2);
Ri=bitset(Ri,6,B3);
Ri=bitset(Ri,5,B4);
Ri=bitset(Ri,4,B5);
Ri=bitset(Ri,3,B6);
Ri=bitset(Ri,2,B7);
Ri=bitset(Ri,1,B8);
Ri=uint8(Ri);
imwrite(Ri,'test1.jpg');