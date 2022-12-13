#SPIDER DEATH SOUND#
execute if entity @s[scores={kit=1}] run playsound minecraft:entity.spider.death master @a ~ ~ ~ 3 1

#ZOMBIE DEATH SOUNDS#
execute if entity @s[scores={kit=2}] run function du-in:kit/zombie/sounds/death

#SLIME DEATH SOUNDS#
execute if entity @s[scores={kit=3}] run function du-in:kit/slime/sounds/death

#CREEPER DEATH SOUND#
execute if entity @s[scores={kit=4}] run function du-in:kit/creeper/sounds/death

#WOLF DEATH SOUND#
#execute if entity @s[scores={kit=5}] run playsound minecraft:entity.wolf.death master @a ~ ~ ~ 3 1

#GOLEM DEATH SOUND#
execute if entity @s[scores={kit=6}] run function du-in:kit/golem/sounds/death

#VILLAGER DEATH SOUNDS#
execute if entity @s[scores={kit=8}] run function du-in:kit/villager/sounds/death

#Gaster Death#
execute if entity @s[scores={kit=10}] run function du-in:kit/gaster/sounds/death

#UNDERTALE DEATH SOUND#
execute if entity @s[scores={kit=9..16}] run function du-in:kit/all/undertale/death

#KYLO DEATH SOUND#
execute if entity @s[scores={kit=17}] unless entity @s[scores={kyloSkin=1}] run function du-in:kit/kylo/sounds/death

#PALPS DEATH SOUND#
execute if entity @s[scores={kit=19}] run playsound minecraft:palpatine.death master @a ~ ~ ~ 3 1

#LUKE DEATH SOUND#
#execute if entity @s[scores={kit=21}] run playsound minecraft:luke.death master @a ~ ~ ~ 3 1

#ANAKIN DEATH SOUND#
#execute if entity @s[scores={kit=22}] run playsound minecraft:anakin.death master @a ~ ~ ~ 3 1

#ANAKIN DEATH SOUND#
execute if entity @s[scores={kit=5}] run playsound minecraft:springtrap.death master @a ~ ~ ~ 3 1

#TERRARIA PLAYER DEATH SOUND#
execute if entity @s[scores={kit=7}] run function du-in:kit/player/sounds/death

#SAAC DEATH SOUND#
execute if entity @s[scores={kit=1000}] run playsound minecraft:saac.death master @a ~ ~ ~ 3 1

#KRAMPUS DEATH SOUND#
#execute if entity @s[scores={kit=1001}] run playsound minecraft:krampus.death master @a ~ ~ ~ 3 1

execute if entity @s[scores={kit=1001}] run playsound minecraft:paz.cry master @a ~ ~ ~ 3 1

#JERMA DEATH SOUND#
execute if entity @s[scores={kit=1002}] run playsound minecraft:jerma.death master @a ~ ~ ~ 3 1

#YHARIM DEATH SOUND#
execute if entity @s[scores={kit=20}] run playsound minecraft:terraria.golkill master @a ~ ~ ~ 3 1

#Cuphead Death Sound#
execute if entity @s[scores={kit=21}] run playsound minecraft:cuphead.death master @a ~ ~ ~ 3 1

#RUNZA DEATH SOUND#
execute if entity @s[scores={kit=1005}] run playsound minecraft:runza.death master @a ~ ~ ~ 3 1