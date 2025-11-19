valioso(oro).
valioso(plata).
le_gusta(juan,maria).
tiene(juan,libro).
tiene(maria,libro).
% DIAGRAMA
progenitor(clara,jose).
progenitor(tomas,jose).
progenitor(tomas,isabel).
progenitor(jose,ana).
progenitor(jose,patricia).
progenitor(patricia,jaime).
mujer(ana).

%las reglas devuelven true o false abuela (clara,ana)
abuela(X,Y):- progenitor(Z,Y), progenitor(X,Z),mujer(X).

% progenitor(X,ana), progenitor(Y,X),progenitor(Y,Z).
% Es ana tia de jaime? = progenitor(X,ana), progenitor(X,Z),progenitor(Z,jaime).
% Es ana tia de isabel? =  progenitor(X,ana),progenitor(X,Y),progenitor(Y,isabel). false.