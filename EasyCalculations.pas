{Oh! Pascal! p. 19}
program EasyCalculations (input, output);
    {Shows that expressions are evaluated before output.}
var Cat, Rat: integer;
begin
    writeln ('Enter two integer values.');
    readln (Cat, Rat);
    writeln (Cat:3, Rat:3);
    writeln (Cat+Rat:5, Cat-Rat:5);
    writeln (Cat/Rat:5, Cat*Rat:5);
end.