-module(ten).
-export([count/1]).
count(0) -> io:write(0);
count(N) -> count(N-1), io:write(N).
