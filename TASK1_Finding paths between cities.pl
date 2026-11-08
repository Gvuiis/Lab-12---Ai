% Task 1: Finding paths between cities

edge('Makkah', 'Madinah').
edge('Makkah', 'Riyadh').

edge('Madinah', 'Makkah').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').

edge('Taif', 'Tabuk').
edge('Taif', 'Dammam').

edge('Tabuk', 'Taif').

edge('Riyadh', 'Dammam').

edge('Dammam', 'Riyadh').
edge('Dammam', 'Qatif').

edge('Qatif', 'Dammam').
edge('Qatif', 'Madinah').

travel(From, To, Path) :-
    path(From, To, [From], P),
    reverse(P, Path).

path(X, X, P, P).

path(X, Y, V, P) :-
    edge(X, Z),
    not(member(Z, V)),
    path(Z, Y, [Z|V], P).


% Task 1: Finding paths between cities RUN

% 94 ?- consult(['c:/Users/goshq/Downloads/TASK1_Finding paths between cities.pl']).
% true.

% 95 ?- travel('Dammam', 'Madinah', P).
% P = ['Dammam', 'Qatif', 'Madinah'] ;
% false.

% 96 ?- travel('Riyadh', 'Makkah', P).
% P = ['Riyadh', 'Dammam', 'Qatif', 'Madinah', 'Makkah'] ;
% false.

% 97 ?- travel('Makkah', 'Riyadh', P).
% P = ['Makkah', 'Madinah', 'Taif', 'Dammam', 'Riyadh'] ;
% P = ['Makkah', 'Madinah', 'Tabuk', 'Taif', 'Dammam', 'Riyadh'] ;
% P = ['Makkah', 'Riyadh'] ;
% false.

% 98 ?- travel('Makkah', 'Madinah', P).
% P = ['Makkah', 'Madinah'] ;
% P = ['Makkah', 'Riyadh', 'Dammam', 'Qatif', 'Madinah'] ;
% false.
