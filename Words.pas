UNIT Words;

INTERFACE
FUNCTION Lowercase(Ch: CHAR): CHAR;
FUNCTION LetterInAllowChars(Ch: CHAR): BOOLEAN;

IMPLEMENTATION

FUNCTION Lowercase(Ch: CHAR): CHAR;
BEGIN
  IF LetterInAllowChars(Ch)
  THEN
    CASE Ch OF
      'A': Lowercase := 'a';
      'B': Lowercase := 'b';
      'C': Lowercase := 'c';
      'D': Lowercase := 'd';
      'E': Lowercase := 'e';
      'F': Lowercase := 'f';
      'G': Lowercase := 'g';
      'H': Lowercase := 'h';
      'I': Lowercase := 'i';
      'J': Lowercase := 'j';
      'K': Lowercase := 'k';
      'L': Lowercase := 'l';
      'M': Lowercase := 'm';
      'N': Lowercase := 'n';
      'O': Lowercase := 'o';
      'P': Lowercase := 'p';
      'Q': Lowercase := 'q';
      'R': Lowercase := 'r';
      'S': Lowercase := 's';
      'T': Lowercase := 't';
      'U': Lowercase := 'u';
      'V': Lowercase := 'v';
      'W': Lowercase := 'w';
      'X': Lowercase := 'x';
      'Y': Lowercase := 'y';
      'Z': Lowercase := 'z';

      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';
      '�': Lowercase := '�';

      '-': Lowercase := '-'
    ELSE
      Lowercase := Ch
    END
  ELSE
    Lowercase := ' '
END;

FUNCTION LetterInAllowChars(Ch: CHAR): BOOLEAN;
CONST
  AllowLatinChars = ['A'..'Z', 'a'..'z'];
  AllowRusChars = ['�'..'�', '�', '�', '�'..'�'];
  OtherAllowChars = ['-'];
VAR
  AllowChars: SET OF CHAR;
BEGIN
  AllowChars := AllowLatinChars + AllowRusChars + OtherAllowChars;
  LetterInAllowChars := Ch IN AllowChars  
END;

BEGIN
END.
