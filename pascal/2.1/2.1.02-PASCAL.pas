// Contador de consonantes.
Program CONSONANTES;

var
    sec_alf : file of Char;
    v_alf : Char;
    vocales : set of Char;
    cont_constantes : Integer;
begin
    cont_constantes := 0;
    vocales := ['a', 'e', 'i', 'o', 'u'];
    Assign(sec_alf, '2.1.02-consonante.txt');
    Reset(sec_alf);
    Read(sec_alf, v_alf);

    while not Eof(sec_alf) do
    begin
      if not (v_alf in vocales) then
        cont_constantes := cont_constantes +1;
        Read(sec_alf, v_alf);
    end;
    WriteLn('Cantidad de consonantes: ', cont_constantes);
    Close(sec_alf);
end.;