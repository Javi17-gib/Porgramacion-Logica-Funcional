red(red1).
red(red2).

dispositivo(pc1).
dispositivo(pc2).
dispositivo(pc3).
dispositivo(pc4).
dispositivo(pc5).
dispositivo(pc6).
dispositivo(pc7).
dispositivo(s1).        
dispositivo(switch1).   
dispositivo(bus_red2).  
dispositivo(router).    

conecta(pc1, switch1).
conecta(pc2, switch1).
conecta(pc3, switch1).
conecta(pc4, switch1).

conecta(switch1, router).     
conecta(router, bus_red2).   

conecta(pc5, bus_red2).
conecta(pc6, bus_red2).
conecta(pc7, bus_red2).
conecta(s1, bus_red2).

velocidad(red1, 1000). 
velocidad(red2, 100).   
   
%Muestre las PCs de la topología de estrella (red1).

%conecta(X, switch1).
%X = pc1 ;
%X = pc2 ;
%X = pc3 ;
%X = pc4.

%-----------------------------------------------------------------------------------------------

%Desarrolle una regla que determine si un dispositivo pertenece a una red.
pertenece_a(Dispositivo, Red) :- conecta(Dispositivo, Nodo), en_red(Nodo, Red).
%pertenece_a(pc3, Red).
%Red = red1.

%pertenece_a(pc7, Red).
%Red = red2.

%------------------------------------------------------------------------------------------------

%¿Puede el S1 enviar ping a la pc2?
puede_ping(A, B) :- pertenece_a(A, Red),pertenece_a(B, Red).
%?- puede_ping(pc5,pc1).
%false.

%?- puede_ping(s1,pc5).
%true.

%?- puede_ping(pc5,pc1).
%false.

%------------------------------------------------------------------------------------------------
%Invente una regla.
dispositivo_rapido(X) :- pertenece_a(X, Red), velocidad(Red, Velocidad),Velocidad >= 1000.
%?- dispositivo_rapido(pc1).
%true. 

%?- dispositivo_rapido(pc3).
%true.

%?- dispositivo_rapido(pc5).
%false.

%------------------------------------------------------------------------------------------------
%Invente una regla que utilice una expresión aritmética.
suma_velocidades(R1, R2, Total) :- velocidad(R1, V1), velocidad(R2, V2), Total is V1 + V2.
%suma_velocidades(red1, red2, Total).
%Total = 1100.

%-------------------------------------------------------------------------------------------------
%Invente una regla que utilice un comparador.
mas_rapida(X, Y) :- velocidad(X, V1), velocidad(Y, V2), V1 > V2.
%?- mas_rapida(red1,red2).
%true.

%?- mas_rapida(red2,red1).
%false.%