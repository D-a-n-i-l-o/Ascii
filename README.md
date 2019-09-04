# Ascii

Monkey2 Ascii Chars Enumeration

## Usage
* #Import "\<Ascii\>"
* The Namespace is "Ascii"
* Ascii.Chars is an Enum with character names:
  * Ascii.Chars.Tilde
  * Ascii.Chars.Asterisk
  * Ascii.Chars.Tab
  * ...
* Ascii.ToString( index:Int ) returns a readable string for the first 33 characters (0-32)
* Ascii.ToString( index:Int ) returns the actual char for characters > 32

Example:

```monkey
#Import "<Ascii>"

Class MyClass

    Method IsLetter:Bool( c:Int )
        Return ( c >= Ascii.Chars.A And c <= Ascii.Chars.Z ) Or
               ( c >= Ascii.Chars.a And c <= Ascii.Chars.z ) Or
               ( c  = Ascii.Chars.Underscore )
    End

    Method IsDigit:Bool( c:Int )
        Return ( c >= Ascii.Chars._0 And c <= Ascii.Chars._9 )
    End

    Method IsHexDigit:Bool( c:Int )
        Return ( c >= Ascii.Chars._0 And c <= Ascii.Chars._9 ) Or
               ( c >= Ascii.Chars.A  And c <= Ascii.Chars.F  ) Or
               ( c >= Ascii.Chars.a  And c <= Ascii.Chars.f  )
    End

End
```
