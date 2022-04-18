page 50144 "Tagesbedarfs-Karte"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Tagesbedarf;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Tagesbedarfnummer; Tagesbedarfnummer)
                {
                    ApplicationArea = All;

                }
                field("Lagerort/Standort"; "Lagerort/Standort")
                {
                    ApplicationArea = All;

                }
                field(Datum; Datum)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}