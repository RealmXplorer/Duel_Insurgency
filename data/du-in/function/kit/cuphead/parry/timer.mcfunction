scoreboard players remove @s[scores={parryTimer=0..}] parryTimer 1

execute if entity @s[scores={parryTimer=..0},tag=!lobby] run function du-in:kit/all/secondary/return
execute if entity @s[scores={parryTimer=..0},tag=!lobby] run title @s actionbar [{text:"Parry Ready!",bold:true,color:green}]
scoreboard players reset @s[scores={parryTimer=..0}] parryTimer