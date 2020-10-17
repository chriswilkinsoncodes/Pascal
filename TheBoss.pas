{Oh! Pascal! p. 18}
program TheBoss (input, output);
    {Demonstrates simple input and output.}
var Year, ChartPosition: integer;
begin
    writeln ('When was Born to Run released? How high did it go?');
    readln (Year, ChartPosition);
    writeln ('Born to Run came out in ', Year, ' and hit #', ChartPosition);
    {writeln (Year, ChartPosition) - not sure why this line was included in the text}
end. {TheBoss}