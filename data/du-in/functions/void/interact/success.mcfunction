execute if entity @s[tag=!voidReady] run function du-in:void/interact/surrender
execute if entity @s[tag=!voidReady] run playsound minecraft:goner.eye.spawn master @a ~ ~ ~ 1000 1
execute if entity @s[tag=!voidReady] run playsound minecraft:soundeffect.unlock master @a ~ ~ ~ 1000 1 1
execute if entity @s[tag=!voidReady] run playsound minecraft:soundeffect.unlock master @a ~ ~ ~ 1000 2 1
execute if entity @s[tag=!voidReady] run playsound minecraft:soundeffect.unlock master @a ~ ~ ~ 1000 .5 1

tag @s add voidReady
scoreboard players add #main voidReadyOnline 1
tellraw @a [{"text":"The Void shakes loose ","color":"red","bold":true},{"text":"(","color":"white","bold":true},{"score":{"name":"#main","objective":"voidReadyOnline"},"color":"white","bold":true},{"text":"/","color":"white","bold":true},{"score":{"name":"#main","objective":"online"},"color":"white","bold":true},{"text":")","color":"white","bold":true}]

execute if entity @a[tag=devMode,tag=partyLeader] run function du-in:void/interact/begin_timer
execute if score #main voidReadyOnline = #main online run function du-in:void/interact/begin_timer