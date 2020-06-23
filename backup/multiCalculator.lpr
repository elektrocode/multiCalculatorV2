program multiCalculator;
{$APPTYPE CONSOLE}

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

procedure option1;
{local declaration}
begin
  clrscr;
  writeln('This is option1');
  readln;
end;

procedure option2;
begin
  clrscr;
  writeln('This is option2');
  readln;
end;

procedure option3;
begin
  clrscr;
  writeln('This is option3');
  readln;
end;

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

procedure menu; { procedure declarations, if any}
{ local variables }
var
  optionSelectO : Char;
  optionSelect : Integer;

begin
  repeat
    1: clrscr;
    writeln('Multipurpose Calculator');
    writeln; {providing whitespacing}
    gotoxy(4,3);
    writeln('1: Option 1');
    gotoxy(4,4);
    writeln('2: Option 2');
    gotoxy(4,5);
    writeln('3: Option 3');
    gotoxy(4,6);
    writeln('4. Exit Program');

    writeln;
    write('Please select an option: ');
    readln(optionSelectO);
    writeln;
    optionSelect := (Ord(optionSelectO) - 48);


    case optionSelect of
      1: option1;
      2: option2;
      3: option3;
      4: quit;
    end;

    if (optionSelect < 1) or (optionSelect > 4) then
    begin
      error;
      readln;
    end;

  until optionSelect = 4;
end;

begin { main program block starts}

  menu;

end. { the end of main program block }

