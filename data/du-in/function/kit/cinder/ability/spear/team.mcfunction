execute if entity @s[predicate=du-in:effect/has_weakness] run playsound minecraft:soundeffect.cure master @a ~ ~ ~ 1 1
effect clear @s minecraft:weakness
effect give @s minecraft:strength 3 1 true
effect give @s minecraft:instant_health 1 1 true
tellraw @s [{text:"You have been strengthed by Faith!",bold:true,color:green}]
