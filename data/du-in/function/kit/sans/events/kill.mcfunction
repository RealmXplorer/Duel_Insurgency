execute if entity @s[tag=killMsg] run tellraw @a {selector:"@s",color:red,bold:false,extra:[{text:" dunked on ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:dark_red,bold:false}]}
execute if entity @s[tag=!stolen,predicate=du-in:chance/quarter_chance] run playsound minecraft:sans.sans master @a ~ ~ ~ 1 1
