# playsound minecraft:block.ancient_debris.break master @s ~ ~ ~ 1000 2
# playsound minecraft:block.bell.use master @s ~ ~ ~ 1000 2
# playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1000 1

# execute unless entity @a[tag=partyLeader,tag=aprilFools] run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1000 1
# execute if entity @a[tag=partyLeader,tag=aprilFools] run playsound minecraft:soundeffect.fart master @s ~ ~ ~ 1000 1

execute if entity @s[scores={kit=1}] run playsound minecraft:entity.spider.ambient voice @a ~ ~ ~ 1000 1

execute if entity @s[scores={kit=2}] unless entity @s[scores={zombSkin=1..2}] run playsound minecraft:entity.zombie.ambient voice @a ~ ~ ~ 1000 1
execute if entity @s[scores={kit=2,zombSkin=1}] run playsound minecraft:entity.husk.ambient voice @a ~ ~ ~ 1000 1
execute if entity @s[scores={kit=2,zombSkin=2}] run playsound minecraft:entity.drowned.ambient voice @a ~ ~ ~ 1000 1

execute if entity @s[scores={kit=3}] run playsound minecraft:entity.slime.squish voice @a ~ ~ ~ 1 1
execute if entity @s[scores={kit=4}] run playsound minecraft:entity.creeper.primed voice @a ~ ~ ~ 1000 1

execute if entity @s[scores={kit=6}] run playsound minecraft:entity.iron_golem.hurt voice @a ~ ~ ~ 1 .85

execute if entity @s[scores={kit=7}] run tellraw @a ["",{"selector":"@s","color":"yellow"},{"text":" joined the game","color":"yellow"}]
execute if entity @s[scores={kit=7}] run playsound minecraft:ui.toast.in voice @a ~ ~ ~ 1 1

execute if entity @s[scores={kit=8}] unless entity @s[scores={villSkin=1..}] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 1 1
execute if entity @s[scores={kit=8,villSkin=1}] run playsound minecraft:entity.vindicator.ambient voice @a ~ ~ ~ 1 1
execute if entity @s[scores={kit=8,villSkin=2}] run playsound minecraft:entity.witch.ambient voice @a ~ ~ ~ 1 1

execute if entity @s[scores={kit=10}] run playsound minecraft:gaster.intro voice @a ~ ~ ~ 1 1

execute if entity @s[scores={kit=12}] run playsound minecraft:flowey.intro voice @a ~ ~ ~ 1 1

execute if entity @s[scores={kit=20}] run tellraw @a ["",{"selector":"@s","color":"AF4BFF","bold":true},{"text":" has awoken!","color":"AF4BFF","bold":true}]
execute if entity @s[scores={kit=20}] run playsound minecraft:ui.toast.in voice @a ~ ~ ~ 1 .5

execute if entity @s[scores={kit=1002},tag=kothIngame] run playsound minecraft:jerma.koth voice @a ~ ~ ~ 1000 1
execute if entity @s[scores={kit=1001}] run playsound minecraft:paz.fnf.go voice @s ~ ~ ~ 100000 1
