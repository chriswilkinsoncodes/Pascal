{Oh! Pascal! p. 232}
program ProducePalindromes (input, output);
    {Produces palindromic numbers. Watches for integer overflow.}

var Original, Reversed, Reversals: integer;

procedure ReverseTheNumber (Original: integer; var Reversed: integer);
    {Reverses and returns a copy of its first parameter.}

    begin
        Reversed := 0;

        while (Original <> 0) do begin
            Reversed := (Reversed * 10) + (Original mod 10);
            Original := Original div 10
        end 
    end; {ReverseTheNumber}

function InDangerOfOverFlow (Original: integer): boolean;
    {Determines if Original will cause integer overflow when reversed
    and added. Procedure ReverseTheNumber, above, is called.}

    var Reversed: integer;

    begin
        Original := (Original div 10);
        ReverseTheNumber (Original, Reversed);
        InDangerOfOverFlow := (Original + Reversed) > (MAXINT div 10)
    end; {InDangerOfOverFlow}

function Palindrome (Original: integer): boolean;
    {Determines if Original is palindromic.
     Procedure CountTheDigits is declared within this procedure.}

    var Divisor, Counter, NumberOfDigits, FirstDigit, LastDigit: integer;

    procedure CountTheDigits (Original: integer; var NumberOfDigits: integer);
        {Counts the number of digits in Original.}

        begin
            NumberOfDigits := 0;

            repeat
                Original := Original div 10;
                NumberOfDigits := NumberOfDigits + 1
            until (Original = 0)
        end; {CountTheDigits}

    begin {Palindrome}
        Palindrome := true;     {Initialize Palindrom.}
        CountTheDigits (Original, NumberOfDigits);
        Divisor := 1;
            {Compute 10 to the NumberOfDigits-1 power.}
        
        for Counter := 1 to NumberOfDigits-1 do
            Divisor := Divisor * 10;
        
        for Counter := 1 to NumberOfDigits div 2 do begin
                {Compute and compare the first and last digits.}
            FirstDigit := Original div Divisor;
            LastDigit := Original mod 10;

            if FirstDigit <> LastDigit then Palindrome := false;
                {Get rid of the first and last digits of Original.}
            
            Original:= (Original mod Divisor) div 10;
            Divisor := Divisor div 100
        end {for}
    end; {Palindrome}

begin {ProduecePalindromes}
    writeln ('Please enter a positive integer.');
    readln (Original);

    repeat
        write (Original:1, ' took ');
        Reversals := 0;

        while not Palindrome (Original) and
              not InDangerOfOverFlow (Original) do begin
            ReverseTheNumber (Original, Reversed);
            Reversals := Reversals + 1;
            Original := Original + Reversed
        end; {while}

        if InDangerOfOverFlow (Original)
            then writeln ('too many reversals to convert.')
            else writeln (Reversals:1, ' reversals to become ', Original:1);

        writeln ('Play again? A negative entry ends the program.');
        readln (Original)
    until (Original < 0);
end. {ProducePalindromes}
