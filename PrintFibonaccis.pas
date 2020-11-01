{Oh! Pascal! p. 111}
program PrintFibonaccis (input, output);
    {Prints the mth through nth Fibonacci numbers.}
var Counter, FirstFib, LastFib, {will represent m and n}
    CurrentFibonacci, NextFibonacci: integer;
procedure GetNextFibonacci (var Last, Current: integer);
    {Generates the next Fibonacci number.}
    var Temporary: integer;
    begin
        Temporary := Last + Current;
        Last := Current;
        Current := Temporary
    end; {GetNextFibonacci}
begin
    writeln ('This program finds the mth through nth Fibonacci');
    writeln ('numbers. Enter m and n. Be sure m is at least 3.');
    readln (FirstFib, LastFib);
    writeln ('Fibonaccis ', FirstFib:1, ' through ', LastFib:1, ' are:');
    CurrentFibonacci := 0;  {Initialize the sequence.}
    NextFibonacci := 1;
    for Counter := 3 to FirstFib-1 do
        GetNextFibonacci (CurrentFibonacci, NextFibonacci);
    for Counter := FirstFib to LastFib do begin
        GetNextFibonacci (CurrentFibonacci, NextFibonacci);
        write (NextFibonacci, ' ')
    end; {for}
    writeln
end. {PrintFibonaccis}