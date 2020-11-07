{Oh! Pascal! p. 144}
program CountDigits (input, output);
    {Count odd, even, and zero digits in input.}

const NUMBERINLIST = 50;

var ListCounter, Evens, Odds, Zeros: integer;
    Current: char;

procedure StoreCount (ThisChar: char;
                      var Ecount, Ocount, Zcount: integer);
    {Increments the proper total.}
    begin
        case ThisChar of
        ',', ' ': ;         {ignore these}
        '2', '4', '6', '8': Ecount := Ecount + 1;
        '1', '3', '5', '7', '9': Ocount := Ocount + 1;
        '0': Zcount := Zcount + 1
        end {case}
    end; {StoreCount}

begin
    Evens := 0;
    Odds := 0;      {Initialize the 'total' variables}
    Zeros := 0;
    for ListCounter := 1 to NUMBERINLIST do begin
        read (Current);
        StoreCount (Current, Evens, Odds, Zeros)
    end; {for}
    write ('There are ', Zeros:1, ' zeros, ', Odds:1, ' odd ');
    writeln ('numbers, and ', Evens:1, ' even numbers.')
end. {CountDigits}