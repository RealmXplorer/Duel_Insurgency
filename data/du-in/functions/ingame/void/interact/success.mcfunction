execute if entity @s[tag=!voidReady] run playsound minecraft:goner.eye.spawn master @a ~ ~ ~ 1000 1
execute if entity @s[tag=!voidReady] run playsound minecraft:soundeffect.unlock master @a ~ ~ ~ 1000 1 1
execute if entity @s[tag=!voidReady] run playsound minecraft:soundeffect.unlock master @a ~ ~ ~ 1000 2 1
execute if entity @s[tag=!voidReady] run playsound minecraft:soundeffect.unlock master @a ~ ~ ~ 1000 .5 1

tag @s add voidReady
scoreboard players add #main voidReadyOnline 1
#execute as @a[tag=!spectating,tag=!working,tag=voidReady] run scoreboard players add #main voidReadyOnline 1
tellraw @a [{"text":"The Void shakes loose ","color":"red","bold":true},{"text":"(","color":"white","bold":true},{"score":{"name":"#main","objective":"voidReadyOnline"},"color":"white","bold":true},{"text":"/","color":"white","bold":true},{"score":{"name":"#main","objective":"online"},"color":"white","bold":true},{"text":")","color":"white","bold":true}]

#scoreboard players set #main voidReadyOnline 2
execute if score #main voidReadyOnline = #main online run function du-in:ingame/void/start