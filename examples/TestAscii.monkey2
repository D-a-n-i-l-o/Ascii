#Import "<Ascii>"

Function Main()

    For Local i:Int = Ascii.Chars.A To Ascii.Chars.Z
        Print String( i ) + "~t- " + Ascii.ToString(i)
    Next
    For Local i:Int = Ascii.Chars.z To Ascii.Chars.a Step -1
        Print String( i ) + "~t- " + Ascii.ToString(i)
    Next
    For Local i:Int = Ascii.Chars._0 To Ascii.Chars._9
        Print String( i ) + "~t- " + Ascii.ToString(i)
    Next

    Print "~n----------~n"

    Print String.FromChar( Ascii.Chars.Lowercase_i ) + " - " + Int( Ascii.Chars.Lowercase_i )

    Print "~n----------~n"

    Print Ascii.ToString( Ascii.Chars.Space )
    Print Ascii.ToString( 0 )
    Print Ascii.ToString( 126 )
    Print Ascii.ToString( Ascii.Chars.Tilde )

    Print "~n----------~n"

    Local s:String
    For Local i := 0 To 127
        If i And i Mod 33 = 0 Then s += "~n"
        s += Ascii.ToString( i ) + " "
    Next
    Print s
    
End
