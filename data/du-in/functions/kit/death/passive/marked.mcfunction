execute if entity @s[tag=!deathMark] run tellraw @a [{"selector":"@s[tag=!deathMark]","bold":true},{"text":" has been marked for death!","bold":true,"color":"dark_red"}]
execute at @s[tag=!deathMark] run playsound minecraft:death.whistle.mark master @a ~ ~ ~ 1 1
tag @s add deathMark

effect give @s[tag=!deathAbility] glowing 2 0 true
attribute @s[tag=!deathAbility] minecraft:generic.armor base set -10

#execute if entity @s[tag=deathMark] run scoreboard players set #main markTimer 3