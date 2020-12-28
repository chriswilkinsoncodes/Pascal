{Oh! Pascal! p. 239}
program Hanoi (input, output);
    {Recursively solves the Towers of Hanoi problem. Moves disks from A to C.}

var Height: integer;

procedure Move (Height: integer; FromPeg, ToPeg, UsingPeg: char);
    {Recursive procedure for determining moves.}
    
    begin
        if Height = 1
            then writeln ('Move a disk from ', FromPeg, ' to ', ToPeg)
            else begin
                Move (Height-1, FromPeg, UsingPeg, ToPeg);
                writeln ('Move a disk from ', FromPeg, ' to ', ToPeg);
                Move (Height-1, UsingPeg, ToPeg, FromPeg)
            end {else}
    end; {Move}

begin
    writeln ('How many disk are you going to start with?');
    readln (Height);
    Move (Height, 'A', 'C', 'B')
end. {Hanoi}
