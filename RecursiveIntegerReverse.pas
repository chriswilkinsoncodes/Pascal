{Oh! Pascal! p. 236}
program RecursiveIntegerReverse (input, output);
    {Recursively reverses the digits of an integer.}

var Number: integer;

procedure ReverseDigits (TheNumber: integer);
    begin
        write (TheNumber mod 10:1);
            {Output the rightmost digit in a one-space field.}        
        if (TheNumber div 10) <> 0 then ReverseDigits (TheNumber div 10)
            {If there are more digits, strip off the rightmost one and pass the result.}
    end; {ReverseDigits}

begin
    writeln ('Please enter a positive integer.');
    readln (Number);
    ReverseDigits (Number);
    writeln
end. {RecursiveIntegerReverse}
