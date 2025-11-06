ceo(mark, sherly).

jefe(sherly, david).
jefe(sherly, timothy).
jefe(sherly, mike).
jefe(sherly, elliot).
jefe(sherly, lori).

jefe(elliot, rebecca).
jefe(elliot, heather).


%¿Quién es el jefe del Rebecca? = 
jefe(X,rebecca).
X = elliot

%¿Es jefe Mark del jefe de Rebecca? =
ceo(mark,rebecca).
false.

%¿Es Lori jefe de alguien? =
jefe(lori,X).
false.

%Mostrar empleados del jefe de Heather =
jefe(X,heather),jefe(X,Y).
X = elliot,
Y = rebecca ;
X = elliot,
Y = heather

%¿Es Timothy jefe de Rebecca? =
jefe(timothy,rebecca).
false.

%Mostrar compañeros de nivel de Mike =
jefe(X,mike),jefe(X,Y).
X = sherly,
Y = david ;
X = sherly,
Y = timothy ;
X = sherly,
Y = mike ;
X = sherly,
Y = elliot ;
X = sherly,
Y = lori.

%¿Es el jefe de Rebeca compañero de nivel de David? =
jefe(X,rebecca),jefe(Y,david),jefe(Y,Z).
X = elliot,
Y = sherly,
Z = david ;
X = elliot,
Y = sherly,
Z = timothy ;
X = elliot,
Y = sherly,
Z = mike ;
X = Z, Z = elliot,
Y = sherly ;
X = elliot,
Y = sherly,
Z = lori.
 
%¿Es compañero de nivel Mike de Lori? =
jefe(X,mike),jefe(Y,lori).
X = Y, Y = sherly.