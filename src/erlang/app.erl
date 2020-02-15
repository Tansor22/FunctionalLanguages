%%%-------------------------------------------------------------------
%%% @author Sergei
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 13. февр. 2020 17:33
%%%-------------------------------------------------------------------
-module(app).
-author("Sergei").
%% API
-export([a/2, out/2, start/0]).


concat(X, Y) -> [X] ++ [Y] ++ [a(X, Y)].

in(_, 0) -> [];
in(X, Y) -> in(X, Y - 1) ++ [concat(X, Y - 1)].

out(0, _) -> [];
out(X, Y) -> out(X - 1, Y) ++ in(X - 1, Y).

% Ackermann function implementation
a(0, N) -> N + 1;
a(M, 0) -> a(M - 1, 1);
a(M, N) -> a(M - 1, a(M, N - 1)).

start() ->
  utils:print('List of lists [M, N, a(M, N)] ==>'),
  utils:print(out(2, 2)),
  utils:print('Pretty ==>'),
  utils:pretty_print(out(2, 2)).