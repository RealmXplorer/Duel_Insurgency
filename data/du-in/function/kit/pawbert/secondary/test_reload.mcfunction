advancement revoke @s only du-in:kit/venom_reload
scoreboard players set @s abilityDelay 5
execute unless score #delay running matches 1 run function du-in:kit/all/ability/delay/loop

execute if entity @s[tag=!hasVial] run function du-in:kit/pawbert/secondary/reload_fail
execute if entity @s[tag=hasVial] run function du-in:kit/pawbert/secondary/reload_injector