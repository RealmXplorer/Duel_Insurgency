playsound minecraft:block.ancient_debris.break master @s ~ ~ ~ 1000 2
playsound minecraft:block.bell.use master @s ~ ~ ~ 1000 2
playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1000 1

execute unless entity @a[tag=partyLeader,tag=aprilFools] run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ .4 1
execute if entity @a[tag=partyLeader,tag=aprilFools] run playsound minecraft:soundeffect.fart master @s ~ ~ ~ 1000 1

# execute if entity @s[scores={kit=1}] run playsound minecraft:entity.spider.ambient master @a ~ ~ ~ 1000 1

# execute if entity @s[scores={kit=2}] unless entity @s[scores={zombSkin=1..2}] run playsound minecraft:entity.zombie.ambient master @a ~ ~ ~ 1000 1
# execute if entity @s[scores={kit=2,zombSkin=1}] run playsound minecraft:entity.husk.ambient master @a ~ ~ ~ 1000 1
# execute if entity @s[scores={kit=2,zombSkin=2}] run playsound minecraft:entity.drowned.ambient master @a ~ ~ ~ 1000 1

# execute if entity @s[scores={kit=3}] run playsound minecraft:entity.slime.squish master @a ~ ~ ~ 1 1
# execute if entity @s[scores={kit=4}] run playsound minecraft:entity.creeper.death master @a ~ ~ ~ 1 0.8

# execute if entity @s[scores={kit=6}] run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 1 .85

# execute if entity @s[scores={kit=7}] run tellraw @s ["",{selector:"@s",color:yellow},{text:" has joined the game",color:yellow}]
# execute if entity @s[scores={kit=7}] run playsound minecraft:ui.toast.in master @s ~ ~ ~ 1 1

# execute if entity @s[scores={kit=8}] unless entity @s[scores={villSkin=1..}] run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 1 1
# execute if entity @s[scores={kit=8,villSkin=1}] run playsound minecraft:entity.vindicator.ambient master @s ~ ~ ~ 1 1
# execute if entity @s[scores={kit=8,villSkin=2}] run playsound minecraft:entity.witch.ambient master @s ~ ~ ~ 1 1

# execute if entity @s[scores={kit=1002},tag=kothIngame] run playsound minecraft:jerma.koth master @s ~ ~ ~ 1000 1
