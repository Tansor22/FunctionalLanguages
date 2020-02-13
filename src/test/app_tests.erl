%%%-------------------------------------------------------------------
%%% @author Sergei
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 13. февр. 2020 18:38
%%%-------------------------------------------------------------------
-module(app_tests).
-author("Sergei").

-include_lib("eunit/include/eunit.hrl").

a_0_0_test() ->
  ?assertEqual(1, app:a(0, 0)).
a_2_1_test() ->
  ?assertEqual(5, app:a(2, 1)).
a_2_3_test() ->
  ?assertEqual(9, app:a(2, 3)).
