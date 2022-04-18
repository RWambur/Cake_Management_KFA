page 50148 "Standard-Artikelkarte"
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
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Rezept)
            {
                ApplicationArea = All;
                RunObject = page "Rezept-Karte";

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}