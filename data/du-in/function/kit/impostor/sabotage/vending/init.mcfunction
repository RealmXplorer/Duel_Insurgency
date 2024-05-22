tag @e[type=interaction,tag=vending] add stable
tag @e[type=interaction,tag=vending] remove sabotagedMachine

execute as @e[type=interaction,distance=..7,tag=vending,sort=nearest,limit=1] run tag @s add sabotagedMachine

tag @e[type=interaction,tag=vending,tag=sabotagedMachine] remove stable

playsound minecraft:block.anvil.break master @a ~ ~ ~ 1 1

title @s actionbar {"text":"Vending Machine Sabotaged!","bold":true,"color":"green"}
playsound minecraft:soundeffect.zap master @a ~ ~ ~ 1 1

function du-in:ingame/scheduled/three_sec_loop