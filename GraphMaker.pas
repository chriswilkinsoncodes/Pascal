{Oh! Pascal! p. 150}
program GraphMaker (input, output);
    {Prints a bar graph. Data file oriented.}

const ENGLAND = 1;
      FRANCE = 2;
      JAPAN = 3;

var Year, SymbolCounter, Production: integer;

procedure DrawBar (Length: integer; BarCharacter: char);
    {Draws a Length-long sequence of BarCharacter.}

    var Counter: integer;

    begin
        for Counter := 1 to Length do
            write (BarCharacter);
        writeln
    end; {DrawBar}

begin
    for Year := 1985 to 1989 do begin
        for SymbolCounter := ENGLAND to JAPAN do begin
            read (Production);
            case SymbolCounter of
                ENGLAND: DrawBar(Production, '#');
                FRANCE: DrawBar(Production, '$');
                JAPAN: DrawBar(Production, '%');
            end {case}
        end; {SymbolCounter for}
        writeln (Year)
    end; {Year for}
    writeln;
    writeln ('Key to symbols: #=England, $=France %=Japan')
end. {GraphMaker}