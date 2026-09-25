tag @a[distance=..6,gamemode=!spectator,tag=!sabotagedField,tag=!inField] add sabotagedField
tag @a[distance=..6,tag=sabotagedField] add inField


execute as @a[distance=6..,gamemode=!spectator,tag=sabotagedField] run function du-in:kit/clairen/ability/remove_infield
