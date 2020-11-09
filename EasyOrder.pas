{Oh! Pascal! p. 180}
program EasyOrder (input, output);
    {Prints two input letter in alphabetical order.}

var First, Second: char;

begin
    writeln ('Pelase enter two leters.');
    readln (First, Second);
    write ('In alphabetical order, ', First, ' and ', Second, ' are ');
    if First > Second
        then writeln (Second, ', ', First)
        else writeln (First, ', ', Second)
end. {EasyOrder}