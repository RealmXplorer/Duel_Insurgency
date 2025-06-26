execute unless entity @s[scores={clairenSkin=2}] if entity @s[predicate=du-in:weapon_hold,tag=!stolen] run playsound minecraft:saber.land master @a ~ ~ ~ .5 1
execute if entity @s[scores={clairenSkin=2}] if entity @s[predicate=du-in:weapon_hold,predicate=du-in:chance/half_chance,tag=!stolen] run playsound minecraft:gumball.bonk master @a ~ ~ ~ .5 1
