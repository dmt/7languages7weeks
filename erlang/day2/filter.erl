-module(filter).
-export([mapget/2]).
mapget(Search, List) -> lists:filter(fun({Key, _}) -> 
if Search == Key -> true; true -> false end end, List). 

