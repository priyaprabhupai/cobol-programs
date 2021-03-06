      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. mixedcase.
       environment division.
       DATA DIVISION.
       FILE SECTION.
       working-storage section.
       01 my-string     pic x(256).
       01 sub-1         pic 9(3).
       01               pic x      value "N".
          88 space-found           value "Y"
             when set to false           "N".
       01 new-string    pic x(256).
       procedure division.
           ACCEPT my-string


           move function lower-case(my-string) to new-string
           set space-found to true
           perform varying sub-1 from 1 by 1
              until sub-1 > function length(new-string)
                 if new-string(sub-1:1) not = " "
                    if space-found
                       move function upper-case(new-string(sub-1:1))
                          to new-string(sub-1:1)

                       set space-found to false
                    end-if
                 else
                    set space-found to true
                 end-if
           end-perform.
               display new-string
           stop run.

       end PROGRAM mixedcase.
