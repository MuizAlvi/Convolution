x = [-1 0 1];
h = [1 2 1];

y = myconv(x, h);
stem(y)

% y = conv(x, h);
% stem(y)