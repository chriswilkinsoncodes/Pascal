{Oh! Pascal! p. 78}
program Exchanges (output);
    {Demonstrates the use of variable parameters.}
var Little, Big, Answer: integer;
procedure Switch (var First, Second: integer);
    {Exchanges the values of First and Second.}
    var Temporary: integer;
    begin
        Temporary := First;
        First := Second;
        Second := Temporary
    end; {Switch}
procedure FindSquareSum (First, Second: integer; var Sum: integer);
    {Uses value parameters to help compute a variable parameter.}
    begin
        First := sqr (First);
        Second := sqr (Second);
        Sum := First + Second
    end; {FindSquareSum}
begin
    Big := 5;
    Little := 10;
    writeln (Big, Little);
    Switch (Big, Little);
    writeln (Big, Little);
    FindSquareSum (5, 9, Answer);
    writeln (Answer);
    FindSquareSum (3 + 2, 9 mod 8, Answer);
    writeln (Answer);
    FindSquareSum (Big, Little, Answer);
    writeln (Big, Little, Answer)
end. {Exchanges}