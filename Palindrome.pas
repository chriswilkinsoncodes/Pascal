{Oh! Pascal! p. 188}
program Palindrome (input, output);
    {Recognizes five-letter palindromes.}

var c1, c2, c3, c4, c5: char;

begin
    writeln ('Please enter a five-letter word.');
    readln (c1, c2, c3, c4, c5);
    write (c5, c4, c3, c2, c1);
    if (c1 = c5) and (c2 = c4) then write (' is')
                               else write (' is not');
    writeln (' a palindrome.')
end. {Palindrome}