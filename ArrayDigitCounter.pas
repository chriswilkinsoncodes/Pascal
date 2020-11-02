{Oh! Pascal! p. 118}
program ArrayDigitCounter (input, output);
    {Counts the number of times each digit appears in a sequence of numbers.}
type Totals = array ['0'..'9'] of integer;
var Digits: Totals;
    CurrentDigit: char;
    Count, Limit: integer;
begin
    for CurrentDigit := '0' to '9' do       {initialize the array}
        Digits [CurrentDigit] := 0;
    writeln ('How many digits long is your input value?');
    readln (Limit);
    writeln ('All right, enter the value.');
    for Count := 1 to Limit do begin        {actually count the digitis}
        read (CurrentDigit);
        Digits [CurrentDigit] := Digits [CurrentDigit] + 1
    end;
    writeln ('The number of times each digit occured is:');
    for CurrentDigit := '0' to '4' do
        write (CurrentDigit,': ', Digits [CurrentDigit]:2, '    ');
    writeln;
    for CurrentDigit := '5' to '9' do
        write (CurrentDigit,': ', Digits [CurrentDigit]:2, '    ');
    writeln
end. {ArrayDigitCounter}