categoria(superfamily, hominoidea).
categoria(family,hominidea).
categoria(family,hylobatidae).
categoria(subfamily, homininae).
categoria(subfamily, ponginae).
categoria(tribu,hominini).
categoria(tribu,gorillini).
categoria(genus,homo).
categoria(genus,pan).
categoria(genus,gorilla).
categoria(genus,pongo).
categoria(genus,hylobates).

descendiente(hominidea, hominidea).
descendiente(hominoidea, hylobatidae).
descendiente(hylobatidae, hylobates).

descendiente(hominidae, homininea).
descendiente(hominidae, ponginae).
descendiente(ponginae, pongo).

descendiente(homininae, hominini).
descendiente(homininae, gorillini).
descendiente(gorillini, gorilla).

descendiente(hominini, homo).
descendiente(hominini, pan).

descendiente(homo, human).
descendiente(pan, bonobo).
descendiente(pan, chimpanzee).
descendiente(gorilla, gorilla).
descendiente(pongo, orangutan).
descendiente(hylobates, gibbon).

subfamilia(X,Y):- descendiente(Z,X), descendiente(A,Z),descendiente(E,Y),descendiente(W,E).
familia(X,Y):- descendiente(A,X), descendiente(A,B),descendiente(C,Y), descendiente(C,D).
%ancestro(X,Y):- descendiente(X,homo),descendiente(A,X),descendiente(Y,gorilla),descendiente(B,Y).


%1- Es el gorila descendiente de hominini?
%descendiente(hominini,gorilla).
%false

%2- ¿Es el Homo hermano del gorila?
%descendiente(gorilla,homo).
%false.

%3- ¿Son el Homo y el Gorilla de la misma subfamilia?
%subfamilia(homo,gorilla).
%true 

%4- ¿Tiene Hominini la misma familia que Pongo?
%familia(hominini,pongo).
%true 

%5- ¿Quiénes son los descendientes directos de una tribu?
%categoria(tribu,X), descendiente(X,Y).
%X = hominini,
%Y = homo ;
%X = hominini,
%Y = pan ;
%X = gorillini,
%Y = gorilla.


%6- ¿Cuál es la superfamilia a la que pertenece Hylobates?
%categoria(superfamily,X), descendiente(X,Y), descendiente(Y, hylobates).
%X = hominoidea,
%Y = hylobatidae.

%7- ¿Qué géneros comparten la misma subfamilia con Pan?

%8- ¿Cuál es el ancestro común más cercano entre Homo y Gorilla?

%9- ¿Es el orangután un homínido?

%10- ¿Cuáles son todas las especies que pertenecen a la familia Hominidae?

%11- ¿Qué géneros son hermanos taxonómicos de Homo?

%12 -¿Comparten Homo y Hylobates la misma familia?

%13- ¿Cuáles son los descendientes directos de la subfamilia Homininae?

%14- ¿Qué géneros están bajo la familia Hominidae?

%15- ¿Cuál es la ruta taxonómica completa desde Homo hasta la superfamilia?







