#Not Ghost skin
execute unless entity @s[scores={gastSkin=1}] run particle minecraft:smoke ~ ~1.5 ~ 0.2 0.5 0.2 0 150 force
execute unless entity @s[scores={gastSkin=1}] run playsound du-in:kit.gaster.ability master @a ~ ~ ~ 100 1

#Only Gaster
execute unless entity @s[scores={gastSkin=1..}] run playsound minecraft:entity.witch.celebrate master @a ~ ~ ~ 100 .1

#Ghost
execute if entity @s[scores={gastSkin=1}] run particle minecraft:dust{color:[0.75, 0.90, 1.0],scale:1.0} ~ ~1.5 ~ 0.2 0.5 0.2 0 150 force
execute if entity @s[scores={gastSkin=1}] run playsound du-in:kit.ghost.go master @a ~ ~ ~ 100 1
execute if entity @s[scores={gastSkin=1}] run playsound du-in:kit.ghost.away master @a ~ ~ ~ 100 1

#Spamton
execute if entity @s[scores={gastSkin=2}] run playsound du-in:kit.spamton.laugh master @a ~ ~ ~ 10 1

#Goner Mouth
execute if entity @s[scores={gastSkin=3}] run playsound du-in:goner.mouth.spawn master @a ~ ~ ~ 10 1

playsound du-in:sfx.ut.ability master @a ~ ~ ~ 100 1
playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 100 0.1