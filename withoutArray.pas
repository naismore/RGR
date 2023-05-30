PROGRAM CountWords(INPUT, OUTPUT);
USES TreeWordSort;
USES Words;
VAR
  Ch: CHAR;
  TempString: STRING;
  Count: INTEGER;
  EOW, DefisOn: BOOLEAN;
  Word: WordType;
BEGIN
  Word := NIL;
  Count := 0;
  WHILE NOT EOF
  DO
    BEGIN
      WHILE NOT EOLN
      DO
        BEGIN
          EOW := FALSE;
          WHILE (NOT EOW) AND (NOT EOLN)
          DO
            BEGIN
              READ(Ch);
              Ch := Lowercase(Ch);
              IF (Ch = '-')
              THEN
                DefisOn := TRUE
              ELSE
                IF DefisOn
                THEN
                  DefisOn := FALSE;
              IF Ch = ' '
              THEN
                EOW := TRUE
              ELSE
                TempString := TempString + Ch
            END;
          IF (TempString <> '') AND (TempString <> ' ') AND (NOT DefisOn)
          THEN
            BEGIN
              Count := Count + 1;
              InsertWordInTree(Word, TempString);
              TempString := ''
            END;
          DefisOn := FALSE
        END;
      READLN(INPUT)
    END;
  WRITELN('Количество слов в файле: ', Count);
  PrintWordTree(Word)
END.
