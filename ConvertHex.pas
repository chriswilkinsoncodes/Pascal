{Oh! Pascal! p. 269}
program ConvertHex (input, output);
    {Converts hexadecimal numbers to base 10.}

const BASE = 16;

var Character: char;
    Number, Decimal: integer;

procedure GetDecimalEquivalent (Character: char; var Decimal: integer);
    {Gives Decimal the base 10 equivalent of Character.}

    begin
        case Character of
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9':
            Decimal := ord(Character)-ord('0');
        'A', 'B', 'C', 'D', 'E', 'F':
            Decimal := (ord(Character)-ord('A')) + 10
        end
    end; {GetDecimalEquivalent}

begin {ConvertHex}
    while not eof do begin
        Number := 0;
        read (Character);
        write ('The decimal equivalent of hex ');
        
        repeat
            write (Character);
            GetDecimalEquivalent (Character, Decimal);
            Number := (BASE * Number) + Decimal;
            read (Character)            
        until not (Character in ['0'..'9', 'A'..'F']);
        
        writeln (' is ', Number:1)
    end {while}
end. {ConverHex}
