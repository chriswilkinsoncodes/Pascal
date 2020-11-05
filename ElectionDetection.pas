{Oh! Pascal! p. 138}
program ElectionDetection (input, output);
    {Determine how close an election year is.}

var Year: integer;

begin
        writeln ('What year is this?');
        readln (Year);
        case (Year mod 4) of
            0: writeln ('This is an eleciton year');
            1: writeln ('Last year was an election year.');
            2: writeln ('The election was two years ago.');
            3: writeln ('The election will be next year.')
        end {the case statement}
end. {ElectionDetection}