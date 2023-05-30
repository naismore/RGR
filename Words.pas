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

      'À': Lowercase := 'à';
      'Á': Lowercase := 'á';
      'Â': Lowercase := 'â';
      'Ã': Lowercase := 'ã';
      'Ä': Lowercase := 'ä';
      'Å': Lowercase := 'å';
      '¨': Lowercase := '¸';
      'Æ': Lowercase := 'æ';
      'Ç': Lowercase := 'ç';
      'È': Lowercase := 'è';
      'É': Lowercase := 'é';
      'Ê': Lowercase := 'ê';
      'Ë': Lowercase := 'ë';
      'Ì': Lowercase := 'ì';
      'Í': Lowercase := 'í';
      'Î': Lowercase := 'î';
      'Ï': Lowercase := 'ï';
      'Ð': Lowercase := 'ð';
      'Ñ': Lowercase := 'ñ';
      'Ò': Lowercase := 'ò';
      'Ó': Lowercase := 'ó';
      'Ô': Lowercase := 'ô';
      'Õ': Lowercase := 'õ';
      'Ö': Lowercase := 'ö';
      '×': Lowercase := '÷';
      'Ø': Lowercase := 'ø';
      'Ù': Lowercase := 'ù';
      'Ú': Lowercase := 'ú';
      'Û': Lowercase := 'û';
      'Ü': Lowercase := 'ü';
      'Ý': Lowercase := 'ý';
      'Þ': Lowercase := 'þ';
      'ß': Lowercase := 'ÿ';

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
  AllowRusChars = ['À'..'ß', '¸', '¨', 'à'..'ÿ'];
  OtherAllowChars = ['-'];
VAR
  AllowChars: SET OF CHAR;
BEGIN
  AllowChars := AllowLatinChars + AllowRusChars + OtherAllowChars;
  LetterInAllowChars := Ch IN AllowChars  
END;

BEGIN
END.
