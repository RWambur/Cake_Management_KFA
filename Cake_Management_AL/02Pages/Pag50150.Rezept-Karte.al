page 50150 "Rezept-Karte"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Rezept;

    layout
    {
        area(Content)
        {
            group(Allgemein)
            {
                field(Hauptartikelnummer; Hauptartikelnummer)
                {
                    ApplicationArea = All;

                }
                field(Rohstoffartikelnummer; Rohstoffartikelnummer)
                {
                    ApplicationArea = All;

                }
                field(Menge; Menge)
                {
                    ApplicationArea = All;

                }
                field(Einheit; Einheit)
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