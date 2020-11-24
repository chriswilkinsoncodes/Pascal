{Oh! Pascal! p. 228}
program TestNewton (input, output);
    {Tests newton's method of finding square roots.}

const STARTINGSEED = 187;
      NUMBEROFTRIALS = 10;
      UPPERLIMIT = 10000;
    
var Number, Seed, Counter: integer;

{function RandomInteger}

function SquareRoot (Number: real): real;

    var OldGuess, NewGuess: real;
    GuessNumber: integer;

    function NoSignificantChange (Old, New: real): boolean;
        
        const EPSILON = 10E-09;

        begin
            NoSignificantChange := abs (Old - New) < EPSILON
        end; {NoSignificantChange}
    
        begin {SquareRoot}
            
            NewGuess := Random(UPPERLIMIT);
                {Take a wild first guess.}
            write (NewGuess:15:0);
            GuessNumber := 0;

            repeat
                GuessNumber := GuessNumber + 1;
                OldGuess := NewGuess;
                NewGuess := ((Number / OldGuess) + OldGuess)/2
            until NoSignificantChange (OldGuess, NewGuess);
            
            write (GuessNumber:8);
            SquareRoot := NewGuess
end; {SquareRoot}

begin

    Randomize;

    writeln ('Number':6, 'First Guess':15, 'Tries':8, 'Newton':12, 'sqrt':12);

    for Counter := 1 to NUMBEROFTRIALS do begin
        Number := Random (UPPERLIMIT);
        write (Number:6);
        writeln (SquareRoot (Number):12:5, sqrt (Number):12:5)
    end {for}

end. {TestNewton}
