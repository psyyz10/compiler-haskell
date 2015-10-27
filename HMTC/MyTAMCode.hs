--Task 3

module MyTAMCode where

import TAMCode
import TAMInterpreter

--(a)
printN = [Label "printN",
          GETINT,
          LOAD (LB 0),
          Label "loop",
          LOAD (LB 0),
          LOAD (LB 1),
          LOADL 1,
          LSS,
          JUMPIFNZ "atLeastOne",
          LOAD (LB 1),
          LOADL 1,
          SUB,
          SUB,
          PUTINT,
          LOADL 1,
          SUB,
          JUMP "loop",
          Label "atLeastOne"]
        
--(b)

printFac = 
       [GETINT,
        CALL "printFac",
        PUTINT,
        HALT,
        Label "printFac",
        LOAD (LB (-1)),
        LOADL 1,
        LSS,
        JUMPIFNZ "atLeastOne",
        LOAD (LB (-1)),
        LOAD (LB (-1)),
        LOADL 1,
        SUB,
        CALL "printFac",
        MUL,
        RETURN 1 1,
        Label "atLeastOne",
        LOADL 1,
        RETURN 1 1]
        
printFac' = [Label "printFac",
            GETINT,
            LOAD (LB 0),
            LOADL 1,
            Label "loop",
            LOAD (LB 1),
            LOADL 1,
            LSS,
            JUMPIFNZ "atLeastOne",
            LOAD (LB 1),
            MUL,
            LOAD (LB 1),
            LOADL 1,
            SUB,
            STORE (LB 1),
            JUMP "loop",
            Label "atLeastOne",
            PUTINT]