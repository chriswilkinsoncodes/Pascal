{Oh! Pascal! p. 187}
program StolenGold (output);
    {Demonstrates nested if statements.}

var TrialNumber, DividedNumber: integer;

begin
    for TrialNumber := 1 to 500 do
        if (TrialNumber mod 3) = 1 then begin {First bandit.}
            DividedNumber := 2 * (TrialNumber div 3);
            if (DividedNumber mod 3) = 1 then begin {Second bandit.}
                DividedNumber := 2 * (DividedNumber div 3);
                if (DividedNumber mod 3) = 1 then begin {Third bandit.}
                    DividedNumber := 2 * (DividedNumber div 3);
                    if (DividedNumber mod 3) = 1 then
                        writeln (TrialNumber:3, ' is a solution.')
                end
            end
        end
end. {StolenGold}