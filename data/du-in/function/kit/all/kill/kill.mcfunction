#This function is triggered by this advancement
advancement revoke @s only du-in:utility/kill

#Add Kill scores#
scoreboard players add @s quickKill 1
scoreboard players add @s killStreak 1

#Detect Double, Triple, Quad or Quin kills#
execute if entity @s[scores={quickKill=1..}] run function du-in:ingame/killstreaks/combo

#Detect Killstreak
execute if entity @s[scores={killStreak=3..}] run function du-in:ingame/killstreak

execute unless score #main lobbyTheme matches 1.. unless entity @s[scores={justdied=1..}] run function du-in:kit/all/kill/kill_msg/default
execute if score #main lobbyTheme matches 1 unless entity @s[scores={justdied=1..}] run function du-in:kit/all/kill/kill_msg/halloween
execute if score #main lobbyTheme matches 2 unless entity @s[scores={justdied=1..}] run function du-in:kit/all/kill/kill_msg/thanks
execute if score #main lobbyTheme matches 3 unless entity @s[scores={justdied=1..}] run function du-in:kit/all/kill/kill_msg/christmas
execute if score #main lobbyTheme matches 4 unless entity @s[scores={justdied=1..}] run function du-in:kit/all/kill/kill_msg/easter

execute if entity @a[scores={justdied=1,killStreak=3..4}] run tellraw @a {"selector":"@s","color":"gold","bold":false,"extra":[{"text":" has ended ","color":"gray","bold":false},{"selector":"@a[scores={justdied=1,killStreak=3..4}]","color":"dark_red","bold":false},{"text":"'s 3 player killstreak!","bold":true,"color":"gray"}]}
execute if entity @a[scores={justdied=1,killStreak=5..}] run tellraw @a {"selector":"@s","color":"gold","bold":false,"extra":[{"text":" has ended ","color":"gray","bold":false},{"selector":"@a[scores={justdied=1,killStreak=5..}]","color":"dark_red","bold":false},{"text":"'s 5 player killstreak!","bold":true,"color":"gray"}]}

#Kill Sounds#
execute unless entity @a[tag=partyLeader,tag=aprilFools] run playsound minecraft:terraria.golkill master @s ~ ~ ~ .4 2
execute unless entity @a[tag=partyLeader,tag=aprilFools] run playsound minecraft:block.anvil.land master @s ~ ~ ~ 1 2
execute if entity @a[tag=partyLeader,tag=aprilFools] run playsound minecraft:soundeffect.boom master @s ~ ~ ~ 1 1

execute if entity @s[scores={kit=16},tag=!stolen,predicate=du-in:chance/quarter_chance] run playsound minecraft:sans.sans master @a ~ ~ ~ 1 1
execute if entity @s[scores={kit=26},tag=!stolen,predicate=du-in:chance/quarter_chance] run playsound minecraft:jack_horner.bumbum record @s ~ ~ ~ 1 1

#Rewards#
scoreboard players add @s Diamonds 2
scoreboard players add @s exp 1

execute if entity @s[scores={kit=7},tag=!stolen] run give @s minecraft:arrow 2

execute if entity @s[scores={kit=30,skeletonMode=1}] run give @s tipped_arrow[custom_name='{"text":"Slowness Arrows","color":"gold","bold":true,"italic":false}',lore=['{"text":"Throw or use to go back to sword mode","color":"dark_purple","bold":true}'],potion_contents={potion:"minecraft:slowness"}] 1
execute if entity @s[scores={kit=30,skeletonMode=2}] run give @s tipped_arrow[custom_name='{"text":"Poison Arrows","color":"gold","bold":true,"italic":false}',lore=['{"text":"Throw or use to go back to sword mode","color":"dark_purple","bold":true}'],potion_contents={potion:"minecraft:poison"}] 1

execute if entity @s[scores={kit=1000}] run function du-in:kit/saac/sounds/lines
#This also gives Fortnite Card
execute if entity @s[scores={kit=1001}] run function du-in:kit/paz/sounds/lines
execute if entity @s[scores={kit=1002}] run function du-in:kit/jerma/sounds/lines
execute if entity @s[scores={kit=1003}] run function du-in:kit/impostor/sounds/line
execute if entity @s[scores={kit=1004}] run function du-in:kit/runza/sounds/line

#CUSTOM KILLSOUNDS#
execute if entity @s[scores={kit=20}] run playsound minecraft:soundeffect.combo master @s ~ ~ ~ 1 .5

execute if entity @s[tag=hasRing] unless entity @s[scores={kit=31}] run scoreboard players add @s ringTimer 5