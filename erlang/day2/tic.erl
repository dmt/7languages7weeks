-module(tic).
-export([state/1]).

state(Board) -> 
  case determine(Board) of
	[] when lists:all(
		fun(Cell) -> lists:member(Cell, [x,o]) end, Board) ->
		unfinished; 
	[] -> stalemate;
	[Winner|_] -> Winner
  end.
determine([P11, P12, P13,
     P21, P22, P23,
     P31, P32, P33]) -> 
  Combinations = [[P11, P12, P13], [P11, P21, P31], [P11, P22, P33],
		  [P21, P22, P23], [P12, P22, P32],
		  [P31, P32, P33], [P31, P22, P13], [P33, P23, P13]],

  [Player || Player <- [x, o], Combination <- Combinations, 
	lists:all(fun(Point) -> Point == Player end, Combination) ] .
  
