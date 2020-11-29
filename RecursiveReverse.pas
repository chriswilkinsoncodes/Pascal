{Oh! Pascal! p. 234}
program RecursiveReverse (input, output);
    {Recursively read a sentence of input, and echoes it in reverse.}

procedure StackTheCharacters;

    var TheCharacter: char;

    begin
        read (TheCharacter);
        if (TheCharacter <> '.') then
            StackTheCharacters;     {A recursive call.}
        write (TheCharacter)
    end; {StackTheCharacters}

begin
    writeln ('Please enter a sentence.');
    StackTheCharacters;
    writeln
end. {RecursiveReverse}
