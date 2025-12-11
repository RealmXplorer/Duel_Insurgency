#Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Run kit-specific functions in "(kit)/events/kill"
execute at @s run function du-in:kit/all/hit/find_kit with storage du-in:main player

#Break Hit Combo
execute if entity @s[scores={comboScore=3..}] run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ .5 2
scoreboard players set @s comboScore 0

#Reset Regen Timer
scoreboard players reset @s healthTimer
scoreboard players set @s regenTimer 0

#Cancel void lock
execute if entity @s[tag=voidReady] run function du-in:void/interact/reaffirm

#Start parry if taken damage
execute if entity @s[predicate=du-in:is_sneaking,scores={parryCooldown=..5},predicate=!du-in:effect/is_on_fire,predicate=!du-in:effect/is_poisoned,predicate=!du-in:effect/is_withered,predicate=!du-in:effect/is_invisible] unless entity @s[scores={floweyHitTimer=0..}] run function du-in:kit/all/parry/init
