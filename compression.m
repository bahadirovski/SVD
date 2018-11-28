Bee = double(imread('bee.png'));

[U,S,V] = svd(Bee);


k=100;
U2 = U(:,1:k);
V2 = V(:,1:k);
S2 = S(1:k,1:k);

Bee_compressed = uint8(U2* S2* V2');

imwrite(Bee_compressed,'bee_compressed.png');

