#execute if entity @s[tag=fortniteCard] run function du-in:kit/paz/card/lose_card

execute if entity @s[tag=!sabotaged,tag=!showTimeDuration] run playsound minecraft:beetlejuice.hit master @a ~ ~ ~ 0.2 1
execute if entity @s[tag=sabotaged,tag=showTimeDuration] run playsound minecraft:beetlejuice.hit master @a ~ ~ ~ 0.2 1.5
