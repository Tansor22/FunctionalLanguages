%%%-------------------------------------------------------------------
%%% @author Sergei
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 13. февр. 2020 19:07
%%%-------------------------------------------------------------------
-module(utils).
-author("Sergei").

%% API
-export([print/1, length/1, pretty_print/1]).

% Print Val in console
print(Val) -> erlang:display(Val).
pretty_print([]) -> [];
pretty_print([H| T]) -> print(H), pretty_print(T).
% Length of a list
length([]) -> 0;
length([First | Rest]) -> 1 + utils:length(Rest).
