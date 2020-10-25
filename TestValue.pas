{Oh! Pascal! p. 77}
program TestValue (output);
    {Demonstrates value parameters.}
var x, y, First, Second: integer;
procedure NoEffect (x, y: integer);
    {Shows that assignments to value parameters don't affect arguments.}
    begin
        x := y;
        y := 0;
        writeln (x, y);
    end; {NoEffect}
procedure SumSquares (First, Second: integer);
    {Squares, and sums, its value parameters.}
    var Sum: integer;
    begin
        First := sqr (First);
        Second := sqr (Second);
        Sum := First + Second; {initialize Sum}
        writeln (Sum)
    end; {SumSqares}
begin
    x := 1;
    y := 2;
    writeln (x, y);
    NoEffect (x, y);
    writeln (x, y);
    First := 3;
    Second := 4;
    SumSquares (5, 9);
    SumSquares (3 + 2, 9 mod 8);
    SumSquares (First, Second)
end.