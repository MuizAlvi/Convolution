function y = myconv(x, h)

lh = length(h);
lx = length(x);
temp = zeros(lx,lx+lh-1);
y = zeros(1,lx+lh-1);

for i = 1:lx
    for j = 1:lh
        y(j) = h(j)*x(i);     
    end                       
    temp(i,i:i+lh-1) = y(1:lh);
end

for k = 1:lx+lh-1;
    y(k) = sum(temp(1:lx,k));
end 

end