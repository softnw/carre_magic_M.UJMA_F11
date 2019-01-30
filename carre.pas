program carre ;
uses crt ;

const cmax=5;

var nb1,i,j,mid,nb2,nb3:INTEGER;


magic:ARRAY[1..cmax,1..cmax] OF INTEGER;

BEGIN
clrscr;
        FOR i:=1 TO cmax DO
        BEGIN
                FOR j:=1 TO cmax DO
                BEGIN
                        magic[i,j]:=0;
                       
                END;
                
        END;
mid:= (cmax+1);
mid:= (mid div 2);
i := (mid-1);
j := (mid);
nb1:=(1);
nb2:=(cmax*cmax);
magic[i,j]:=nb1;
nb1:=nb1+1;

        WHILE (nb1 <= nb2) DO
        BEGIN
        clrscr;
                i := (i-1);
                j := (j+1);
                        IF (i=0) THEN
                        BEGIN
                        i:= cmax;
                        END;
                         IF (j=cmax+1) THEN
                         BEGIN
                         j:=1;
                         END;
        				IF (magic[i,j]=0) THEN
        				BEGIN
        				magic[i,j]:=nb1;
        				nb1:=nb1+1;
        				
        				END
        				ELSE
        				BEGIN
        				nb3 := nb1;
        				END;
        				WHILE nb3 = nb1 DO
        				BEGIN
        				i:=(i-1);
        				j:=(j-1);
        					IF (i=0) THEN
                       	 	BEGIN
                        	i:= cmax;
                        	END;
                         	IF (j=0) THEN
                         	BEGIN
                         	j:=cmax;
                        	END;
        					IF magic[i,j]=0 THEN
        					BEGIN
        					magic[i,j]:=nb1;
        					nb1 := nb1+1;
        					END;
        				END;


        			
       	END;


clrscr;

        FOR i:=1 TO cmax DO
        BEGIN
                FOR j:=1 TO cmax DO
                BEGIN
                       write('|');
                        write (magic[i,j]:2);
                END;
                writeln('|');
        END;


READLN;



END.

