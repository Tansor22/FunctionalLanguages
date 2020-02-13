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
-export([a/2, id/1]).
% Ackermann function implementation
a(0, N) -> N + 1;
a(M, 0) -> a(M - 1, 1);
a(M, N) -> a(M - 1, a(M, N - 1)).

id(X) -> X.