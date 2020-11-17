{Oh! Pascal! p. 217}
program NumberLength (input, output);
    {Counts digits by repeated division.}

var InputNumber, NumberOfDigits: integer;

begin
    NumberOfDigits := 0;
    writeln ('Please enter an integer.');
    readln (InputNumber);
    write (InputNumber:1);
    repeat
        InputNumber := InputNumber div 10;
        NumberOfDigits := NumberOfDigits + 1
    until InputNumber = 0;
    writeln (' has ', NumberOfDigits:1, ' digits.')
end. {NumberLength}
