%Neighbor.m

%1
function out = Neighbor(img,n)

if ~exist('n','var')
    n = 1;
end

[m,w] = size(img);
out = zeros(m,w);

%2
for i=1:m
    for j=1:w
        out(i,j) = getNeighborSum(img,i,j,n);
    end
end

%3
function out = getNeighborSum(img,i,j,n)

[h,w] = size(img);

out = 0;

for x = max(1,i-n):min(h,i+n)            %4
    for y = max(1,j-n):min(w,j+n)         %5
        out = out + img(x,y);            %6
    end
end