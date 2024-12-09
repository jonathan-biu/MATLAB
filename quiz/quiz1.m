clear
x= linspace(0,10,51);
y = x./(x.^2 + 9);
hold on
plot(x,y)

[zOdd,zEven] = do_array(y,0.85);
plot(x,zEven,x,zOdd)

[tOdd] = do_array(zEven,1.25);
plot(x,tOdd)
legend("y","zEven","zOdd","tOdd",Location="best")
