table 50121 Tagesbedarf
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Tagesbedarfnummer; Code[50])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Lagerort/Standort"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Rot","Blau","Gelb";
        }
        field(3; Datum; Date)
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(PK; Tagesbedarfnummer)
        {
            Clustered = true;
        }
    }

    var
        IDCheck: Record Tagesbedarf;

    trigger OnInsert()
    begin
        IDCheck.SetRange(Tagesbedarfnummer);
        if IDCheck.find('-') then
            repeat
                if (Tagesbedarfnummer = IDCheck.Tagesbedarfnummer) and ("Lagerort/Standort" = IDCheck."Lagerort/Standort") and (Datum = IDCheck.Datum) then
                    Error('Es gibt bereits einen Tagesbedarf mit dieser Nummer, Lagerort und Datum!');
            until IDCheck.Next() = 0;
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