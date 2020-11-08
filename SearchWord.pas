{Oh! Pascal! p. 153}
program SearchWord (output);
    {Prints all possible subwords of 'therein'.}

var First, Last, LetterNumber: integer;

procedure Print (LetterNumber: integer);
    begin
        case LetterNumber of
            1: write ('t');
            2: write ('h');
            3, 5: write ('e');
            4: write ('r');
            6: write ('i');
            7: write ('n')
        end {case}
    end; {Print}

begin {SearchWord}
    for First := 1 to 7 do begin
        for Last := First to 7 do begin
            for LetterNumber := First to Last do
                Print (LetterNumber);
            write ('   ') {Space between words.}
        end; {Last loop}
        writeln
    end {First loop}
end. {SearchWord}