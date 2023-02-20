x3 = sort(x);
y3 = [];
t = 1;
for e =x3
    y3(t) = y(find(x==e));
    t = t+1;
end
x = x3;
y = y3;
t = 1;
