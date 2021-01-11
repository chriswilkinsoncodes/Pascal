program TestFibonacci (input, output);
    {Test a function that recursively generates Fibonacci numbers.}

var Test1, Test2, Test3, Test4: integer;

function Fibonacci(Which: integer): integer;
    begin
        if (Which=1) or (Which=2)
            then Fibonacci := 1
            else Fibonacci := Fibonacci(Which-1) + Fibonacci(Which-2)
        end; {Fibonacci}
    end;

begin
    writeln ('Reading four test entries.');
    readln (Test1, Test2, Test3, Test4);
    writeln ('Fibonacci numbers', Test1:4, Test2:4, Test3:4, Test4:4, ' are:');
    write (Fibonacci(Test1), Fibonacci(Test2));
    writeln (Fibonacci(Test3), Fibonacci(Test4))
end. {Fibonacci}
