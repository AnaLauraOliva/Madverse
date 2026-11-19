% tests/test_motor.pl — verificación manual de los dinámicos

verify_dynamic_predicates :-
    Expected = [ universe/1, active_universe/1,
                 def_property/3, def_role/2, def_group/2, def_relationship/2,
                 character/2, belongs_to/3, has_role/3,
                 property/4, relationship/4 ],
    findall(N/A, (member(N/A, Expected), is_dynamic(N/A)), Ok),
    findall(N/A, (member(N/A, Expected), \+ is_dynamic(N/A)), Missing),
    length(Expected, Total),
    length(Ok, NOk),
    format("Verificando ~w predicados dinámicos...~n~n", [Total]),
    forall(member(P, Ok),      format("  [OK]    ~w~n", [P])),
    forall(member(P, Missing), format("  [FALTA] ~w~n", [P])),
    format("~nResultado: ~w/~w correctos.~n", [NOk, Total]),
    Missing == [].

is_dynamic(N/A) :-
    length(Args, A),
    Head =.. [N|Args],
    predicate_property(Head, dynamic).