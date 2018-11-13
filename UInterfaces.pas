unit UInterfaces;

interface


type
  IDoc = interface
    ['{F0D69B17-F340-43BA-833D-6318955E29DF}']
    function ChangeState (p_newstate : integer): integer;
    function ExportDoc  : PChar;
  end;
  INsi = interface
    ['{6A4EDBBB-0E8C-4718-BC53-5530EC157D7B}']
//    procedure EditNsiRecord (nsi_id : );
    function ExportNsi  : PChar;
  end;

implementation
end.
