UNIT TreeWordSort;

INTERFACE
TYPE
  WordType = ^WType;
  WType = RECORD
            Meaning: STRING;
            Count: INTEGER;
            LWord: WordType;
            RWord: WordType
          END;

PROCEDURE InsertWordInTree(VAR W: WordType; Meaning: STRING);
PROCEDURE PrintWordTree(W: WordType);

IMPLEMENTATION
PROCEDURE InsertWordInTree(VAR W: WordType; Meaning: STRING);
BEGIN {Insert}
  IF W = NIL
  THEN
    BEGIN 
      NEW(W);
      W^.Meaning := Meaning;
      W^.Count := 1;
      W^.LWord := NIL;
      W^.RWord:= NIL
    END
  ELSE
    IF W^.Meaning <> Meaning
    THEN
      IF W^.Meaning > Meaning
      THEN
        InsertWordInTree(W^.LWord, Meaning)
      ELSE
        InsertWordInTree(W^.RWord, Meaning)
    ELSE
      IF W^.Meaning = Meaning
      THEN
        W^.Count := W^.Count + 1        
END;  {Insert}

PROCEDURE PrintWordTree(W: WordType);
BEGIN {PrintTree}
  IF W <> NIL
  THEN  
    BEGIN
      PrintWordTree(W^.LWord);
      WRITELN(W^.Meaning, ' ', W^.Count);
      PrintWordTree(W^.RWord)
    END
END;  {PrintTree}
BEGIN
END.


