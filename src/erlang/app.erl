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
-export([a/3, id/1]).
% Ackermann function implementation
a(0, N, 0) -> utils:print(N + 1), N + 1;
a(M, 0, C) -> a(M - 1, 1, C), C = C + 1;
a(M, N, C) -> a(M - 1, a(M, N - 1)).

id(X) -> X.