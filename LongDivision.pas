{Oh! Pascal! p. 218}
program LongDivision (input, output);
    {Simulates div and mod for data file input.}

var Dividend, Divisor, Wholes, Remainder: integer;

begin
    Wholes := 0;
    readln (Dividend, Divisor);
    writeln ('The integer quotient of ', Dividend:1, ' and ', Divisor:1, ' is');
    Remainder := Dividend;
    while (Remainder - Divisor) >= 0 do begin
        Remainder := Remainder - Divisor;
        Wholes := Wholes + 1
    end; {while}
    writeln (Wholes:1, ', with remainder ', Remainder:1)
end. {LongDivision}
