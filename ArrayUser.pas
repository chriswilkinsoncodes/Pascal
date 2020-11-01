{Oh! Pascal! p. 112}
program ArrayUser (input, output);
    {Reads in 10 values, then prints them in the reverse order.}
type TenValues = array [1..10] of integer;
var i: integer;     {the for loop's counter variable}
    Hold: TenValues;
begin
    writeln ('This program will read ten integers, then print');
    writeln ('them in reverese. Please enter ten numbers.');
    for i := 1 to 10 do
        read (Hold [i]);
    for i := 10 downto 1 do
        write (Hold [i], ' ');
    writeln
end. {ArrayUser}