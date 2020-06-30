program multiCalculator;
{Referenced in Pascal Book. This is a compiler directive}
{$APPTYPE CONSOLE}

{$OVERFLOWCHECKS ON}

{comma delimited names of libraries you use}
uses crt, sysutils;

label 1;

{global constant declaration block}
{const}

{global variable declaration block}
{var}

{function name(arguments: type1; arguments: type2; ...): function_type;
local declarations;

begin

   < statements >

   name:= expression;
end;}

procedure quit;
begin
  writeln;
  writeln('Press <Enter> to quit the program...');
  readln;
  halt;
end;

procedure error;
begin
  writeln('Incorrect Input. Press <Enter> to try again');
  writeln;
end;

procedure addition;
{local declaration(s)}
var
  val1, val2 : Integer;
  sum : Int64;
begin
  {clear previous screen before displaying anything new}
  clrscr;

  {initialise variables}
  val1 := 0;
  val2 := 0;
  sum := 0;

  writeln('This is the Addition screen');

  repeat
    repeat
      writeln('Please enter your first value: ');
      readln(val1);
      if ((val1 < -2147483647) or (val1 > 2147483646)) then
      begin
        error;
      end
    until ((val1 >= -2147483647) and (val1 <= 2147483646));

    repeat
      writeln('Please enter your second value: ');
      readln(val2);
      if ((val2 < -2147483647) or (val2 > 2147483646)) then
      begin
        error;
      end;
    until ((val2 >= -2147483647) and (val2 <= 2147483646));
  until (((val1 >= -2147483647) or (val1 <= 2147483646)) and ((val2 >= -2147483647) or (val2 <= 2147483646)));

  sum := val1 + val2;

  writeln('Answer: ', val1, ' + ', val2, ' = ', sum);

  readln;
end;

procedure subtraction;
var
  val1, val2, sum : Integer;
begin
  clrscr;

  val1 := 0;
  val2 := 0;
  sum := 0;

  writeln('This is the Subtraction screen');

  writeln('Please enter your first value: ');
  readln(val1);

  writeln('Please enter your second value: ');
  readln(val2);

  sum := val1 - val2;

  writeln('Answer: ', val1, ' - ', val2, ' = ', sum);

  readln;
end;

procedure multiplication;
var
  val1, val2, sum : Integer;
begin
  clrscr;

  val1 := 0;
  val2 := 0;
  sum := 0;

  writeln('This is the Multiplication screen');

  writeln('Please enter your first value: ');
  readln(val1);

  writeln('Please enter your second value: ');
  readln(val2);

  sum := val1 * val2;

  writeln('Answer: ', val1, ' X ', val2, ' = ', sum);

  readln;
end;

procedure division;
var
  val1, val2, sum : Integer;
begin
  clrscr;

  val1 := 0;
  val2 := 0;
  sum := 0;

  writeln('This is the Division screen');

  writeln('Please enter your first value: ');
  readln(val1);

  writeln('Please enter your second value: ');
  readln(val2);

  sum := val1 div val2;

  writeln('Answer: ', val1, ' / ', val2, ' = ', sum);

  readln;
end;

procedure menu; { procedure declarations, if any}
{ local variables }
var
  optionSelect_Ord : Char;  {Ordinal Type}
  optionSelect : Integer;

begin
  repeat
    1: clrscr;
    writeln('Multipurpose Calculator');
    writeln; {providing whitespacing}
    gotoxy(4,3);
    writeln('1: Addition');
    gotoxy(4,4);
    writeln('2: Subtraction');
    gotoxy(4,5);
    writeln('3: Multiplication');
    gotoxy(4,6);
    writeln('4. Division');
    gotoxy(4,7);
    writeln('5. Exit Program');

    writeln;
    write('Please select an option: ');
    readln(optionSelect_Ord);
    writeln;
    optionSelect := (Ord(optionSelect_Ord) - 48);

    case optionSelect of
      1: addition;
      2: subtraction;
      3: multiplication;
      4: division;
      5: quit;
    end;

    if (optionSelect < 1) or (optionSelect > 5) then
    begin
      error;
      readln;
    end;

  until optionSelect = 5;
end;

begin { main program block starts}

  {Load the menu when the program starts}
  menu;

end. { the end of main program block }

