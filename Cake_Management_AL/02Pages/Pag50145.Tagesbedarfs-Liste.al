page 50145 "Tagesbedarfs-Liste"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Tagesbedarf;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
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
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}