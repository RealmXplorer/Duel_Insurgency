# execute if entity @s[tag=killMsg] run tellraw @a {selector:"@s",color:red,bold:false,extra:[{text:" goofed ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:dark_red,bold:false}]}

# execute if entity @s[predicate=du-in:chance/forty_chance] run playsound minecraft:paz.laugh voice @a ~ ~ ~ 3100000 1 1

# execute if entity @s[tag=!fortniteCard] run function du-in:kit/paz/card/give_card