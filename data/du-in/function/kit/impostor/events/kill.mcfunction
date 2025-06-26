execute if entity @s[tag=killMsg] run tellraw @a {selector:"@s",color:red,bold:false,extra:[{text:" ejected ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:dark_red,bold:false}]}
playsound minecraft:sus.kill voice @a ~ ~ ~ 3100000 1 1
execute if entity @s[predicate=du-in:chance/forty_chance] run playsound minecraft:sus.line.kill voice @a ~ ~ ~ 3100000 1 1