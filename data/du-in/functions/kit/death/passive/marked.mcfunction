execute if entity @s[tag=!deathMark] unless entity @s[scores={kit=28}] run tellraw @a [{"selector":"@s[tag=!deathMark]","bold":true},{"text":" has been marked for death!","bold":true,"color":"dark_red"}]
execute if entity @s[tag=!deathMark,scores={kit=28}] run tellraw @a [{"selector":"@s[tag=!deathMark]","bold":true},{"text":" has come for everyone!","bold":true,"color":"dark_red"}]
execute at @s[tag=!deathMark] unless entity @s[scores={kit=28}] run playsound minecraft:death.whistle.mark master @s ~ ~ ~ 1 1
execute at @s[tag=!deathMark,scores={kit=28}] run playsound minecraft:death.whistle.mark master @a ~ ~ ~ 1 1
tag @s add deathMark

effect give @s[tag=!deathAbility] glowing infinite 0 true
execute unless entity @s[scores={kit=28}] run attribute @s minecraft:generic.armor base set -10

attribute @s[scores={kit=28}] minecraft:generic.armor base set 6