scoreboard players add @s pussWeapSwitch 1
scoreboard players set @s[scores={pussWeapSwitch=3..}] pussWeapSwitch 1

execute if entity @s[scores={pussWeapSwitch=1}] run tag @s add gatitoBlade
#execute if entity @s[scores={pussWeapSwitch=1}] unless entity @s[scores={pussSkin=1}] run playsound minecraft:puss.gatito voice @a
#execute if entity @s[scores={pussSkin=1,pussWeapSwitch=1}] run playsound minecraft:kitty.gatito voice @a

execute if entity @s[scores={pussWeapSwitch=2}] run tag @s remove gatitoBlade

clear @s #du-in:weapon
clear @s #du-in:secondary
#clear @s carrot_on_a_stick

# scoreboard players set @s weapCount 0
function du-in:kit/all/weapon/init
scoreboard players set @s pussSwapTimer 20

#execute unless entity @s[level=1..] unless entity @s[scores={pussTimer=-99..}] run xp add @s 30 levels
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 1.25
# particle minecraft:dust 1 1 1 1 ~ ~1 ~ .5 .5 .5 1 100 force
particle minecraft:dust{color:[1.0, 1.0, 1.0],scale:1.0} ~ ~1 ~ .5 .5 .5 1 100 force

tag @s remove secKitActions
#[scores={parryWindow=..0}]
#execute unless entity @s[scores={parryWindow=0..}] run 