#Rem

    Ascii character names enumeration from 0 to 127
    
    by Danilo, 2019/09/03
    
    History:
    - 2019/09/03 Initial version
    - 2019/09/04 Added MonkeyDocs, added 'Dot' and 'Hashtag' names

#End

'
' Import for monkey.types.String
'
#Import "<monkey>"

Namespace Ascii

    #Rem monkeydoc Get a readable string for Ascii control characters

        Ascii.ToString() returns a readable string for
        Ascii control characters 0 - 31 and for char 32 (Space).
        
        For chars > 32 the actual char is returned as a String.

        @param index is the character code, usually between 0 and 127. Chars > 127 may differ depending on OS/Platform/CodePage.

        @return A string with the control character name (0-31), "Space" for char 32, or the character itself for characters > 32

        @example
\#Import "<Ascii>"

Function Main()
    Print Ascii.ToString(  9 )                     ' Output: "Tab"
    Print Ascii.ToString( 10 )                     ' Output: "LF"
    Print Ascii.ToString( 13 )                     ' Output: "CR"

    Print Ascii.ToString( Ascii.Chars.Minus    )   ' Output: "-"
    Print Ascii.ToString( Ascii.Chars.Multiply )   ' Output: "*"
End
        @end

    #End
    Function ToString:String( index:Int )
        If index >= 0 And index < 256
            Return index <= Chars.Space ? _names[index] Else String.FromChar(index)
        Endif
        Return String.FromChar(index)
    End


    #Rem monkeydoc Enum with names for Ascii characters 0 - 127

        |Value| Char | Name 1                | Name 2                | Name 3                | Name 4                |
        |----:|------|:----------------------|:----------------------|:----------------------|:----------------------|
        |   0 |      | Nul                   | NullCharacter         |                       |
        |   1 |      | SOH                   | StartOfHeader         |                       |
        |   2 |      | STX                   | StartOfText           |                       |
        |   3 |      | ETX                   | EndOfText             |                       |
        |   4 |      | EOT                   | EndOfTransmission     |                       |
        |   5 |      | ENQ                   | Enquiry               |                       |
        |   6 |      | ACK                   | Acknowledgement       |                       |
        |   7 |      | BEL                   | Bell                  |                       |
        |   8 |      | BS                    | Backspace             |                       |
        |   9 |      | HT                    | HorizontalTab         | Tab                   | Tabulator
        |  10 |      | LF                    | LineFeed              |                       |
        |  11 |      | VT                    | VerticalTab           |                       |
        |  12 |      | FF                    | FormFeed              |                       |
        |  13 |      | CR                    | CarriageReturn        |                       |
        |  14 |      | SO                    | ShiftOut              |                       |
        |  15 |      | SI                    | ShiftIn               |                       |
        |  16 |      | DLE                   | DataLinkEscape        |                       |
        |  17 |      | DC1                   | DeviceControl1        |                       |
        |  18 |      | DC2                   | DeviceControl2        |                       |
        |  19 |      | DC3                   | DeviceControl3        |                       |
        |  20 |      | DC4                   | DeviceControl4        |                       |
        |  21 |      | NAK                   |NegativeAcknowledgement|                       |
        |  22 |      | SYN                   | SynchronousIdle       |                       |
        |  23 |      | ETB                   | EndOfTransferBlock    |                       |
        |  24 |      | CAN                   | Cancel                |                       |
        |  25 |      | EM                    | EndOfMedium           |                       |
        |  26 |      | SUB                   | Substitute            |                       |
        |  27 |      | ESC                   | Escape                |                       |
        |  28 |      | FS                    | FileSeparator         |                       |
        |  29 |      | GS                    | GroupSeparator        |                       |
        |  30 |      | RS                    | RecordSeparator       |                       |
        |  31 |      | US                    | UnitSeparator         |                       |
        |  32 |      | Space                 |                       |                       |
        |  33 | !    | ExclamationPoint      |                       |                       |
        |  34 |\"  \"| DoubleQuote           | DQ                    |                       |
        |  35 | #    | NumberSign            | Hash                  | Hashtag               |
        |  36 | $    | DollarSign            | Dollar                |                       |
        |  37 | %    | PercentSign           | Percent               |                       |
        |  38 | \&   | Ampersand             |                       |                       |
        |  39 | '    | SingleQuote           | Quote                 |                       |
        |  40 | (    | OpeningParenthesis    |                       |                       |
        |  41 | )    | ClosingParenthesis    |                       |                       |
        |  42 | *    | Asterisk              | Multiply              |                       |
        |  43 | +    | PlusSign              | Plus                  |                       |
        |  44 | ,    | Comma                 |                       |                       |
        |  45 | -    | MinusSign             | Minus                 |                       |
        |  46 | .    | Period                | Point                 | Dot                   |
        |  47 | /    | Slash                 | Divide                |                       |
        |  48 | 0    | Zero                  | Number_0              | _0                    |
        |  49 | 1    | One                   | Number_1              | _1                    |
        |  50 | 2    | Two                   | Number_2              | _2                    |
        |  51 | 3    | Three                 | Number_3              | _3                    |
        |  52 | 4    | Four                  | Number_4              | _4                    |
        |  53 | 5    | Five                  | Number_5              | _5                    |
        |  54 | 6    | Six                   | Number_6              | _6                    |
        |  55 | 7    | Seven                 | Number_7              | _7                    |
        |  56 | 8    | Eight                 | Number_8              | _8                    |
        |  57 | 9    | Nine                  | Number_9              | _9                    |
        |  58 | :    | Colon                 |                       |                       |
        |  59 | ;    | Semicolon             |                       |                       |
        |  60 | <    | LessThanSign          | LessThan              |                       |
        |  61 | =    | EqualSign             | Equal                 |                       |
        |  62 | >    | GreaterThanSign       | GreaterThan           |                       |
        |  63 | ?    | QuestionMark          | Question              |                       |
        |  64 | @    | At                    |                       |                       |
        |  65 | A    | A                     | Capital_A             |                       |
        |  66 | B    | B                     | Capital_B             |                       |
        |  67 | C    | C                     | Capital_C             |                       |
        |  68 | D    | D                     | Capital_D             |                       |
        |  69 | E    | E                     | Capital_E             |                       |
        |  70 | F    | F                     | Capital_F             |                       |
        |  71 | G    | G                     | Capital_G             |                       |
        |  72 | H    | H                     | Capital_H             |                       |
        |  73 | I    | I                     | Capital_I             |                       |
        |  74 | J    | J                     | Capital_J             |                       |
        |  75 | K    | K                     | Capital_K             |                       |
        |  76 | L    | L                     | Capital_L             |                       |
        |  77 | M    | M                     | Capital_M             |                       |
        |  78 | N    | N                     | Capital_N             |                       |
        |  79 | O    | O                     | Capital_O             |                       |
        |  80 | P    | P                     | Capital_P             |                       |
        |  81 | Q    | Q                     | Capital_Q             |                       |
        |  82 | R    | R                     | Capital_R             |                       |
        |  83 | S    | S                     | Capital_S             |                       |
        |  84 | T    | T                     | Capital_T             |                       |
        |  85 | U    | U                     | Capital_U             |                       |
        |  86 | V    | V                     | Capital_V             |                       |
        |  87 | W    | W                     | Capital_W             |                       |
        |  88 | X    | X                     | Capital_X             |                       |
        |  89 | Y    | Y                     | Capital_Y             |                       |
        |  90 | Z    | Z                     | Capital_Z             |                       |
        |  91 | [    | OpeningBracket        |                       |                       |
        |  92 | \\   | Backslash             |                       |                       |
        |  93 | ]    | ClosingBracket        |                       |                       |
        |  94 | ^    | Caret                 | Circumflex            |                       |
        |  95 | _    | Underscore            |                       |                       |
        |  96 | `    | GraveAccent           | Backtick              |                       |
        |  97 | a    | a                     | Lowercase_a           |                       |
        |  98 | b    | b                     | Lowercase_b           |                       |
        |  99 | c    | c                     | Lowercase_c           |                       |
        | 100 | d    | d                     | Lowercase_d           |                       |
        | 101 | e    | e                     | Lowercase_e           |                       |
        | 102 | f    | f                     | Lowercase_f           |                       |
        | 103 | g    | g                     | Lowercase_g           |                       |
        | 104 | h    | h                     | Lowercase_h           |                       |
        | 105 | i    | i                     | Lowercase_i           |                       |
        | 106 | j    | j                     | Lowercase_j           |                       |
        | 107 | k    | k                     | Lowercase_k           |                       |
        | 108 | l    | l                     | Lowercase_l           |                       |
        | 109 | m    | m                     | Lowercase_m           |                       |
        | 110 | n    | n                     | Lowercase_n           |                       |
        | 111 | o    | o                     | Lowercase_o           |                       |
        | 112 | p    | p                     | Lowercase_p           |                       |
        | 113 | q    | q                     | Lowercase_q           |                       |
        | 114 | r    | r                     | Lowercase_r           |                       |
        | 115 | s    | s                     | Lowercase_s           |                       |
        | 116 | t    | t                     | Lowercase_t           |                       |
        | 117 | u    | u                     | Lowercase_u           |                       |
        | 118 | v    | v                     | Lowercase_v           |                       |
        | 119 | w    | w                     | Lowercase_w           |                       |
        | 120 | x    | x                     | Lowercase_x           |                       |
        | 121 | y    | y                     | Lowercase_y           |                       |
        | 122 | z    | z                     | Lowercase_z           |                       |
        | 123 | {    | OpeningBrace          |                       |                       |
        | 124 | \|   | VerticalBar           |                       |                       |
        | 125 | }    | ClosingBrace          |                       |                       |
        | 126 | ~    | EquivalencySign       | Tilde                 |                       |
        | 127 |      | DEL                   | Delete_               |                       |
    #End
    Enum Chars
        '---------------------------------------------[ control characters ]-----
        '
        NUL                  =   0,  NullCharacter           =   0
        SOH                  =   1,  StartOfHeader           =   1
        STX                  =   2,  StartOfText             =   2
        ETX                  =   3,  EndOfText               =   3
        EOT                  =   4,  EndOfTransmission       =   4
        ENQ                  =   5,  Enquiry                 =   5
        ACK                  =   6,  Acknowledgement         =   6
        BEL                  =   7,  Bell                    =   7
        BS                   =   8,  Backspace               =   8
        HT                   =   9,  HorizontalTab           =   9,   Tab =   9,   Tabulator =   9
        LF                   =  10,  LineFeed                =  10
        VT                   =  11,  VerticalTab             =  11
        FF                   =  12,  FormFeed                =  12
        CR                   =  13,  CarriageReturn          =  13
        SO                   =  14,  ShiftOut                =  14
        SI                   =  15,  ShiftIn                 =  15
        DLE                  =  16,  DataLinkEscape          =  16
        DC1                  =  17,  DeviceControl1          =  17
        DC2                  =  18,  DeviceControl2          =  18
        DC3                  =  19,  DeviceControl3          =  19
        DC4                  =  20,  DeviceControl4          =  20
        NAK                  =  21,  NegativeAcknowledgement =  21
        SYN                  =  22,  SynchronousIdle         =  22
        ETB                  =  23,  EndOfTransferBlock      =  23
        CAN                  =  24,  Cancel                  =  24
        EM                   =  25,  EndOfMedium             =  25
        SUB                  =  26,  Substitute              =  26
        ESC                  =  27,  Escape                  =  27
        FS                   =  28,  FileSeparator           =  28
        GS                   =  29,  GroupSeparator          =  29
        RS                   =  30,  RecordSeparator         =  30
        US                   =  31,  UnitSeparator           =  31
        '
        '---------------------------------------------[ control characters ]-----


        '---------------------------------------------[ special characters ]-----
        '
        Space                =  32                    '
        ExclamationPoint     =  33                    '           !
        DoubleQuote          =  34,  DQ      = 34     '           "
        NumberSign           =  35,  Hash    = 35,  Hashtag = 35' #
        DollarSign           =  36,  Dollar  = 36     '           $
        PercentSign          =  37,  Percent = 37     '           %
        Ampersand            =  38                    '           &
        SingleQuote          =  39,  Quote   = 39     '           '
        OpeningParenthesis   =  40                    '           (
        ClosingParenthesis   =  41                    '           )
        Asterisk             =  42,  Multiply = 42    '           *
        PlusSign             =  43,  Plus     = 43    '           +
        Comma                =  44                    '           ,
        MinusSign            =  45,  Minus    = 45    '           -
        Period               =  46,  Point    = 46,  Dot    = 46' .
        Slash                =  47,  Divide   = 47    '           /
        '
        '---------------------------------------------[ special characters ]-----


        '---------------------------------------------[      numbers       ]-----
        '
        Zero  =  48,      _0 =  48,  Number_0 = 48    '         0
        One   =  49,      _1 =  49,  Number_1 = 49    '         1
        Two   =  50,      _2 =  50,  Number_2 = 50    '         2
        Three =  51,      _3 =  51,  Number_3 = 51    '         3
        Four  =  52,      _4 =  52,  Number_4 = 52    '         4
        Five  =  53,      _5 =  53,  Number_5 = 53    '         5
        Six   =  54,      _6 =  54,  Number_6 = 54    '         6
        Seven =  55,      _7 =  55,  Number_7 = 55    '         7
        Eight =  56,      _8 =  56,  Number_8 = 56    '         8
        Nine  =  57,      _9 =  57,  Number_9 = 57    '         9
        '
        '---------------------------------------------[      numbers       ]-----


        '---------------------------------------------[ special characters ]-----
        '
        Colon                =  58                    '         :
        Semicolon            =  59                    '         ;
        LessThanSign         =  60,  LessThan    = 60 '         <
        EqualSign            =  61,  Equal       = 61 '         =
        GreaterThanSign      =  62,  GreaterThan = 62 '         >
        QuestionMark         =  63,  Question    = 63 '         ?
        At                   =  64                    '         @
        '
        '---------------------------------------------[ special characters ]-----


        '---------------------------------------------[  capital letters   ]-----
        '
        A =  65,  Capital_A  =  65                    '         A
        B =  66,  Capital_B  =  66                    '         B
        C =  67,  Capital_C  =  67                    '         C
        D =  68,  Capital_D  =  68                    '         D
        E =  69,  Capital_E  =  69                    '         E
        F =  70,  Capital_F  =  70                    '         F
        G =  71,  Capital_G  =  71                    '         G
        H =  72,  Capital_H  =  72                    '         H
        I =  73,  Capital_I  =  73                    '         I
        J =  74,  Capital_J  =  74                    '         J
        K =  75,  Capital_K  =  75                    '         K
        L =  76,  Capital_L  =  76                    '         L
        M =  77,  Capital_M  =  77                    '         M
        N =  78,  Capital_N  =  78                    '         N
        O =  79,  Capital_O  =  79                    '         O
        P =  80,  Capital_P  =  80                    '         P
        Q =  81,  Capital_Q  =  81                    '         Q
        R =  82,  Capital_R  =  82                    '         R
        S =  83,  Capital_S  =  83                    '         S
        T =  84,  Capital_T  =  84                    '         T
        U =  85,  Capital_U  =  85                    '         U
        V =  86,  Capital_V  =  86                    '         V
        W =  87,  Capital_W  =  87                    '         W
        X =  88,  Capital_X  =  88                    '         X
        Y =  89,  Capital_Y  =  89                    '         Y
        Z =  90,  Capital_Z  =  90                    '         Z
        '
        '---------------------------------------------[  capital letters   ]-----


        '---------------------------------------------[ special characters ]-----
        '
        OpeningBracket       =  91                    '         [
        Backslash            =  92                    '         \
        ClosingBracket       =  93                    '         ]
        Caret                =  94,  Circumflex =  94 '         ^
        Underscore           =  95                    '         _
        GraveAccent          =  96,  Backtick   =  96 '         `
        '
        '---------------------------------------------[ special characters ]-----


        '---------------------------------------------[ lowercase letters  ]-----
        '
        a =  97,  Lowercase_a =  97                    '        a
        b =  98,  Lowercase_b =  98                    '        b
        c =  99,  Lowercase_c =  99                    '        c
        d = 100,  Lowercase_d = 100                    '        d
        e = 101,  Lowercase_e = 101                    '        e
        f = 102,  Lowercase_f = 102                    '        f
        g = 103,  Lowercase_g = 103                    '        g
        h = 104,  Lowercase_h = 104                    '        h
        i = 105,  Lowercase_i = 105                    '        i
        j = 106,  Lowercase_j = 106                    '        j
        k = 107,  Lowercase_k = 107                    '        k
        l = 108,  Lowercase_l = 108                    '        l
        m = 109,  Lowercase_m = 109                    '        m
        n = 110,  Lowercase_n = 110                    '        n
        o = 111,  Lowercase_o = 111                    '        o
        p = 112,  Lowercase_p = 112                    '        p
        q = 113,  Lowercase_q = 113                    '        q
        r = 114,  Lowercase_r = 114                    '        r
        s = 115,  Lowercase_s = 115                    '        s
        t = 116,  Lowercase_t = 116                    '        t
        u = 117,  Lowercase_u = 117                    '        u
        v = 118,  Lowercase_v = 118                    '        v
        w = 119,  Lowercase_w = 119                    '        w
        x = 120,  Lowercase_x = 120                    '        x
        y = 121,  Lowercase_y = 121                    '        y
        z = 122,  Lowercase_z = 122                    '        z
        '
        '---------------------------------------------[ lowercase letters  ]-----


        '---------------------------------------------[ special characters ]-----
        '
        OpeningBrace          = 123                   '         {
        VerticalBar           = 124                   '         |
        ClosingBrace          = 125                   '         }
        EquivalencySign       = 126,  Tilde   = 126   '         ~
        DEL                   = 127,  Delete_ = 127   '
        '
        '---------------------------------------------[ special characters ]-----
    End

    Private

    Global _names:String[] = New String[](
        "NUL", "SOH", "STX", "ETX", "EOT", "ENQ", "ACK", "BEL",  "BS", "TAB",
         "LF",  "VT",  "FF",  "CR",  "SO",  "SI", "DLE", "DC1", "DC2", "DC3",
        "DC4", "NAK", "SYN", "ETB", "CAN",  "EM", "SUB", "ESC",  "FS",  "GS",
         "RS",  "US",
        "Space" )
