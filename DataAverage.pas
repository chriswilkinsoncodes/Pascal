{Oh! Pascal! p. 221}
program DataAverage (input, output);
    {Averages a series of numbers. -1 marks the end of data.}

const SENTINEL = -1;

var Value, Total, Average: real;
    Counter: integer;

begin
    Total := 0;
    Counter := 0;           {Initialization}
    Average := 0;
    read (Value);

    while Value <> SENTINEL do begin    {Process the data.}
        Total := Total + Value;
        Counter := Counter + 1;
        read (Value)
    end; {while}

    if Counter = 0
        then writeln ('No data entered.')
        else begin
            Average := Total / Counter;
            writeln ('The average of ', Counter:1, ' values is ', Average)
        end {else}
end. {DataAverage}
