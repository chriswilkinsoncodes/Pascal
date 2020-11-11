{Oh! Pascal! p. 182}
program PostageMeter (input, output);
    {Computes charges for first class and special delivery mail.}

const BASICCHARGE = 0.18;       {The one ounce charge.}
      OUNCECHARGE = 0.17;       {Each additional ounce.}
      SPECIALCHARGE = 2.00;     {Special delivery surcharge.}

var Weight, Postage: real;
    Response: char;
    SpecialDelivery: boolean;

begin
        writeln ('How heavy is your letter, in ounces?');
        readln (Weight);
        
        if Weight < 0.0 then Weight := abs(Weight);
        if Weight < 1.0 then begin
                writeln ('Minimum charge is one ounce.');
                Weight := 1.0
        end;
        
        Postage := BASICCHARGE + ((Weight - 1.0) * OUNCECHARGE);
        writeln ('Do you want special deliver? Answer ''Y'' or ''N''.');
        readln (Response);
        SpecialDelivery := Response = 'Y';

        if SpecialDelivery then Postage := Postage + SPECIALCHARGE;
        writeln ('The ', Weight:1, '-ounce postage charge is ', Postage:5:2)
        
end. {PostageMeter}