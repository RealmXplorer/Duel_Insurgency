execute store result storage du-in:main player.current int 1 run scoreboard players get @s player
function du-in:kit/all/clear with storage du-in:main player
execute if entity @s[scores={FRIEND=2..,LEVEL_OF_FUN=6..}] run playsound minecraft:me master @s ~ ~ ~
return 1