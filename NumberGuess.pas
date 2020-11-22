{Oh! Pascal! p. 225}
program NumbrGuess (input, output);
    {Challenges a user to guess a number within 7 tries.}

const GUESSLIMIT = 7;

var Number, Guess, Count, Seed: integer;
    Solved: boolean;

begin

    Randomize;

    {Artifcat of example in textbook. Has no effect on outcome since}
    {"function Random" was replace with Randomize/Random.}
    writeln ('Play a guessing game. Enter a number between 1 and 100.');
    readln (Seed);
    
    Number := Random(100) + 1;
    writeln ('Thanks. Now, I''m thinking of a number from 1 through 100.');
    write ('You have ', GUESSLIMIT:1, ' tries to guess it.  ');
    Count := 0;
    Solved := false;

    repeat
        Count := Count + 1;
        writeln ('Take a guess.');
        read (Guess);

        if Guess < Number
            then write ('Uh oh ... that number was too small.  ')
            else if Guess > Number
                then write ('Sorry, but that number was too big.  ')
                else Solved := true
    until Solved or (Count = GUESSLIMIT);

    if not Solved
        then writeln ('You Lose! The right number was ', Number:1)
        else writeln ('Congratulations!  ', Guess:1, ' was exactly right.')
end. {NumberGuess}