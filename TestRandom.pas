{Oh! Pascal! p. 146}
program TestRandom (input, output);
    {Checks the distribution of the Random function's output.}

const NUMBEROFTRIALS = 10000;

var One, Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten,
    Counter, Seed: integer;

function Random (var Seed: integer): real;
    {Generates a pseudo-random number such that 0 <= Random < 1.}

    const MODULUS = 65536;
          MULTIPLIER = 25173;
          INCREMENT = 13849;

    begin
        Seed := ((MULTIPLIER * Seed)+INCREMENT) mod MODULUS;
        Random := Seed / MODULUS
    end; {Random}

begin
    One := 0; Two := 0; Three := 0; Four := 0; Five := 0;
    Six := 0; Seven := 0; Eight := 0; Nine := 0; Ten := 0;
    writeln ('Please enter a seed.');
    readln (Seed);
    writeln ('Distribution of ', NUMBEROFTRIALS:1,' trials of Random:');
    for Counter := 1 to NUMBEROFTRIALS do begin
        case (1+trunc(10*Random(Seed))) of
            1: One := One+1; 2: Two := Two+1; 3: Three := Three+1; 4: Four := Four+1; 5: Five := Five+1;
            6: Six := Six+1; 7: Seven := Seven+1; 8: Eight := Eight+1; 9: Nine := Nine+1; 10: Ten := Ten+1;
        end {case}
    end; {for}
    writeln ('1''s':5, '2''s':5, '3''s':5, '4''s':5, '5''s':5, '6''s':5, '7''s':5, '8''s':5, '9''s':5, '10''s':5);
    writeln (One:5, Two:5, Three:5, Four:5, Five:5, Six:5, Seven:5, Eight:5, Nine:5, Ten:5)
end. {TestRandom}