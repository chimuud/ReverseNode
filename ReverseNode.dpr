program ReverseNode;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
  TMyNode = class
    Node: TMyNode;
    Data: string;
  public
    constructor Create(aData: string; aNode: TMyNode);
  end;

var
  MyNode,
  next: TMyNode;
begin
  try
    MyNode := TMyNode.Create('D', TMyNode.Create('B', TMyNode.Create('A', TMyNode.Create('C', nil))));
    while MyNode <> nil do
    begin
      next := MyNode.Node;
      MyNode.Node := MyNode;
      MyNode := Next;
    end;
    //to do with MyNode...
  finally
    MyNode.Free;
  end;
end.
