execute unless score #main pylonsDestroyed matches 3 positioned 1968 52 1996 if entity @p[distance=..5,tag=partyLeader] run scoreboard players add #main lobbyTheme 1
execute unless score #main pylonsDestroyed matches 3 run function du-in:lobby/display/holiday
setblock ~ ~2 ~ stone_button[face=floor,facing=west] destroy