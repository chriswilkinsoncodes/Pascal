{Oh! Pascal! p. 222}
program FindT (input, output);
    {Looks for a 't' in input.}

const LIMIT = 35;

var PositionCounter: integer;
    Letter: char;

begin
        PositionCounter := 0;
        
        repeat
            read (Letter);
            PositionCounter := PositionCounter + 1
        until (Letter = 't') or (PositionCounter = LIMIT);

        if (Letter = 't')
            then writeln ('t is in postion ', PositionCounter:1)
            else writeln ('No t found.')
end. {FindT}
