using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;

public class Nightmare
{
    public NightmareType Type;

    public NightmareID TypeId
    {
        get { if (Type == null) return NightmareID.None; return Type.Id; }
        set { Type = NightmareBase.Get(value); }
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
