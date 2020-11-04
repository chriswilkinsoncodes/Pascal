{Oh! Pascal! p. 123}
program StringInput (input, output);
    {Demonstrates character-by-character string input.}
type AString = packed array [1..10] of char;
var Word: AString;
    i: integer;
begin
    writeln ('Please enter a ten-letter word.');
    for i := 1 to 10 do
        read (Word [i]);
    writeln ('You entered: ', Word)
end. {StringInput}

{* test uses 'String' for type but the compiler at https://www.onlinegdb.com/ produces and error with that
 * appears in its version of Pascal that 'String' is a reserved word
 * error indicates it's looking for an identifier - 'AString' satisfies that}