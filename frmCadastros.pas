unit frmCadastros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, Mask, DBCtrls, ExtCtrls,
  Buttons, ToolWin, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS,
  Menus, DBImgAsp, ImgList, RpDefine, RpCon, RpConDS;

type
  Tnivel = record
           n1,n2,n3:integer;
           end;
  TfrmCadastro = class(TForm)
    dbFilial: TMSTable;
    dsFilial: TDataSource;
    dbFilialFilial: TIntegerField;
    dbFilialNome: TStringField;
    dbFilialEndereco: TStringField;
    dbFilialCidade: TStringField;
    dbFilialUF: TStringField;
    dbFilialCep: TStringField;
    dbFilialFone: TStringField;
    dbFilialCGC: TStringField;
    dbFilialIE: TStringField;
    dbFilialDataInicio: TDateField;
    PopupMenu1: TPopupMenu;
    Novo1: TMenuItem;
    NovoSubitem1: TMenuItem;
    Renomear1: TMenuItem;
    Eliminar1: TMenuItem;
    EliminarSubitens1: TMenuItem;
    dsPlanoC: TDataSource;
    dbPlanoC: TMSTable;
    dbPagar: TMSTable;
    dbPlanoCCod1: TSmallintField;
    dbPlanoCCod2: TSmallintField;
    dbPlanoCCod3: TSmallintField;
    dbPlanoCDescricao: TStringField;
    N1: TMenuItem;
    N2: TMenuItem;
    dbFilialUsuario: TStringField;
    dbPagarFilial: TIntegerField;
    dbPagarCod1: TSmallintField;
    dbPagarCod2: TSmallintField;
    dbPagarCod3: TSmallintField;
    CopiadeOutraFilial1: TMenuItem;
    dbFilialUltimaNF: TIntegerField;
    dbPlanoC1: TMSTable;
    dbPlanoC1Cod1: TSmallintField;
    dbPlanoC1Cod2: TSmallintField;
    dbPlanoC1Cod3: TSmallintField;
    dbPlanoC1Descricao: TStringField;
    dbFilialCod1: TSmallintField;
    dbFilialCod2: TSmallintField;
    dbFilialCod3: TSmallintField;
    ColorDialog: TColorDialog;
    dsPlanoC1: TDataSource;
    dbBanco: TMSTable;
    dsBanco: TDataSource;
    dbBancoBanco: TSmallintField;
    dbBancoNome: TStringField;
    dbPlanoCIndicativo: TStringField;
    dbPlanoAux: TMSTable;
    dbPlanoAuxCod1: TSmallintField;
    dbPlanoAuxCod2: TSmallintField;
    dbPlanoAuxCod3: TSmallintField;
    dbPlanoAuxDescricao: TStringField;
    dbPlanoAuxIndicativo: TStringField;
    dbPlanoCDescricaoFC: TStringField;
    dsServico: TDataSource;
    dbAtividade: TMSTable;
    dsAtividade: TDataSource;
    dbAtividadeAtividade: TIntegerField;
    dbAtividadeNome: TStringField;
    ImgOk: TImageList;
    dbMensagem: TMSTable;
    dsMensagem: TDataSource;
    dbMensagemMsg: TStringField;
    pagCadastro: TPageControl;
    pagBanco: TTabSheet;
    Panel8: TPanel;
    cmdNovoB: TBitBtn;
    cmdGravaB: TBitBtn;
    cmdExcluiB: TBitBtn;
    tabBanco: TTabControl;
    grdBanco: TDBGrid;
    pagFilial: TTabSheet;
    Label26: TLabel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel14: TPanel;
    Panel15: TPanel;
    cmdAnterior: TBitBtn;
    cmdProximo: TBitBtn;
    cmdNovo: TBitBtn;
    cmdAltera: TBitBtn;
    cmdGrava: TBitBtn;
    cmdCancela: TBitBtn;
    cmdExclui: TBitBtn;
    pagMsg: TTabSheet;
    Panel16: TPanel;
    cmdNovoM: TBitBtn;
    cmdGravaM: TBitBtn;
    cmdExcluiM: TBitBtn;
    grdMsg: TDBGrid;
    pagPlano: TTabSheet;
    Panel1: TPanel;
    lblCodigo: TLabel;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    chkIndicativo: TDBCheckBox;
    DBEdit3: TDBEdit;
    Panel11: TPanel;
    cmdNovoP: TBitBtn;
    cmdGravaP: TBitBtn;
    cmdCancelaP: TBitBtn;
    cmdExcluiP: TBitBtn;
    cmdAbre: TBitBtn;
    cmdFecha: TBitBtn;
    cmdAtualiza: TBitBtn;
    cmdImpP: TBitBtn;
    BitBtn2: TBitBtn;
    TreePC: TTreeView;
    pagRamo: TTabSheet;
    Panel12: TPanel;
    cmdNovoA: TBitBtn;
    cmdGravaA: TBitBtn;
    cmdExcluiA: TBitBtn;
    tabAtividade: TTabControl;
    grdAtividade: TDBGrid;
    pagServico: TTabSheet;
    TabControl1: TTabControl;
    grdServico: TDBGrid;
    Panel9: TPanel;
    cmdNovoS: TBitBtn;
    cmdGravaS: TBitBtn;
    cmdExcluiS: TBitBtn;
    dbMensagemMsgTexto: TStringField;
    dbFilialRazao: TStringField;
    dbFilialCCM: TStringField;
    dbServico: TMSTable;
    dbServicoServico: TStringField;
    dbServicoNome: TStringField;
    dbServicoValorizado: TBooleanField;
    dbServicoValor: TCurrencyField;
    Panel10: TPanel;
    Label1: TLabel;
    DBText46: TDBText;
    rvPlanoC: TRvDataSetConnection;
    dbPlanoCIndicativoTexto: TStringField;
    dbPlanoCDescricao1: TStringField;
    Label7: TLabel;
    cmpCod: TDBEdit;
    Label8: TLabel;
    cmpNome: TDBEdit;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    Label20: TLabel;
    DBEdit12: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    cmbCredito: TDBLookupComboBox;
    Label21: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label22: TLabel;
    DBEdit5: TDBEdit;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit10: TDBEdit;
    Label19: TLabel;
    DBEdit11: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label23: TLabel;
    DBEdit15: TDBEdit;
    dbFilialContratoSaude: TStringField;
    dbFilialPSaude: TStringField;
    dbFilialContratoOdonto: TStringField;
    dbFilialPOdonto: TStringField;
    BitBtn1: TBitBtn;
    dbRemotoAud: TMSQuery;
    dbServicoVinculado: TStringField;
    dbServicoServicoU: TStringField;
    dbServicoBusca: TMSTable;
    dbServicoBuscaServico: TStringField;
    dbServicoBuscaNome: TStringField;
    dbServicoBuscaValorizado: TBooleanField;
    dbServicoBuscaValor: TCurrencyField;
    dbServicoBuscaVinculado: TStringField;
    dbServicoBuscaServicoU: TStringField;
    dbFilialBancoID: TSmallintField;
    Label4: TLabel;
    dbContas: TMSTable;
    dsContas: TDataSource;
    dbContasBancoID: TSmallintField;
    dbContasBanco: TSmallintField;
    dbContasAgencia: TStringField;
    dbContasConta: TStringField;
    dbContasContaTexto: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    Label6: TLabel;
    DBText1: TDBText;
    dbBBEmp: TMSTable;
    dbBBEmpFilial: TIntegerField;
    dbBBEmpNome: TStringField;
    dbBBEmpServidor: TStringField;
    dbBBEmpBancoDados: TStringField;
    dsBBEmp: TDataSource;
    dbFilialEmpresa: TStringField;
    Label13: TLabel;
    DBText2: TDBText;
    Label15: TLabel;
    procedure TreePCChange(Sender: TObject; Node: TTreeNode);
    function fnz(i,j,k:word):string;
    procedure MontaTree(tb:TMSTable);
    procedure TreePCDeletion(Sender: TObject; Node: TTreeNode);
    procedure TreePCEdited(Sender: TObject; Node: TTreeNode;
      var S: String);
    procedure CustoIndireto1Click(Sender: TObject);
    procedure NovoSubitem1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure EliminarSubitens1Click(Sender: TObject);
    procedure Renomear1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmdNovoClick(Sender: TObject);
    procedure cmdAlteraClick(Sender: TObject);
    procedure cmdGravaClick(Sender: TObject);
    procedure cmdCancelaClick(Sender: TObject);
    procedure cmdExcluiClick(Sender: TObject);
    procedure dsFilialStateChange(Sender: TObject);
    procedure dbFilialAfterCancel(DataSet: TDataSet);
    procedure dbFilialAfterInsert(DataSet: TDataSet);
    procedure dbFilialAfterPost(DataSet: TDataSet);
    procedure dbFilialBeforePost(DataSet: TDataSet);
    procedure dbFilialAfterScroll(DataSet: TDataSet);
    procedure dbPlanoC1FilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cmbCreditoClick(Sender: TObject);
    procedure cmdAnteriorClick(Sender: TObject);
    procedure cmdProximoClick(Sender: TObject);
    procedure cmbIRendaClick(Sender: TObject);
    procedure cmdNovoBClick(Sender: TObject);
    procedure cmdGravaBClick(Sender: TObject);
    procedure cmdExcluiBClick(Sender: TObject);
    procedure dsBancoStateChange(Sender: TObject);
    procedure dbBancoBeforePost(DataSet: TDataSet);
    procedure tabBancoChange(Sender: TObject);
    procedure dbPlanoCAfterPost(DataSet: TDataSet);
    procedure cmdImpPClick(Sender: TObject);
    procedure dbFilialBeforeDelete(DataSet: TDataSet);
    procedure dbPlanoCBeforeDelete(DataSet: TDataSet);
    procedure dbBancoBeforeDelete(DataSet: TDataSet);
    procedure dbPlanoCBeforePost(DataSet: TDataSet);
    procedure dbPlanoCAfterInsert(DataSet: TDataSet);
    procedure dsPlanoCDataChange(Sender: TObject; Field: TField);
    procedure cmdNovoPClick(Sender: TObject);
    procedure cmdGravaPClick(Sender: TObject);
    procedure cmdCancelaPClick(Sender: TObject);
    procedure cmdExcluiPClick(Sender: TObject);
    procedure cmdAbreClick(Sender: TObject);
    procedure cmdAtualizaClick(Sender: TObject);
    procedure dsPlanoCStateChange(Sender: TObject);
    procedure cmdFechaClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure cmdNovoSClick(Sender: TObject);
    procedure cmdGravaSClick(Sender: TObject);
    procedure cmdExcluiSClick(Sender: TObject);
    procedure dsServicoStateChange(Sender: TObject);
    procedure dbServicoAfterInsert(DataSet: TDataSet);
    procedure dbServicoAfterPost(DataSet: TDataSet);
    procedure dbServicoAfterCancel(DataSet: TDataSet);
    procedure dbServicoBeforePost(DataSet: TDataSet);
    procedure tabAtividadeChange(Sender: TObject);
    procedure dsAtividadeStateChange(Sender: TObject);
    procedure cmdNovoAClick(Sender: TObject);
    procedure cmdGravaAClick(Sender: TObject);
    procedure cmdExcluiAClick(Sender: TObject);
    procedure dbAtividadeAfterPost(DataSet: TDataSet);
    procedure dbAtividadeBeforePost(DataSet: TDataSet);
    procedure grdServicoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbAtividadeAfterCancel(DataSet: TDataSet);
    procedure dbAtividadeAfterInsert(DataSet: TDataSet);
    procedure grdServicoDblClick(Sender: TObject);
    procedure cmdNovoMClick(Sender: TObject);
    procedure cmdGravaMClick(Sender: TObject);
    procedure cmdExcluiMClick(Sender: TObject);
    procedure dsMensagemStateChange(Sender: TObject);
    procedure dbMensagemBeforePost(DataSet: TDataSet);
    procedure dbPlanoCCalcFields(DataSet: TDataSet);
    procedure dbServicoBeforeDelete(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbContasCalcFields(DataSet: TDataSet);
  private
    mk:string;
    fant,m1,m2,m3,m4,m5:integer;
    deletar:boolean;
  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;

implementation

uses frmPrincipal;

{$R *.dfm}

function TfrmCadastro.fnz(i,j,k:word):string;
var b,c:string;
begin
    b:=inttostr(100000+i);
    if m1<>0 then
    begin
        c:=copy(b, length(b)-m1+1, m1);
        b:=inttostr(100000+j);
        IF M2<>0 THEN
        begin
            c:=c+'.'+copy(b, length(b)-m2+1, m2);
            b:=inttostr(100000+k);
            IF M3<>0 THEN
            begin
                c:=c+'.'+copy(b, length(b)-m3+1, m3);
            end;
        end;
    end;
    result:=c;
end;

procedure TfrmCadastro.MontaTree(tb:TMSTable);
var k,n:integer;
    tn:ttreenode;
    ng:boolean;
    a:string;
    bc:^Tnivel;
begin
    screen.cursor:=crhourglass;
    treepc.items.clear;
    k:=1;
    tb.first;
    tn:=nil;
    ng:=false;
    while not tb.eof do
    begin
        n:=ord(tb.fieldbyname('Cod1').asinteger<>0)+
           ord(tb.fieldbyname('Cod2').asinteger<>0)+
           ord(tb.fieldbyname('Cod3').asinteger<>0);
        new(bc);
        with bc^ do
        begin
            n1:=tb.fieldbyname('Cod1').asinteger;
            n2:=tb.fieldbyname('Cod2').asinteger;
            n3:=tb.fieldbyname('Cod3').asinteger;
        end;
        a:=tb.fieldbyname('Descricao').asstring;
        if tb.fieldbyname('Cod2').value<>0 then
            if tb.fieldbyname('Cod1').value=1 then
                if tb.fieldbyname('Indicativo').asstring='S' then
                    a:=a+' - [Receita] '
                else
                    a:=a+' - [Não Receita] '
            else
                if tb.fieldbyname('Indicativo').asstring='S' then
                    a:=a+' - [Despesa]'
                else
                    a:=a+' - [Não Despesa] ';

        if n>k then
            tn:=treepc.Items.Addchild(tn,a)
        else
            if n<k then
            begin
                while (tn<>nil) and
                      (tn.level<>N-1) do
                    tn:=tn.parent;
                tn:=treepc.Items.Add(tn, a);
            end
            else tn:=treepc.items.add(tn, a);
        tn.Data:=bc;
        k:=n;
        tb.next;
    end;
    treepc.FullExpand;
//    lblCodigo.caption:=fnz(bc^.n1,bc^.n2,bc^.n3);
    lblCodigo.caption:=fnz(tb.fieldbyname('Cod1').asinteger,
                           tb.fieldbyname('Cod2').asinteger,
                           tb.fieldbyname('Cod3').asinteger);
    screen.cursor:=crdefault;
end;

procedure TfrmCadastro.TreePCChange(Sender: TObject; Node: TTreeNode);
var pc:^tnivel;
begin
    if node<>nil then
    begin
        pc:=Node.Data;
        if pc<>nil then
        begin
            dbPlanoC.Locate('Cod1;Cod2;Cod3',VarArrayof([pc.n1,pc.n2,pc.n3]),[]);
            lblCodigo.caption:=fnz(pc.n1,pc.n2,pc.n3);
        end;
    end;
end;

procedure TfrmCadastro.TreePCDeletion(Sender: TObject; Node: TTreeNode);
var bc:^tnivel;
begin
    bc:=Node.Data;
    if deletar then
    begin
        if dbPlanoC.Locate('Cod1;Cod2;Cod3',VarArrayof([bc^.n1,bc^.n2,bc^.n3]),[]) then
        begin
            dbPlanoC.delete;
        end;
    end;
    if bc<>nil then dispose(bc);
        Node.data:=nil;
    end;

procedure TfrmCadastro.TreePCEdited(Sender: TObject; Node: TTreeNode;
var S: String);
var bc:^tnivel;
begin
    bc:=Node.Data;
    if dbPlanoC.Locate('Cod1;Cod2;Cod3',VarArrayof([bc^.n1,bc^.n2,bc^.n3]),[]) then
        dbPlanoC.edit
    else dbPlanoC.insert;
    dbPlanoCCod1.asinteger:=bc^.n1;
    dbPlanoCCod2.asinteger:=bc^.n2;
    dbPlanoCCod3.asinteger:=bc^.n3;
    dbPlanoCDescricao.asstring:=copy(s,1,60);
    dbPlanoC.post;
    panel1.caption:=fnz(bc^.n1,bc^.n2,bc^.n3)+' '+s;
end;

procedure TfrmCadastro.CustoIndireto1Click(Sender: TObject);
var n1,n2,n3:integer;
bc:^Tnivel;
tn:ttreenode;
begin
    n1:=0;
    n2:=0;
    n3:=0;
    if  treepc.selected<>nil then
    begin
        bc:=treepc.selected.data;
        if treepc.selected.level=0 then
            n1:=1+bc^.n1 else n1:=bc^.n1;
        if treepc.selected.level=1 then
            n2:=1+treepc.selected.parent.Count
        else n2:=bc^.n2;
        if treepc.selected.level=2 then
            n3:=1+treepc.selected.parent.Count
        else n3:=bc^.n3;
    end
    else
    begin
        n1:=1;
        n2:=0;
        n3:=0;
    end;
    tn:=treepc.Items.Add(treepc.selected,'Item');
    new(bc);
    bc^.n1:=n1;
    bc^.n2:=n2;
    bc^.n3:=n3;
    tn.data:=bc;
    tn.EditText;
end;

procedure TfrmCadastro.NovoSubitem1Click(Sender: TObject);
var n1,n2,n3:integer;
bc:^Tnivel;
tn:ttreenode;
begin
    if treepc.selected<>nil then
    begin
        bc:=treepc.selected.data;
        n1:=bc^.n1;
        if treepc.selected.level=0 then
            n2:=1+treepc.selected.count
        else n2:=bc^.n2;
        if treepc.selected.level=1 then
            n3:=1+treepc.selected.Count
        else n3:=bc^.n3;
        tn:=treepc.Items.AddChild(treepc.selected,'Item');
        new(bc);
        bc^.n1:=n1;
        bc^.n2:=n2;
        bc^.n3:=n3;
        tn.data:=bc;
        tn.EditText;
    end;
end;

procedure TfrmCadastro.Eliminar1Click(Sender: TObject);
var i:Integer;
    bc:^tnivel;
begin
    bc:=treepc.selected.data;
    if dbPagar.Locate('Cod1;Cod2;Cod3',VarArrayof([bc^.n1,bc^.n2,bc^.n3]),[]) then
    begin
        showmessage('Impossível excluir este item. Existem previsões e pagamentos já efetuados nele.');
        abort;
    end;

    i:=application.messagebox('Deseja eliminar o item e TODOS os seus subitens?', 'Atenção', mb_Yesno);

    if i=idno then abort;

    deletar:=true;
    screen.cursor:=crhourglass;
    treepc.Selected.Delete;
    screen.cursor:=crDefault;
    deletar:=false;
end;

procedure TfrmCadastro.EliminarSubitens1Click(Sender: TObject);
var i:integer;
   bc:^Tnivel;
   b,c:integer;
begin
    bc:=treepc.selected.data;
    b:=bc^.n2;
    c:=bc^.n3;
    if b=0 then b:=9999;
    if c=0 then c:=9999;
    if dbPagar.Locate('Cod1;Cod2;Cod3',VarArrayof([bc^.n1,bc^.n2,bc^.n3]),[]) then
    begin
        showmessage('Impossível excluir este item. Existem previsões e pagamentos já efetuados nele.');
        abort;
    end;
    if treepc.selected<>nil then
    begin
        i:=application.messagebox('Deseja eliminar todos os subitens deste item?', 'Atenção', mb_yesno);
        if i=idno then abort;
        deletar:=true;
        screen.cursor:=crhourglass;
        treepc.Selected.DeleteChildren;
        screen.cursor:=crDefault;
        deletar:=false;
    end;
end;

procedure TfrmCadastro.Renomear1Click(Sender: TObject);
begin
    if treepc.selected<>nil then
        treepc.selected.EditText;
end;

procedure TfrmCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbFilial.Close;
    dbBBEmp.Close;
    dbContas.Close;
    dbPlanoC.Close;
    dbPlanoC1.Close;
    dbPlanoAux.Close;
    dbPagar.Close;
    dbBanco.Close;
    dbServico.Close;
    dbServicoBusca.Close;
    dbAtividade.Close;
    dbMensagem.Close;
end;

procedure TfrmCadastro.FormShow(Sender: TObject);
begin
    try
        dbPlanoC.Open;
        dbPlanoC1.Open;
        dbPlanoAux.Open;
        dbPagar.Open;
        dbContas.Open;
        dbFilial.Open;
        dbFilialAfterscroll(dbFilial);
        dbBBEmp.Open;
        dbBanco.Open;
        dbServico.Open;
        grdServico.Columns[0].ReadOnly:=true;
        dbServicoBusca.Open;
        dbAtividade.Open;
        dbMensagem.Open;
    finally
        cmpCod.Enabled:=false;
        pagCadastro.ActivePageIndex:=frmCadastro.tag;

        if not iMaster then
        begin
            pagFilial.TabVisible:=false;
            pagPlano.TabVisible:=false;
        end;

        if not frmMenu.AcessoMudo('Contas a Receber/Nota Fiscal') then
            pagMsg.TabVisible:=false;
        if not frmMenu.AcessoMudo('Fornecedores') then
            pagRamo.TabVisible:=false;
        if not frmMenu.AcessoMudo('Pagamento Prestadores') then
            pagServico.TabVisible:=false;
    end;
end;

procedure TfrmCadastro.FormCreate(Sender: TObject);
var a,m,d:word;
begin
    m1:=0;
    m2:=0;
    m3:=0;
    deletar:=false;
    treepc.items.clear;
    decodedate(date,a,m,d);
    mk:='##.##.###';
    m1:=pos('.', mk);
    if m1<>0 then
    begin
        mk:=copy(mk, m1+1, 255);
        m1:=m1-1;
        m2:=pos('.', mk);
        if m2<>0 then
        begin
            mk:=copy(mk, m2+1, 255);
            m2:=m2-1;
            m3:=pos('.', mk);
            if m3<>0 then
            begin
                mk:=copy(mk, m3+1, 255);
                m3:=m3-1;
            end else m3:=length(mk);
        end else m2:=length(mk);
    end else m1:=length(mk);
    dbPlanoC.Open;
    MontaTree(dbPlanoC);
end;

procedure TfrmCadastro.cmdNovoClick(Sender: TObject);
begin
    dbFilial.Insert;
    cmpCod.SetFocus;
end;

procedure TfrmCadastro.cmdAlteraClick(Sender: TObject);
begin
    dbFilial.Edit;
    cmpNome.SetFocus;
end;

procedure TfrmCadastro.cmdGravaClick(Sender: TObject);
begin
    dbFilial.Post;
end;

procedure TfrmCadastro.cmdCancelaClick(Sender: TObject);
begin
    dbFilial.Cancel;
end;

procedure TfrmCadastro.cmdExcluiClick(Sender: TObject);
var i:integer;
begin
    i:=application.messagebox('Você tem certeza de que deseja excluir esta Filial?',
        'Confirmação de Exclusão',mb_YesNo);
    if i=idno then abort;
    dbFilial.Delete;
end;

procedure TfrmCadastro.dsFilialStateChange(Sender: TObject);
begin
     cmdNovo.Enabled:=dbFilial.State in [dsEdit,dsBrowse,dsInsert];
     cmdExclui.Enabled:=(dbFilial.Active=true) and
                         (dbFilial.RecordCount<>0);
     cmdGrava.Enabled:=dbFilial.State in [dsEdit,dsInsert];
     cmdCancela.Enabled:=dbFilial.State in [dsEdit,dsInsert];
end;

procedure TfrmCadastro.dbFilialAfterCancel(DataSet: TDataSet);
begin
    cmpCod.Enabled:=false;
end;

procedure TfrmCadastro.dbFilialAfterInsert(DataSet: TDataSet);
begin
    cmpCod.Enabled:=true;
end;

procedure TfrmCadastro.dbFilialAfterPost(DataSet: TDataSet);
begin
    cmpCod.Enabled:=false;
end;

procedure TfrmCadastro.dbFilialBeforePost(DataSet: TDataSet);
begin
    if not dbBBEmp.Locate('Filial',dbFilialFilial.value,[]) then
    begin
        ShowMessage('Filial selecionada não disponivel no cadastro de Empresas');
        abort;
    end;

    dbPlanoC1.Locate('Descricao',cmbCredito.KeyValue,[]);
    dbFilialCod1.asinteger:=dbPlanoC1cod1.asinteger;
    dbFilialCod2.asinteger:=dbPlanoC1cod2.asinteger;
    dbFilialCod3.asinteger:=dbPlanoC1cod3.asinteger;

    if dbFilialCod3.value=0 then
    begin
        ShowMessage('Selecione o Plano de Contas para crédito de duplicatas');
        abort;
    end;

    ShowMessage('Certifique-se de que a Filial cadastrada é a mesma selecionada no Cadastro de Empresas');

    dbFilialUsuario.value:=iUsuario;
    if dbFilial.State=dsInsert then
        frmMenu.Log('Cadastro Filiais','Filial',dbFilialFilial.value,0,'','I');
end;

procedure TfrmCadastro.dbFilialAfterScroll(DataSet: TDataSet);
begin
    if dbPlanoC1.Locate('Cod1;Cod2;Cod3',VarArrayof([dbFilialcod1.asinteger,
                                                     dbFilialcod2.asinteger,
                                                     dbFilialcod3.asinteger]),[]) then
        cmbCredito.keyvalue:=dbPlanoC1descricao.asstring;
end;

procedure TfrmCadastro.dbPlanoC1FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=(dbPlanoC1Cod3.value>0) and
            (dbPlanoC1Cod1.value=1);
end;

procedure TfrmCadastro.cmbCreditoClick(Sender: TObject);
begin
    dbFilial.Edit;
end;

procedure TfrmCadastro.cmdAnteriorClick(Sender: TObject);
begin
    dbFilial.Prior;
end;

procedure TfrmCadastro.cmdProximoClick(Sender: TObject);
begin
    dbFilial.Next;
end;

procedure TfrmCadastro.cmbIRendaClick(Sender: TObject);
begin
    dbFilial.Edit;
end;

procedure TfrmCadastro.cmdNovoBClick(Sender: TObject);
begin
    dbBanco.Insert;
    grdBanco.SetFocus;
end;

procedure TfrmCadastro.cmdGravaBClick(Sender: TObject);
begin
    dbBanco.Post;
end;

procedure TfrmCadastro.cmdExcluiBClick(Sender: TObject);
begin
    dbBanco.Delete;
end;

procedure TfrmCadastro.dsBancoStateChange(Sender: TObject);
begin
     cmdNovoB.Enabled:=dbBanco.State=dsBrowse;
     cmdGravaB.Enabled:=dbBanco.State in [dsEdit,dsInsert];
     cmdExcluiB.Enabled:=(dbBanco.Active=true) and
                         (dbBanco.RecordCount<>0);
end;

procedure TfrmCadastro.dbBancoBeforePost(DataSet: TDataSet);
begin
    if dbBancoBanco.value=0 then
     begin
        ShowMessage('Banco inválido');
        abort;
    end;
    if dbBancoNome.value='' then
     begin
        ShowMessage('Nome inválido');
        abort;
    end;
    if dbBanco.State=dsInsert then
         frmMenu.Log('Cadastro Bancos','Banco',dbBancoBanco.value,0,'','');
end;

procedure TfrmCadastro.tabBancoChange(Sender: TObject);
begin
    case tabBanco.tabindex of
    0:dbBanco.IndexFieldNames:='Banco';
    1:dbBanco.IndexFieldNames:='Nome';
    end;
end;

procedure TfrmCadastro.dbPlanoCAfterPost(DataSet: TDataSet);
var c1,c2:integer;
var ind:string;
begin
    if dbPlanoCCod3.value=0 then
    begin
        c1:=dbPlanoCCod1.value;
        c2:=dbPlanoCCod2.value;
        ind:=dbPlanoCIndicativo.value;
        dbPlanoAux.Locate('Cod1;Cod2',VarArrayof([c1,c2]),[]);
        while (not dbPlanoAux.eof) and
              (dbPlanoAuxCod1.value=c1) and
              (dbPlanoAuxCod2.value=c2) do
        begin
            dbPlanoAux.Edit;
            dbPlanoAuxIndicativo.value:=ind;
            dbPlanoAux.Post;
            dbPlanoAux.Next;
        end;
        dbPlanoC.Refresh;
        MontaTree(dbPlanoC);
    end;
end;

procedure TfrmCadastro.cmdImpPClick(Sender: TObject);
begin
    frmMenu.rvFin.SelectReport('relPlanoC',true);
    frmMenu.rvFin.Execute;
end;

procedure TfrmCadastro.dbFilialBeforeDelete(DataSet: TDataSet);
begin
     frmMenu.Log('Cadastro Filiais','Filial',dbFilialFilial.value,0,'','E');
end;

procedure TfrmCadastro.dbPlanoCBeforeDelete(DataSet: TDataSet);
begin
     frmMenu.Log('Cadastro Plano de Contas','Cod1-Cod2-Cod3',dbPlanoCCod1.value,dbPlanoCCod2.value,InttoStr(dbPlanoCCod3.value),'E');
end;

procedure TfrmCadastro.dbBancoBeforeDelete(DataSet: TDataSet);
begin
     frmMenu.Log('Cadastro Bancos','Banco',dbBancoBanco.value,0,'','E');
end;

procedure TfrmCadastro.dbPlanoCBeforePost(DataSet: TDataSet);
var tn:ttreenode;
var a:string;
begin
    if dbPlanoC.State=dsInsert then
    begin
        a:=dbPlanoCDescricao.value;
        if dbPlanoCCod2.value<>0 then
            if dbPlanoCCod1.value=1 then
                if dbPlanoCIndicativo.value='S' then
                    a:=a+' - [Receita] '
                else
                    a:=a+' - [Não Receita] '
            else
                if dbPlanoCIndicativo.value='S' then
                    a:=a+' - [Despesa]'
                else
                    a:=a+' - [Não Despesa] ';
         tn:=treepc.Items.AddChild(treepc.selected,a);
    end;
    if dbPlanoC.State=dsEdit then
    begin
        a:=dbPlanoCDescricao.value;
        if dbPlanoCCod2.value<>0 then
            if dbPlanoCCod1.value=1 then
                if dbPlanoCIndicativo.value='S' then
                    a:=a+' - [Receita] '
                else
                    a:=a+' - [Não Receita] '
            else
                if dbPlanoCIndicativo.value='S' then
                    a:=a+' - [Despesa]'
                else
                    a:=a+' - [Não Despesa] ';
        treepc.selected.Text:=a;
    end;
    if dbPlanoC.State=dsInsert then
         frmMenu.Log('Cadastro Plano de Contas','Cod1-Cod2-Cod3',dbPlanoCCod1.value,dbPlanoCCod2.value,InttoStr(dbPlanoCCod3.value),'I');
end;

procedure TfrmCadastro.dbPlanoCAfterInsert(DataSet: TDataSet);
begin
    dbPlanoCIndicativo.value:='S';
end;

procedure TfrmCadastro.dsPlanoCDataChange(Sender: TObject; Field: TField);
begin
    if dbPlanoCCod1.value=1 then
        chkIndicativo.caption:='Receita'
    else
        chkIndicativo.caption:='Despesa';

    if (dbPlanoCCod2.value=0) or (dbPlanoCCod3.value<>0) then
        chkIndicativo.Visible:=false
    else
        chkIndicativo.Visible:=true; 
end;

procedure TfrmCadastro.cmdNovoPClick(Sender: TObject);
var n1,n2,n3:integer;
bc:^Tnivel;
tn:ttreenode;
begin
    if treepc.Selected=nil then
    begin
        ShowMessage('Selecione um item para criar seu sub-item');
        abort;
    end;    
        bc:=treepc.selected.data;
        n1:=bc^.n1;
        if treepc.selected.level=0 then
        begin
            ShowMessage('Para incluir neste nivel, consulte a Andros Informática');
            abort;
//            n2:=1+treepc.selected.count
        end
        else n2:=bc^.n2;
        if (treepc.selected.level=1) then
            n3:=1+treepc.selected.Count
        else n3:=bc^.n3;
        if (treepc.selected.level=2) then
        begin
            ShowMessage('Selecione um nivel acima para incluir');
            abort;
        end;
        dbPlanoC.Insert;
        dbPlanoCCod1.value:=n1;
        dbPlanoCCod2.value:=n2;
        dbPlanoCCod3.Value:=n3;
        lblCodigo.caption:=fnz(n1,n2,n3);
end;

procedure TfrmCadastro.cmdGravaPClick(Sender: TObject);
begin
    dbPlanoC.Post;
end;

procedure TfrmCadastro.cmdCancelaPClick(Sender: TObject);
begin
    dbPlanoC.Cancel;
end;

procedure TfrmCadastro.cmdExcluiPClick(Sender: TObject);
var i:Integer;
    bc:^tnivel;
   b,c:integer;
begin
    bc:=treepc.selected.data;
    b:=bc^.n2;
    c:=bc^.n3;
    if (b=0) or (c=0) then
    begin
        ShowMessage('Escolha um nivel abaixo para excluir');
        abort;
    end;
    if dbPagar.Locate('Cod1;Cod2;Cod3',VarArrayof([bc^.n1,bc^.n2,bc^.n3]),[]) then
    begin
        showmessage('Impossível excluir este item. Existem previsões e pagamentos já efetuados nele.');
        abort;
    end;

    i:=application.messagebox('Confirme a exclusão deste sub-item', 'Atenção', mb_Yesno);

    if i=idno then abort;

    deletar:=true;
    screen.cursor:=crhourglass;
    treepc.Selected.Delete;
    screen.cursor:=crDefault;
    deletar:=false;
end;

procedure TfrmCadastro.cmdAbreClick(Sender: TObject);
begin
    treepc.FullExpand;
end;

procedure TfrmCadastro.cmdAtualizaClick(Sender: TObject);
begin
    MontaTree(dbPlanoC);
end;

procedure TfrmCadastro.dsPlanoCStateChange(Sender: TObject);
begin
     cmdNovoP.Enabled:=dbPlanoC.State=dsBrowse;
     cmdGravaP.Enabled:=dbPlanoC.State in [dsEdit,dsInsert];
     cmdExcluiP.Enabled:=(dbPlanoC.Active=true) and
                         (dbPlanoC.RecordCount<>0);
     cmdCancelaP.Enabled:=dbPlanoC.State in [dsEdit,dsInsert];
end;

procedure TfrmCadastro.cmdFechaClick(Sender: TObject);
begin
    treepc.FullCollapse;
end;

procedure TfrmCadastro.BitBtn2Click(Sender: TObject);
begin
    frmMenu.ExcelExport.Dataset:=dbPlanoC;
    frmMenu.ExcelExport.ExportDataset;
    frmMenu.ExcelExport.Disconnect;
end;

procedure TfrmCadastro.cmdNovoSClick(Sender: TObject);
begin
    dbServico.Insert;
    grdServico.SetFocus;
end;

procedure TfrmCadastro.cmdGravaSClick(Sender: TObject);
begin
    dbServico.Post;
end;

procedure TfrmCadastro.cmdExcluiSClick(Sender: TObject);
var i:integer;
begin
    i:=application.messagebox('Você tem certeza de que deseja excluir?',
        'Confirmação de Exclusão',mb_YesNo);
    if i=idno then abort;
    dbServico.Delete;
end;

procedure TfrmCadastro.dsServicoStateChange(Sender: TObject);
begin
     cmdNovoS.Enabled:=dbServico.State=dsBrowse;
     cmdGravaS.Enabled:=dbServico.State in [dsEdit,dsInsert];
     cmdExcluiS.Enabled:=(dbServico.Active=true) and
                         (dbServico.RecordCount<>0);
end;

procedure TfrmCadastro.dbServicoAfterInsert(DataSet: TDataSet);
begin
   grdServico.Columns[0].ReadOnly:=false;
end;

procedure TfrmCadastro.dbServicoAfterPost(DataSet: TDataSet);
begin
    grdServico.Columns[0].ReadOnly:=true;
end;

procedure TfrmCadastro.dbServicoAfterCancel(DataSet: TDataSet);
begin
    grdServico.Columns[0].ReadOnly:=true;
end;

procedure TfrmCadastro.dbServicoBeforePost(DataSet: TDataSet);
begin
    if (dbServicoValorizado.value=false) and
       (dbServicoValor.value>0) then
    begin
      ShowMessage('Serviço não valorizado');
      dbServicoValor.value:=0;
    end;
    if dbServicoServicoU.value<>'' then
    begin
        if not dbServicoBusca.Locate('Servico',dbServicoServicoU.value,[]) then
        begin
            ShowMessage('Serviço a ser vinculado não cadastrado');
            dbServicoServicoU.value:='';
        end;
        if (dbServicoBusca.Locate('Servico',dbServicoServicoU.value,[])) and
           (dbServicoBuscaServicoU.value<>'')  then
        begin
            ShowMessage('Serviço não pode ser vinculado a um servico que seja tambem vinculado');
            dbServicoServicoU.value:='';
        end;
   end;

    dbServicoServico.value:=UpperCase(dbServicoServico.value);

    if dbServico.State=dsInsert then
        frmMenu.Log('Cadastro Servicos','Servico',0,0,dbServicoServico.value,'I');
end;

procedure TfrmCadastro.tabAtividadeChange(Sender: TObject);
begin
    case tabAtividade.tabindex of
    0:dbAtividade.IndexFieldNames:='Atividade';
    1:dbAtividade.IndexFieldNames:='Nome';
    end;

end;

procedure TfrmCadastro.dsAtividadeStateChange(Sender: TObject);
begin
     cmdNovoA.Enabled:=dbAtividade.State=dsBrowse;
     cmdGravaA.Enabled:=dbAtividade.State in [dsEdit,dsInsert];
     cmdExcluiA.Enabled:=(dbAtividade.Active=true) and
                         (dbAtividade.RecordCount<>0);
end;

procedure TfrmCadastro.cmdNovoAClick(Sender: TObject);
begin
    dbAtividade.Insert;
    grdAtividade.SetFocus;
end;

procedure TfrmCadastro.cmdGravaAClick(Sender: TObject);
begin
    dbAtividade.Post;
end;

procedure TfrmCadastro.cmdExcluiAClick(Sender: TObject);
var i:integer;
begin
    i:=application.messagebox('Você tem certeza de que deseja excluir?',
        'Confirmação de Exclusão',mb_YesNo);
    if i=idno then abort;
    dbAtividade.Delete;
end;

procedure TfrmCadastro.dbAtividadeAfterPost(DataSet: TDataSet);
begin
     grdAtividade.Columns[0].ReadOnly:=true;
end;

procedure TfrmCadastro.dbAtividadeBeforePost(DataSet: TDataSet);
begin
    if dbAtividadeAtividade.value=0 then
     begin
        ShowMessage('Atividade inválida');
        abort;
    end;
    if dbAtividadeNome.value='' then
     begin
        ShowMessage('Nome inválido');
        abort;
    end;
    if dbAtividade.State=dsInsert then
         frmMenu.Log('Cadastro Atividades','Atividade',dbAtividadeAtividade.value,0,'','');
end;

procedure TfrmCadastro.grdServicoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if Column.Field=dbServicoValorizado then
     begin
      grdServico.Canvas.FillRect((Rect));
      ImgOk.Draw(grdServico.Canvas,Rect.Left+10,Rect.Top+1,0);

      if dbServicoValorizado.value=true then
        ImgOk.Draw(grdServico.Canvas,Rect.Left+10,Rect.Top+1,1);
     end;
end;

procedure TfrmCadastro.dbAtividadeAfterCancel(DataSet: TDataSet);
begin
    grdatividade.Columns[0].ReadOnly:=true;
end;

procedure TfrmCadastro.dbAtividadeAfterInsert(DataSet: TDataSet);
begin
    grdatividade.Columns[0].ReadOnly:=false;
end;

procedure TfrmCadastro.grdServicoDblClick(Sender: TObject);
begin
    dbServico.Edit;
    if dbServicoValorizado.value=true then
       dbServicoValorizado.value:=false
    else
       dbServicoValorizado.value:=true;
    dbServico.Post;
end;

procedure TfrmCadastro.cmdNovoMClick(Sender: TObject);
begin
    dbMensagem.Insert;
    grdMsg.SetFocus;
end;

procedure TfrmCadastro.cmdGravaMClick(Sender: TObject);
begin
    dbMensagem.Post;
end;

procedure TfrmCadastro.cmdExcluiMClick(Sender: TObject);
begin
    dbMensagem.Delete;
end;

procedure TfrmCadastro.dsMensagemStateChange(Sender: TObject);
begin
     cmdNovoM.Enabled:=dbMensagem.State=dsBrowse;
     cmdGravaM.Enabled:=dbMensagem.State in [dsEdit,dsInsert];
     cmdExcluiM.Enabled:=(dbMensagem.Active=true) and
                         (dbMensagem.RecordCount<>0);
end;

procedure TfrmCadastro.dbMensagemBeforePost(DataSet: TDataSet);
begin
    if dbMensagemMsg.value='' then
     begin
        ShowMessage('Código inválido');
        abort;
    end;
    if dbMensagemMsgTexto.value='' then
    begin
        ShowMessage('Texto inválido');
        abort;
    end;
end;

procedure TfrmCadastro.dbPlanoCCalcFields(DataSet: TDataSet);
begin
    if (dbPlanoCCod2.value=0) and (dbPlanoCCod3.value=0) then
        dbPlanoCDescricao1.Value:=dbPlanoCDescricao.value;
    if (dbPlanoCCod2.value<>0) and (dbPlanoCCod3.value=0) then
        dbPlanoCDescricao1.Value:='         '+dbPlanoCDescricao.value;
    if (dbPlanoCCod2.value<>0) and (dbPlanoCCod3.value<>0) then
        dbPlanoCDescricao1.Value:='                  '+dbPlanoCDescricao.value;

    if dbPlanoCCod1.value=1 then
        if dbPlanoCIndicativo.value='S' then
            dbPlanoCIndicativoTexto.value:='[Receita] '
        else
            dbPlanoCIndicativoTexto.value:='[Não Receita] '
    else
        if dbPlanoCIndicativo.value='S' then
            dbPlanoCIndicativoTexto.value:='[Despesa]'
        else
            dbPlanoCIndicativoTexto.value:='[Não Despesa] ';

end;

procedure TfrmCadastro.dbServicoBeforeDelete(DataSet: TDataSet);
begin
    frmMenu.Log('Cadastro Servicos','Servico',0,0,dbServicoServico.value,'E');
end;

procedure TfrmCadastro.BitBtn1Click(Sender: TObject);
var i:integer;
begin
{    ShowMessage('Atenção! Faça a copia apenas da Auditoria para Serviços, não o contrario.');
    i:=Application.MessageBox('Confirme a Copia da Tabela toda para a outra filial!',
     'Aviso', mb_yesno+ mb_iconExclamation);

    if(i=id_no) then abort;

    try
        if not frmMenu.dadosfinRemoto.Connected then
            frmMenu.dadosfinRemoto.Connected:=true;
        if not frmMenu.dadosaudRemoto.Connected then
            frmMenu.dadosaudRemoto.Connected:=true;
    except
        ShowMessage('Erro ao abrir Bancos de Dados Remotos');
        abort;
    end;

    dbRemotoAud.SQL.Text:='Delete from Servicos ';
    dbRemotoAud.Execute;

    dbRemotoAud.SQL.Text:='Select * from Servicos ';
    dbRemotoAud.Open;

    dbServico.First;
    while not dbServico.eof do
    begin
        dbRemotoAud.Insert;
        for i:=0 to dbRemotoAud.FieldCount-1 do
            dbRemotoAud.fields[i].assign(dbServico.fieldbyname(dbRemotoAud.fields[i].fieldname));
        dbRemotoAud.Post;
        dbServico.Next;
    end;
    ShowMessage('Tabela copiada com sucesso');  }
end;

procedure TfrmCadastro.dbContasCalcFields(DataSet: TDataSet);
begin
    dbContasContaTexto.value:=IntToSTr(dbContasBanco.value)+'- Ag.'+
                              Trim(dbContasAgencia.value)+'- C/C '+
                              Trim(dbContasConta.value);
end;

end.
