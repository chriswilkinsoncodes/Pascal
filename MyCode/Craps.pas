program Craps (output);
    {Craps simulator.}
    {Player wins if first roll is 7 or 11.}
    {Player loses if first roll is 2, 3 or 12.}
    {If first roll is none of the above, Point = first roll total.}
    {Player continues to roll until total of roll = Point resulting in WIN}
    {or total of roll = 7 resulting in LOSS.}

var Die1, Die2, DiceTotal, Point: integer;
    Result: char;

procedure RollDice (var Die1, Die2: integer);
    {Roll 2 dice and return their values.}
    begin
        Die1 := Random(6) + 1;
        Die2 := Random(6) + 1;
    end; {RollDice}

procedure ShowDice (Die1, Die2: integer);
    {Print the values of the dice roll.}
    begin
        writeln ('The player rolled ', Die1:1, ' and ', Die2:1, ' for a total of ', Die1 + Die2)
    end; {ShowDice}


begin
    Randomize;
    
    RollDice (Die1, Die2);
    ShowDice (Die1, Die2);
    
    {Evaluate roll total.}
    case Die1 + Die2 of
        7, 11: Result := 'W';
        2, 3, 12: Result := 'L';
        1, 4, 5, 6, 8, 9, 10:
            begin
                Result := 'R';
                Point := Die1 + Die2;
                writeln ('Point is ', Point)
            end {case 1...}
    end; {case}

    {If no WIN/LOSS on first roll, roll again until WIN/LOSS.}
    while Result = 'R' do begin
            RollDice (Die1, Die2);
            ShowDice (Die1, Die2);

            if (Die1 + Die2 = Point)
                then Result := 'W'
            else if (Die1 + Die2 = 7)
                then Result := 'L'

    end; {while}

    {Print output of game result.}
    if Result = 'W'
        then writeln ('Player WINS')
        else writeln ('Player LOSES')

end. {Craps}
