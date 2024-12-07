#SPIDER DEATH SOUND#
execute if entity @s[scores={kit=1}] run playsound minecraft:entity.spider.death master @a ~ ~ ~ 3 1

#ZOMBIE DEATH SOUNDS#
execute if entity @s[scores={kit=2}] run function du-in:kit/zombie/sounds/death

#SLIME DEATH SOUNDS#
execute if entity @s[scores={kit=3}] run function du-in:kit/slime/death

#CREEPER DEATH SOUND#
execute if entity @s[scores={kit=4}] run function du-in:kit/creeper/death

#SPRINGTRAP DEATH SOUND#
execute if entity @s[scores={kit=5}] run function du-in:kit/springtrap/death

#GOLEM DEATH SOUND#
execute if entity @s[scores={kit=6}] run function du-in:kit/golem/sounds/death

#PLAYER DEATH SOUND#
execute if entity @s[scores={kit=7}] run function du-in:kit/player/sounds/death

#VILLAGER DEATH SOUNDS#
execute if entity @s[scores={kit=8}] run function du-in:kit/villager/death

#Gaster Death#
execute if entity @s[scores={kit=10}] run function du-in:kit/gaster/sounds/death

#Flowey Death#
execute if entity @s[scores={kit=12}] run function du-in:kit/flowey/death


#UNDERTALE DEATH SOUND#
execute if entity @s[scores={kit=9..16}] unless entity @s[scores={kit=10}] run function du-in:kit/all/undertale/death

#KYLO DEATH SOUND#
execute if entity @s[scores={kit=17}] run function du-in:kit/kylo/sounds/death

#Vader DEATH#
execute if entity @s[scores={kit=18}] run function du-in:kit/vader/death

#PALPS DEATH SOUND#
execute if entity @s[scores={kit=19}] run playsound minecraft:palpatine.death master @a ~ ~ ~ 3 1

#YHARIM DEATH TIMER RESET
execute if entity @s[scores={kit=20}] run function du-in:kit/yharim/death

#SAAC DEATH SOUND#
execute if entity @s[scores={kit=1000}] run playsound minecraft:saac.death master @a ~ ~ ~ 3 1

execute if entity @s[scores={kit=1001}] run function du-in:kit/paz/sounds/death
#JERMA DEATH SOUND#
execute if entity @s[scores={kit=1002}] run playsound minecraft:jerma.death master @a ~ ~ ~ 3 1

#YHARIM DEATH SOUND#
execute if entity @s[scores={kit=20}] run playsound minecraft:terraria.golkill master @a ~ ~ ~ 3 1

#Cuphead Death Sound#
execute if entity @s[scores={kit=21}] run playsound minecraft:cuphead.death master @a ~ ~ ~ 3 1

#Gumball Death#
execute if entity @s[scores={kit=22}] run function du-in:kit/gumball/death


#Ralsei Death sound
execute if entity @s[scores={kit=24}] run function du-in:kit/all/undertale/death

#Yoda Death#
execute if entity @s[scores={kit=29}] run function du-in:kit/yoda/sounds/death

#Skeleton Death#
execute if entity @s[scores={kit=30}] run function du-in:kit/skeleton/sounds/death

#PAZ DEATH#
execute if entity @s[scores={kit=1001}] run function du-in:kit/paz/death

#RUNZA DEATH SOUND#
execute if entity @s[scores={kit=1004}] run playsound minecraft:runza.death master @a ~ ~ ~ 3 1