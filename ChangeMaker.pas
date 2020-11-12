{Oh! Pascal! p. 185}
program ChangeMaker (input, output);
    {Computes minimum coinage for making change. Data file oriented.}
    {Had to change Unit (as used in text) to Units.}
    {Unit appears to be a reserved word by the interpreter used at:}
    {https://www.onlinegdb.com/}

    {TODO: investigate why textbook output for 11.95, 8.21}
    {includes 4 cents but output via interpreter is 3 cents.}

const DOLLAR = 100;
      HALFDOLLAR = 50;
      QUARTER = 25;
      DIME = 10;
      NICKEL = 5;
      PENNY = 1;

var Price, Tendered: real;  {Amounts are input as real dollar amounts...}
    Change: integer;        {...but are dealt with as pennies in the program.}
    MoneyIsDue: boolean;

procedure ComputeChange (Units: integer; var Change: integer);
    {Prints number of coins. Reduces Change by that many Unitss.}

    var Pieces: integer;

    begin
        Pieces := Change div Units;
        Change := Change mod (Pieces * Units);
        write (Pieces:1);

        case Units of
            100: write (' dollar');
            50: write (' fifty-cent piece');
            25: write (' quarter');
            10: write (' dime');
            5: write (' nickel');
            1: write (' cent')
        end; {case}

        if Pieces > 1 {Take care of multiple coins.}
            then writeln ('s')
            else writeln
    end; {ComputeChange}

begin {ChangeMaker}
    readln (Price, Tendered);
    MoneyIsDue := Price > Tendered;
        {Express the potential change in pennies.}
    Change := abs(trunc(100*(Price-Tendered)));
    
    if Price = Tendered
        then writeln ('Thanks!')
        else begin
            if MoneyIsDue
                then writeln ('Too little! You''re short by')    
                else writeln ('Your change is exactly');
            if Change >= 100 then ComputeChange (DOLLAR, Change);
            if Change >= 50 then ComputeChange (HALFDOLLAR, Change);
            if Change >= 25 then ComputeChange (QUARTER, Change);
            if Change >= 10 then ComputeChange (DIME, Change);
            if Change >= 5 then ComputeChange (NICKEL, Change);
            if Change >= 1 then ComputeChange (PENNY, Change)
        end {else}
end. {ChangeMaker}