unit Nikita;

interface
  uses typeandconst;
  const link1 =  ('player1.txt');
  const link2 =  ('player2.txt');
  procedure Readfile(var Field1,field2:TPlayingField);
Implementation

  procedure Readfile(var Field1,field2:TPlayingField);
  var c:char;
  var f:file of char;
  var i,j:integer;
  begin
    assign(f,link1);
    reset(f);
    for i :=1 to 10 do
    begin
      for j:=1 to 10 do
      begin
        read(f,Field1[i,j]);
      end;
      read(f,c);
      read(f,c);
    end;
    {for i :=1 to 10 do
  begin
    for j:=1 to 10 do
     write(Field1[i,j]);
    writeln;
    end;  }
    assign(f,link2);
    reset(f);
    for i :=1 to 10 do
    begin
      for j:=1 to 10 do
      begin
        read(f,Field2[i,j]);
      end;
      read(f,c);
      read(f,c);
    end;

   {for i :=1 to 10 do
  begin
    for j:=1 to 10 do
    begin
     write(Field2[i,j]);
    end;
      writeln;
    end;        }

  end;

end.

