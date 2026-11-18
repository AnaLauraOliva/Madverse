# Madverse

## Sistema

Madverse será un motor genérico en SWI-Prolog que permitirá definir, guardar, cargar y consultar distintos 'universos' de personajes organizados en grupos. Cada universo debe tener su propio esquema (propiedades, roles, grupos, tipos de relación) y sus propios datos. El sistema incluirá tres universos de demostración, por ahora se elige One Piece, Nanatsu no Taizai y Jujutsu Kaisen.

## Entidades

- universe
- character
- group
- role
- property
- relationship
- relationship_type

## Operaciones

- create_universe/1
- save_universe/1
- load_universe/1 (lee un archivo .pl del disco)
- activate/1 (marca cual de los universos ya cargados en memoria es el que el menú va a usar ahora)
- list_universes/1
- define_property/3
- define_role/2
- define_group/2
- define_relationship/2
- add_character/2
- assign_group/3
- assign_role/3
- add_property_value/4
- register_relationship/4
- las consultas (irán en un archivo queries.pl aparte).

### Consultas

Por ahora se definen las siguientes consultas:

1. ¿X pertenece al grupo Y?
2. ¿Dos personajes comparten el mismo valor en una propiedad?
3. Total de una propiedad numérica de un grupo (de los universos elegidos Nanatsu tiene los niveles de poder, One Piece tiene las recompensas, en Jujutsu Kaisen tendrán niveles de poder extraidos del fandom y serán una propiedad) (la solución que encuentro es que cuando se elija esta query se listen las propiedades numéricas, si no hay entonces solo sale volver)
4. Ranking de personajes por una propiedad numérica (misma solución que arriba)
5. ¿Cuántos miembros del grupo cumplen una condición?
6. Consultas sobre relaciones entre personajes.

## Decisiones

- Los predicados deben ser genéricos, o sea, deben ser válidos para cada universo.
- Las propiedades son de un solo tipo
- Las relaciones son simétricas
- Un personaje puede pertenecer a varios grupos
- Por ahora solo se puede agregar
- Todo el código estará en inglés y se usará snake_case, sin embargo, las descripciones y documentación estarán en español.
- Los nombres se normalizan a minúsculas con guiones bajos.
- Cada universo es un archivo nombre.pl en una carpeta universos.
- Cargar un universo ya en memoria reemplaza (con confirmación)
- El universo es el primer argumento
- Las propiedades se guardan como hechos independientes
