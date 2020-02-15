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


concat(M, N) -> [M] ++ [N] ++ [a(M, N)].

in(_, 0) -> [];
in(M, N) -> in(M, N - 1) ++ [concat(M, N - 1)].

out(0, _) -> [];
out(M, N) -> out(M - 1, N) ++ in(M - 1, N).

% Ackermann function implementation
a(0, N) -> N + 1;
a(M, 0) -> a(M - 1, 1);
a(M, N) -> a(M - 1, a(M, N - 1)).

start() ->
  utils:print('List of lists [M, N, a(M, N)] ==>'),
  utils:print(out(2, 2)),
  utils:print('Pretty ==>'),
  utils:pretty_print(out(2, 2)).