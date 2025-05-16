effect give @s instant_damage 1 1
effect give @s blindness 1 2

title @s actionbar {text:"THIS MACHINE IS BROKEN?!?!?!",bold:true,color:red}

tag @e[type=interaction,tag=vending] add stable
tag @e[type=interaction,tag=vending] remove sabotagedMachine

playsound minecraft:soundeffect.zap master @a ~ ~ ~ 10 1

schedule clear du-in:ingame/scheduled/three_sec_loop

tag @a[scores={kit=1003}] add vendingCooldown

schedule function du-in:kit/impostor/sabotage/vending/cooldown 10s