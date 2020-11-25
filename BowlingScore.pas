{Oh! Pascal! p. 200}
program BowlingScore (input, output);
    {Keeps bowling score for one player. Error checks for valid input.}

var Score, Frame: integer;
    LastTwoWereStrikes, LastWasStrike, LastWasSpare: boolean;

procedure GetTheNextBall (var NumberOfPins: integer; Max: integer);
    {Reads a ball value and makes sure it's between 0 and Max.}
    
    begin
        read (NumberOfPins);
        if NumberOfPins < 0 then begin {Assume 0 for a negative entry.}
            writeln ('Negative ball value; assuming 0.');
            NumberOfPins := 0
        end
        else if NumberOfPins > Max then begin {Assume spare for too-large value.}
            writeln ('Ball value too large; assuming ', Max:1);
            NumberOfPins := Max
        end
    end; {GetTheNextBall}


procedure HandleFrame (Frame: integer; var Score: integer;
        var LastTwoWereStrikes, LastWasStrike, LastWasSpare: boolean);
    {Score one frame, update the strike and spare state variables.}

    var FirstBall, SecondBall: integer;
    
    begin
        GetTheNextBall (FirstBall, 10);

        case FirstBall = 10 of {Was it a strike?}
            true: SecondBall := 0;
            false: GetTheNextBall (SecondBall, 10 - FirstBall)
        end; {case}

        {Complete the scoring of earlier frames if necessary.}

        if LastTwoWereStrikes then begin
            Score := Score + FirstBall + 20;
            writeln ('Frame ', Frame-2:1, ' Score ', Score:1)
        end;

        if LastWasStrike and (FirstBall < 10) then begin
            Score := Score + FirstBall + SecondBall + 10;
            writeln ('Frame ', Frame-1:1, ' Score ', Score:1)
        end;

        if LastWasSpare then begin
            Score := Score + FirstBall + 10;
            writeln ('Frame ', Frame-1:1, ' Score ', Score:1)
        end;

        if (FirstBall + SecondBall) < 10 then begin
            Score := Score + FirstBall + SecondBall;
            writeln ('Frame ', Frame:1, ' Score ', Score:1)
        end;

        {Update the game state variables - what are we working on?}

        LastTwoWereStrikes := LastWasStrike and (FirstBall = 10);
        LastWasStrike := FirstBall = 10;
        LastWasSpare := (FirstBall < 10) and ((FirstBall + SecondBall) = 10)
    end; {HandleFrame}


procedure TwoMoreBalls (var Score: integer; LastTwoWereStrikes: boolean);
    {A special case = get two more balls for a strike in the tenth frame.}

    var FirstBall, SecondBall: integer;

    begin
        GetTheNextBall (FirstBall, 10);

        case FirstBall = 10 of {Was it a strike?}
            true: GetTheNextBall (SecondBall, 10);
            false: GetTheNextBall (SecondBall, 10 - FirstBall)
        end; {case}
    
        {Complete the scoring of the ninth frame, if necessary.}

        if LastTwoWereStrikes then begin
            Score := Score + FirstBall + 20;
            writeln ('Frame 9 Score ', Score:1)
        end;

        {Finish by scoring the tenth frame.}

        Score := Score + FirstBall + SecondBall + 10;
        writeln ('Frame 10 Score ', Score:1)
    end; {TwoMoreBalls}
    

procedure OneMoreBall (var Score: integer);
    {Another special case - get one more ball for a tenth frame spare.}

    var FirstBall: integer;

    begin
        GetTheNextBall (FirstBall, 10);
        Score := Score + FirstBall + 10;
        writeln ('Frame 10 Score ', Score:1)    
    end; {One more ball.}


begin {BowlingScore}
    {Initialize the game's state variables.}
    Score := 0;
    LastTwoWereStrikes := false;
    LastWasStrike := false;
    LastWasSpare := false;
    
    {Process the score for each frame.}
    for Frame := 1 to 10 do
        HandleFrame (Frame, Score, LastTwoWereStrikes, LastWasStrike, LastWasSpare);
    
    {Take care of special cases in the tenth frame.}
    if LastWasStrike
        then TwoMoreBalls (Score, LastTwoWereStrikes)
        else if LastWasSpare then OneMoreBall (Score)
end. {BowlingScore}
