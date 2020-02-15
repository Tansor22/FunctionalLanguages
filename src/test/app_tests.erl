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
-import(app, [a/2, in/2, out/2]).
-import(utils, [print/1, pretty_print/1]).

a_0_0_test() ->
  ?assertEqual(1, a(0, 0)).
a_2_1_test() ->
  ?assertEqual(5, a(2, 1)).
a_0_1_test() ->
  ?assertEqual(2, a(0, 1)).
a_1_1_test() ->
  ?assertEqual(3, a(1, 1)).
a_2_3_test() ->
  ?assertEqual(9, a(2, 3)).
