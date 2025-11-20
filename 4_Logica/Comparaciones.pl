%Comparar  área del Círculo
area_circulo(Radio, Area):- Area is pi * Radio **2.

comparar_area(Radio, Limite, Resultado):-
    area_circulo(Radio, Area),
    (Area > Limite -> Resultado = 'mayor';
    Area =:= Limite -> Resultado ='Igual';
    Resultado = 'Menor'
    ).
%?- comparar_area(10,92,Resultado).
%Resultado = mayor.

%?- comparar_area(1,12,Resultado).
%Resultado = 'Menor'.

%-----------------------------------------------------------

%Comparar perímetro de un cuadrado
comparar_perimetro(Lado, Limite, Resultado):-
    Perimetro is Lado * 4,
    (Perimetro > Limite -> Resultado = 'mayor';
    Perimetro =:= Limite -> Resultado ='Igual';
    Resultado = 'Menor'
    ).
%?- comparar_perimetro(1,12,Resultado).
%Resultado = 'Menor'.

%?- comparar_perimetro(4,12,Resultado).
%Resultado = mayor.

%-----------------------------------------------------------------

%Verificar si el número es positivo, negativo o Cero
comparar_numeros(X,R):-
    (X <  0 -> R = 'Negativo';
     X >  0 -> R = 'Positivo';
     X =  0 -> R = 'Cero'
    ).
%comparar_numero(8,R).
%R = 'Positivo'.

%comparar_numero(0,R).
%R = 'Cero'.

%comparar_numero(-5,R).
%R = 'Negativo'.

%-------------------------------------------------------------------

%Comparar la raíz cuadrada con un valor
comparar_raiz(X, Y, Resultado):-
    Raiz is sqrt(X),
    (Raiz > Y   -> Resultado = 'Mayor';
     Raiz =:= Y -> Resultado = 'Igual';
     Resultado = 'Menor').

%?- comparar_raiz(25,5,R).
%R = 'Igual'.

%?- comparar_raiz(8,25,R).
%R = 'Menor'.

%?- comparar_raiz(12,3,R).
%R = 'Mayor'.

%------------------------------------------------------------------

%Calcular el área de un triángulo y verificar si es mayor que 50
comparar_areaT(X, Y, Resultado):-
    Area is (X*Y)/2,
    (Area > 50   -> Resultado = 'Afirma';
     Area =:= 50 -> Resultado = 'Igual';
     Resultado = 'Negativo').
%?- comparar_areaT(5,8,R).
%R = 'Negativo'.

%?- comparar_areaT(10,10,R).
%R = 'Igual'.

%?- comparar_areaT(10,20,R).
%R = 'Afirma'.

%---------------------------------------------------------------------

%Verificar si el número es par o impar
par_impar(X, Resultado):- Ver is X mod 2,
    (Ver =:= 0 -> Resultado = 'PAR';
     Resultado = 'Impar').
%?- par_impar(2,R).
%R = 'PAR'.

%?- par_impar(5,R).
%R = 'Impar'.%

%--------------------------------------------------------------------

%Comparar el logaritmo natural
comparar_log(X, Y, Resultado):-
    Logaritmo is log(X)/log(2),
    (Logaritmo > Y   -> Resultado = 'Mayor';
     Logaritmo =:= Y -> Resultado = 'Igual';
     Resultado = Logaritmo).
%?- comparar_log(10, 2.3, R).
%R = 'Mayor'

%?- comparar_log(2,1,R).
%R = 'Igual'

%------------------------------------------------------------------

%Calcular la potencia y verificar si supera 100
comparar_pot(X, Y, Resultado):-
    P is X ^ Y,
    (P > 100   -> Resultado = 'Mayor';
     P =:= 100 -> Resultado = 'Igual';
     Resultado = 'Menor').
%?- comparar_pot(3,3,R).
%R = 'Menor'.

%?- comparar_pot(5,5,R).
%R = 'Mayor'.

%?- comparar_pot(10,2,R).
%R = 'Igual'.