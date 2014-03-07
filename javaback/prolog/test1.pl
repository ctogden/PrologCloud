p(1).
p(2).
p(3).
p(4).
q(X):- p(X).

nonDeterministicGoal(InterestingVarsTerm,G,ListTM) :-
  findall(InterestingVarsTerm,G,L), buildTermModel(L,ListTM).
