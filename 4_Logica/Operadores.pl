%Construcción de expresiones aritméticas enPROLOG

%SUMA
ejemplo_suma(X,Y,R) :- R is X + Y.
%Resultado: ejemplo_suma(10,2,R).
%R = 12

%RESTA
ejemplo_resta(X,Y,R) :- R is X - Y.
%Resultado: ejemplo_resta(12,2,R).
%R=10

%MULTIPLICACION
ejemplo_multi(X,Y,R) :- R is X * Y.
%Resultado: ejemplo_multi(5,2,R).
%R=10

%DIVICION
ejemplo_div(X,Y,R) :- R is X/Y.
%Resultado: ejemplo_div(6,2,R).
%R=3

%DIVICION2
ejemplo_div2(X,Y,R) :- R is X div Y.
%Resultado: ejemplo_div(6,2,R).
%R=3

%MOD
ejemplo_mod(X,Y,R) :- R is X mod Y.
%Resultado: ejemplo_mod(5,2,R).
%R=2

%ELEVADO
ejemplo_elev(X,Y,R) :- R is X ^ Y.
%Resultado: ejemplo_elev(6,2,R).
%R=36

%NEGACION
ejemplo_neg(X,R) :- R is -X.
%Resultado: ejemplo_neg(6,R).
%R=-6

%VALOR ABSOLUTO
ejemplo_abs(X,R) :- R is abs(X).
%Resultado: ejemplo_abs(4,R).
%R=4

%ARCO COSENO
ejemplo_acos(X, R) :- R is acos(X).
%Resultado: ejemplo_acos(1,R).
%R=0

%ARCO seno
ejemplo_asen(X,R) :- R is asin(X).
%Resultado: ejemplo_asen(1,R).
%R = 1.5707963267948966

%ARCO tangente
ejemplo_atan(X,R) :- R is atan(X).
%Resultado: ejemplo_atan(1,R).
%R = 0.7853981633974483

%coseno
ejemplo_cos(X,R) :- R is cos(X).
%Resultado: ejemplo_cos(4,R).
%R=4

%EXPONENCIAL
ejemplo_exp(X,R) :- R is exp(X).
%Resultado: ejemplo_exp(4,R).
%R = 54.598150033144236 

%LOGARITMO
ejemplo_log(X,R) :- R is log(X).
%Resultado: ejemplo_log(4,R).
%R = 1.3862943611198906.

%seno
ejemplo_sen(X,R) :- R is sin(X).
%Resultado: ejemplo_sin(0.8,R).
%R = 0.7173560908995228

%RAIZ
ejemplo_raiz(X,R) :- R is sqrt(X).
%Resultado: ejemplo_sin(9,R).
%R = 3.0

%TANGENTE
ejemplo_tan(X,R) :- R is tan(X).
%Resultado: ejemplo_sin(2,R).
%R = -2.185039863261519

%REDONDEO
ejemplo_round(X, N, R) :- P is 10^N, R is round(X * P) / P.
%Resultado: ejemplo_round(3.14159, 2, R).
%R = 3.14.

%Comparación de términos en PROLOG

ejemplo_menor(X, Y) :- X < Y.
%Resultado: ejemplo_menor(3,5).
%true

ejemplo_mayor(X, Y) :- X > Y.
%Resultado: ejemplo_menor(7,5).
%true

ejemplo_menor_igual(X, Y) :- X =< Y.
%Resultado: ejemplo_menor_igual(5,5).
%true

ejemplo_mayor_igual(X, Y) :- X >= Y.
%Resultado: ejemplo_mayor_igual(15,15).
%true

ejemplo_equal(X, Y) :- X = Y.
%Resultado: ejemplo_equal(3,3).
%true

ejemplo_distinto(X, Y) :- X \= Y.
%Resultado: ejemplo_distinto(8,3).
%true
