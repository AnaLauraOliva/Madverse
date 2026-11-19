% Definición de los hechos 
:- dynamic universe/1.         % universe(U)
:- dynamic active_universe/1.  % active_universe(U)

:- dynamic def_property/3.     % def_property(U, Name, Type)
:- dynamic def_role/2.         % def_role(U, Name)
:- dynamic def_group/2.        % def_group(U, Name)
:- dynamic def_relationship/2. % def_relationship(U, Type)

:- dynamic character/2.        % character(U, P)
:- dynamic belongs_to/3.       % belongs_to(U, P, Group)
:- dynamic has_role/3.         % has_role(U, P, Role)
:- dynamic property/4.         % property(U, P, Name, Value)
:- dynamic relationship/4.     % relationship(U, Type, P1, P2)
