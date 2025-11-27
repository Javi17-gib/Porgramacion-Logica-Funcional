padre(joss,isis).
padre(joss,pil_i).
padre(joss,filecomp).
padre(joss,focal).
padre(joss,citran).
padre(joss,telecomp).
padre(joss,cal).

padre(cal,superbasic).

padre(telecomp,mumps).
padre(telecomp,logo).

padre(focal,coke).

abuelo(A, B) :- padre(A, X), padre(X, B).
hermano(A, B) :- padre(P, A), padre(P, B), A \= B.
tio(Tio, Sobrino) :- padre(Padre, Sobrino), hermano(Tio, Padre).

edad(joss, 60).
edad(isis, 40).
edad(filecomp, 30).
edad(focal, 45).
edad(citran, 38).
edad(telecomp, 50).
edad(cal, 55).
edad(superbasic, 20).
edad(mumps, 25).
edad(logo, 28).
edad(coke, 10).





%¿Quién es el padre del padre de COKE?  (Imprime el valor; Valor 10 puntos)  
%?- abuelo(A,coke).
%A = joss 

%------------------------------------------------------------------------------

%¿Es Logo hermano de MUMPS? (devolverá true o false; Valor 10 puntos) 
%?- hermano(logo,mumps).
%true.

%------------------------------------------------------------------------------

%¿Es JOSS el padre del padre de SuperBasic? (devolverá true o false; Valor 10 puntos) 
%?- abuelo(joss, superbasic).
%true.
%------------------------------------------------------------------------------

%Invente una regla. (Valor 10)  
%?- tio(T,coke).
%T = isis ;
%T = pil_i ;
%T = filecomp ;
%T = citran ;
%T = telecomp ;
%T = cal .

%------------------------------------------------------------------------------

%Invente una regla que utilice una expresión aritmética. (Valor 15)  
suma_edad(A, B, Total) :- edad(A, A1), edad(B, B1), Total is A1 + B1.
%?- suma_edad(cal,mumps,Total).
%Total = 80.

%?- suma_edad(joss, telecomp,Total).
%Total = 110.

%------------------------------------------------------------------------------

%Invente una regla que utilice un comparador. (Valor 15)  

masjoven_masviejo(Persona, R) :-
    edad(Persona, E),
    (E < 20  -> R = 'Joven';
     E < 40  -> R = 'Adulto';
     E >=40  -> R = 'Antiguo'
    ).
%?- masjoven_masviejo(coke,R).
%R = 'Joven'.

%?- masjoven_masviejo(citran,R).
%R = 'Adulto'.

%?- masjoven_masviejo(joss,R).
%R = 'Antiguo'.
