execute if entity @s[scores={hit=5..}] run function du-in:kit/villager/events/hit
execute if entity @s[scores={jump=1..}] run function du-in:kit/villager/events/jump

execute if entity @s[scores={villagerEmeralds=1..}] run function du-in:kit/villager/emeralds


#Head revert
execute if entity @s[tag=stolen,tag=givenStolen,tag=kitDone] run function du-in:kit/villager/ability/end/revert