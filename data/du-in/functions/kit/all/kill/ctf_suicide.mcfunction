#This function runs if player kills self

#If suicide with other team flag
execute if entity @s[tag=team1,tag=otherFlag] run title @a title [{"text":"Blue ","bold":true,"color":"blue"},{"text":"flag dropped!","color":"red"}]
execute if entity @s[tag=team1,tag=otherFlag] run tellraw @a ["",{"text":"Red Team","bold":true,"color":"red"},{"text":" dropped the ","color":"gray"},{"text":"Blue ","bold":true,"color":"blue"},{"text":"flag!","color":"gray"}]
execute if entity @s[tag=team1,tag=otherFlag] run scoreboard players set #main blueFlagTimer 200

execute if entity @s[tag=team2,tag=otherFlag] run scoreboard players set #main redFlagTimer 200
execute if entity @s[tag=team2,tag=otherFlag] run title @a title [{"text":"Red ","bold":true,"color":"dark_red"},{"text":"flag dropped!","color":"red"}]
execute if entity @s[tag=team2,tag=otherFlag] run tellraw @a ["",{"text":"Blue Team","bold":true,"color":"blue"},{"text":" dropped the ","color":"gray"},{"text":"Red ","bold":true,"color":"red"},{"text":"flag!","color":"gray"}]

#If suicide with own flag
execute if entity @s[tag=team1,tag=ownFlag] run scoreboard players set #main redFlagTimer 200
execute if entity @s[tag=team1,tag=ownFlag] run title @a title [{"text":"Red ","bold":true,"color":"dark_red"},{"text":"flag dropped!","color":"red"}]
execute if entity @s[tag=team1,tag=ownFlag] run tellraw @a ["",{"text":"Blue Team","bold":true,"color":"blue"},{"text":" dropped the ","color":"gray"},{"text":"Red ","bold":true,"color":"red"},{"text":"flag!","color":"gray"}]

execute if entity @s[tag=team2,tag=ownFlag] run title @a title [{"text":"Blue ","bold":true,"color":"blue"},{"text":"flag dropped!","color":"red"}]
execute if entity @s[tag=team2,tag=ownFlag] run tellraw @a ["",{"text":"Red Team","bold":true,"color":"red"},{"text":" dropped the ","color":"gray"},{"text":"Blue ","bold":true,"color":"blue"},{"text":"flag!","color":"gray"}]
execute if entity @s[tag=team2,tag=ownFlag] run scoreboard players set #main blueFlagTimer 200

playsound minecraft:entity.blaze.death master @a ~ ~ ~ 2 .95
playsound minecraft:entity.allay.hurt master @a ~ ~ ~ 2 .5
