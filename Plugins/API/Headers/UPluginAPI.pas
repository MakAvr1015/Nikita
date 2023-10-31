unit UPluginAPI;

interface

type
  IAct = record
    FActName : WIdeString;
    FActGrp : WideString;
    FActCaption : WideString;
    FActParams : WideString;
    FPeriod_sec : integer;
  end;


  RActor = record
    FActorId : WideString;
    FActorFullName : WideString;
    FActorAdress  : WideString;
    FActorName : WideString;
  end;

  RSklad = record
    FId     : integer;
    FPrefix : WideString;
    FName : WideString;
  end;

  RGood = record
    FGoodId : integer;
    FGoodUID : WideString;
    FGoodArticle : WideString;
    FGoodName : WideString;
    FGoodInfo : WideString;
    FScancodes : Array of WideString;
  end;

  RDate = record
    Fday : integer;
    FMonth : integer;
    FYear : integer;
  end;

  RDocString = record
    FGood : RGood;
    FCount : integer;
    FPriceVal : Currency;
    FPriceSrc : Currency;
  end;

  RResult = record
    Fresult : integer;
    FMessage : WideString;
  end;

  RDocState = record
    FCode : integer;
    FName : WideString;
  end;

  TArrayGoods = array of RDocString;
 ///  <summary>
 ///  Заголовок товарного документа
 ///  </summary>
  RDocHead = record
    FDocId   : integer;
    FDocUid   : WideString;
    FDocNumber : WideString;
    FDocDate : RDate;
    FDocType : WideString;
    FDocState : RDocState;
    FDocSum : Currency;
    FDocCount : Integer;
    FDocInfo : WideString;
    FDocPrice : WideString;
    FSender : RActor;
    FRecipient : RActor;
    FSkladFrom : RSklad;
    FSkladTo : RSklad;
  end;


  TArrayAct = array of IAct;

  INApi = interface
    ['{8ADF0148-41BE-47E7-8300-1943F9EFB7FD}']
    function SendMsg(p_Message : WideString) : WideString;
  end;

  INPlugin = interface
    ['{1580B6FD-68E0-43BA-85EF-66CA4858B35A}']
    procedure Init(p_API : INApi);
    function GetActList : TArrayAct;
    function RunAct(p_Act : IAct) : WideString;
    function ConnectBase(p_ConString,p_User,p_Passwd,p_lib : WideString) :WideString;
  end;
  ///  <summary>
  ///  Документ движения товара
  ///  </summary>

  IDocument = interface
  ['{519EE63C-A44D-4CBF-BDA8-2309FD188823}']
    function GetDocHead : RDocHead;
    procedure SetDocHead(p_DocHead : RdocHead);
    property F_docHead : RDocHead read GetDochead write SetDocHead;
    function GetStrings : TArrayGoods;
    procedure SetStrings (p_Strings : TArrayGoods);
    property F_docStrings : TArrayGoods read GetStrings write SetStrings;
    procedure GetDocument(p_id : integer);
    function SetDocument : boolean;
    function GetDocState : RDocState;
    procedure SetDocState (p_doc_State : RDocState);
    property F_DocState : RDocState read GetDocState write SetDocState;
  end;

  TArrayDocs = array of IDocument;

  IDocJournal = interface
    ['{D39FDC2E-8C7C-425E-ACC7-71554FB95DE5}']
    function GetList(p_start, p_end: RDate) : TArrayDocs;
  end;

  TInitPluginFunc = function(const ACore: INApi): INPlugin; safecall;
//  TConnPluginFunc = function(AConString, AUser, APasswd : WideString) : Boolean; safecall;
//  TActNamePluginFunc = function : TArrayString; safecall;
//  TActPluginFunc = function(AActionName : WideString) : WideString; safecall;
  TDonePluginFunc = procedure; safecall;


const
  SPluginInitFuncName = '2AEF13180A1E4197BEDF5BDC530BE712';
  SPluginDoneFuncName = SPluginInitFuncName + '_done';
  SPluginBaseFuncName = SPluginInitFuncName + '_base';
  SPluginActFuncName = SPluginInitFuncName + '_act';
  SPluginListFuncName = SPluginInitFuncName + '_list';
  SPluginExt          = '.MyAppPlugin';

implementation

end.
