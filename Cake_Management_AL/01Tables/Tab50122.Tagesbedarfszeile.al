table 50122 Tagesbedarfszeile
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Tagesbedarfnummer; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = Tagesbedarf.Tagesbedarfnummer;

        }
        field(2; Zeilennummer; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(3; Artikelnummer; Code[30])
        {
            DataClassification = ToBeClassified;
            TableRelation = Rezept.Rohstoffartikelnummer;
        }
        field(4; Menge; Decimal)
        {
            DataClassification = ToBeClassified;
            TableRelation = Rezept.Menge;
        }
        field(5; Einheit; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Kilogramm","Liter";
            TableRelation = Rezept.Einheit;
        }
    }

    keys
    {
        key(PK; Tagesbedarfnummer, Zeilennummer)
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