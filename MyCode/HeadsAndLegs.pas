program HeadsAndLegs (input, output);
    {Determine the number of each animal based
    on the total number of heads and legs.
    This puzzle usually has a bird (e.g. chicken, pigeon)
    representing a 2-legged animal and one of a variety
    of animals (e.g. rabbit, dog, sheep, cow, horse)
    representing a 4-legged animal.
    We'll use chickens and dogs.}

var Heads, Legs, Chickens, Dogs: integer;

function FourLegs (Heads, Legs: integer): integer;
    {Solves for the number of dogs.}
    begin
        FourLegs := (Legs div 2) - Heads
    end; {FourLegs}

function TwoLegs (Heads, Legs: integer): integer;
    {Solves for the number of dogs.}
    begin
        TwoLegs := (2 * Heads) - (Legs div 2)
    end; {TwoLegs}

begin
    writeln ('Enter the total number of heads: ');
    readln (Heads);
    writeln ('Enter the total number of legs: ');
    readln (Legs);
    Dogs := FourLegs (Heads, Legs);
    Chickens := TwoLegs (Heads, Legs);
    writeln ('There are ', Chickens:1, ' chickens and ', Dogs:1, ' dogs.')
end. {HeadsAndLegs}