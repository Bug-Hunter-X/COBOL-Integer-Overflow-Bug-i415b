```cobol
01  WS-DATA-AREA.
    05  WS-INTEGER-1 PIC 9(5) VALUE 10000.
    05  WS-INTEGER-2 PIC 9(5) VALUE 0.
    05  WS-RESULT PIC 9(7) VALUE 0.

PROCEDURE DIVISION.
    ADD WS-INTEGER-1 TO WS-INTEGER-2 GIVING WS-RESULT.
    DISPLAY "Result: " WS-RESULT.
    STOP RUN.
```
This solution uses a larger data type (PIC 9(7)) for the result to prevent the integer overflow.  The 'GIVING' clause is used for clarity and to explicitly assign the result to the new field.