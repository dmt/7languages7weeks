-module(filter).
-export([mapget/2]).
-export([totals/1]).
mapget(Search, List) -> lists:filter(fun({Key, _}) -> 
if Search == Key -> true; true -> false end end, List). 

totals(Cart) -> 
	[{Item, Price * Count} || {Item, Price, Count} <- Cart ].

