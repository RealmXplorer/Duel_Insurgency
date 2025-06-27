tellraw @a [{selector:"@s",bold:true,color:gold},{text:" is on a 5 player kill streak!",color:white}]
playsound minecraft:entity.blaze.ambient master @a ~ ~ ~ 100 .75
scoreboard players add @s Diamonds 15