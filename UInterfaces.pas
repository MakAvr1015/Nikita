unit UInterfaces;

interface

uses
  Xml.XMLIntf;

type
  ///
  ///  <summary>
  ///  Документ
  ///  </summary>
  IDoc = interface
    ['{F0D69B17-F340-43BA-833D-6318955E29DF}']
    function ChangeState(p_newstate: integer): integer;
//    procedure AddPosition(P_good : integer;p_cnt : integer);
    function ExportDoc: PChar;
    /// <summary>
    ///  Загрузка документа из XML
    ///  </summary>
    procedure ImportXmlDoc (xmlDocument: IXMLNode);
  end;

  INsi = interface
    ['{6A4EDBBB-0E8C-4718-BC53-5530EC157D7B}']
    // procedure EditNsiRecord (nsi_id : );
    procedure Set_id(p_id : integer);
    function Get_id : integer;
    property f__id : integer read Get_ID write Set_id;
    function ExportNsi: PChar;
  end;
  ///
  ///  <summary>
  ///  Интерфейс для форм документов
  ///  </summary>
  IFrmDoc = interface
  ['{7741CD57-55AE-463E-BC55-64DFD1103F99}']

    procedure AddPosition(P_good : integer; p_cnt : integer; p_price : Currency = 0);
    procedure RefreshDoc;
    function GetTableName : string;
    function GetDocId : integer;
    property TableName : string read GetTableName;
    property DocId : integer read GetDocId;

  end;

  ///
  ///  <summary>
  ///  Интерфейс для действий
  ///  </summary>
  INAction = interface
    ['{066D3E35-7C34-401E-8EF8-BD69835BBDF7}']
    procedure Execute;
  end;
  ///
  ///  <summary>
  ///  Интерфейс для объекта, который поддерживает действия
  ///  </summary>
  IActObject = interface
    ['{9950C7E5-5923-4FCC-A46C-7E952DE8C9BB}']
    function GetAction(p_ActName : String) : INAction;
  end;

implementation

end.
