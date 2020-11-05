{Oh! Pascal! p. 142}
program Scissors (input, output);
    {Demonstrates nested case statements.}

var FirstPlayer, SecondPlayer: char;

begin
        writeln ('Enter plays for two platers -- S, R, or P.');
        readln (FirstPlayer, SecondPlayer);
        case FirstPlayer of
            'S': case SecondPlayer of
                    'S': writeln ('Scissors tie scissors.');
                    'R': writeln ('Scissors are crushed by rock.');
                    'P': writeln ('Scissors cut paper.')
                 end; {inner case}
            'R': begin
                    writeln ('Rock ties rock. ');
                    case SecondPlayer of
                        'S': writeln ('But rock crushes scissors.');
                        'R': writeln ;
                        'P': writeln ('But rock is wrapped by paper.')
                    end; {inner case}
                 end; {compound statement}
            'P': begin
                    write ('Paper ');
                    case SecondPlayer of
                        'S': write ('is cut by scissors.');
                        'R': write ('wraps the rock.');
                        'P': write ('ties paper.')
                    end; {inner case}
                    writeln
                 end {compound statement}
        end {outer case}
end. {Scissors}