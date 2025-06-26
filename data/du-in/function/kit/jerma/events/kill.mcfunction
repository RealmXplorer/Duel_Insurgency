execute if entity @s[tag=killMsg] run tellraw @a {selector:"@s",color:red,bold:false,extra:[{text:" zerked ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:dark_red,bold:false}]}

execute if entity @s[tag=!hasOnionRing,predicate=du-in:chance/half_chance] run function du-in:kit/jerma/secondary/give_onion

playsound minecraft:jerma.kill voice @a ~ ~ ~ 3100000 1 1

#execute if entity @s[tag=teamMode,predicate=du-in:chance/low_chance] run playsound minecraft:jerma.ctfkill voice @a ~ ~ ~ 3100000 1 1