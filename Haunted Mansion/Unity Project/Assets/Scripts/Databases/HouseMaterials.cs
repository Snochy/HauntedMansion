using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;

public class HouseMaterials
{
    public HouseMaterialsType Type;

    public HouseMaterialsID TypeId
    {
        get { if (Type == null) return HouseMaterialsID.None; return Type.Id; }
        set { Type = HouseMaterialsBase.Get(value); }
    }

    public override string ToString()
    {
        return Type.Name;
    }

    public static string ToLongString(string name, int amount)
    {
        if (amount > 1)
            return name + " x" + amount.ToString("N0");
        else
            return name;
    }
}
