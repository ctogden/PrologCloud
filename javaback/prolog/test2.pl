parent(abraham,ismael).
parent(abraham,isaac).
parent(isaac,esau). 
parent(isaac,jacob).
grandfather(B,N):- parent(B,P),parent(P,N).

nonDeterministicGoal(InterestingVarsTerm,G,ListTM) :-
  findall(InterestingVarsTerm,G,L), buildTermModel(L,ListTM).
