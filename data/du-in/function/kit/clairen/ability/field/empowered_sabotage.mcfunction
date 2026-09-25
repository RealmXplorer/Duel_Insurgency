tag @a[distance=..6,gamemode=!spectator,tag=!empoweredSabotageField] add empoweredSabotageField
tag @a[distance=..6,tag=empoweredSabotageField] add inField

execute as @a[distance=6..,gamemode=!spectator,tag=empoweredSabotageField] run function du-in:kit/clairen/ability/remove_infield