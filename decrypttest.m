C=imread('test.jpg');


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