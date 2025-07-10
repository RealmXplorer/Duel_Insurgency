#Runs functions that Villager shouldn't be able to run (usually sounds and secondary abilities)
execute if entity @s[scores={bogoTimer=0..}] run function du-in:kit/bogo/ability/charge

execute if entity @s[tag=!stolen] run function du-in:kit/bogo/constant