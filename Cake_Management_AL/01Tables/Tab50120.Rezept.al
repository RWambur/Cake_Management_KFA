table 50120 Rezept
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Hauptartikelnummer; Code[4])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Rohstoffartikelnummer; Code[4])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Menge; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(4; Einheit; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Kilogramm","Liter";
        }

    }

    keys
    {
        key(PK; Hauptartikelnummer, Rohstoffartikelnummer)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}