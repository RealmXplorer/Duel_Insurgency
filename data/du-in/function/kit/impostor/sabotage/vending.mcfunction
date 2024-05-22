#execute if entity @e[type=interaction,distance=..7,tag=sabotagedMachine,sort=nearest,limit=1] run function du-in:kit/impostor/sabotage/vending/fail

#execute unless entity @e[type=interaction,distance=..7,tag=sabotagedMachine,sort=nearest,limit=1] run function du-in:kit/impostor/sabotage/vending/init
execute if entity @s[tag=!vendingCooldown] run function du-in:kit/impostor/sabotage/vending/init

execute if entity @s[tag=vendingCooldown] run function du-in:kit/impostor/sabotage/vending/sabotage_cooldown

#tag @e[type=interaction,tag=sabotagedMachine,tag=vending] remove sabotagedMachine

#execute as @e[type=interaction,distance=..7,sort=nearest,limit=1] run tag @e[type=interaction,distance=..7,sort=nearest,limit=1] add sabotagedMachine

#playsound minecraft:block.anvil.break master @a ~ ~ ~ 1 1