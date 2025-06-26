    execute if entity @s[tag=!darwin,predicate=du-in:weapon_hold,predicate=du-in:chance/quarter_chance,tag=!stolen] run playsound minecraft:gumball.bonk master @a ~ ~ ~ .5 1
    execute if entity @s[tag=darwin,predicate=du-in:weapon_hold,predicate=du-in:chance/half_chance,tag=!stolen] run playsound minecraft:soundeffect.sillywhack voice @s ~ ~ ~ 100 1
