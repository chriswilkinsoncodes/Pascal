{Oh! Pascal! p. 179}
program SquareRoot (input, output);
    {Computes square roots. Error-checks input using if.}

var RootExists: boolean;
    Argument, Answer: real;

begin
    writeln ('Please enter a number.');
    readln (Argument);
    RootExists := Argument >= 0;
    write ('The square root of ', Argument:2:2);
    if RootExists then begin
        Answer := sqrt(Argument);
        writeln (' is ', Answer:2:2)
    end {then}
    else writeln (' is imaginary. Sorry!');
    writeln ('Thanks for using this program.')
end. {SquareRoot}