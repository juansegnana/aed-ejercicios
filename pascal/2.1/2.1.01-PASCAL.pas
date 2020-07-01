Program alfabeto;

var
    sec_abc : file of Char;
    v_abc : Char;
    cont_deA : Integer;
begin
    Assign(sec_abc, '2.1.01-alfabeto.txt');
    Reset(sec_abc);
    Read(sec_abc, v_abc);
    cont_deA := 0;
    while not Eof(sec_abc) do
    begin
      if v_abc = 'A' then
        cont_deA := cont_deA + 1;
      Read(sec_abc, v_abc);
    end;
    WriteLn('Total de A: ', cont_deA);
    Close(sec_abc);
end.;