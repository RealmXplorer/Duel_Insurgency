##Runs kit's ability. These commands are necessary
scoreboard players remove @s bogoTimer 1

execute if entity @s[scores={bogoTimer=..40},tag=empower,tag=!bogoCharge] run function du-in:kit/bogo/ability/start_charge
execute if entity @s[scores={bogoTimer=..20},tag=!empower,tag=!bogoCharge] run function du-in:kit/bogo/ability/start_charge

execute if entity @s[tag=bogoCharge] if entity @a[distance=0.5..3,gamemode=adventure,tag=playing] run function du-in:kit/bogo/ability/test_player
execute if entity @s[tag=bogoCharge] run particle minecraft:block{block_state:"minecraft:dirt"} ~ ~ ~ 0.05 0 0.05 1 10 force

execute if entity @s[tag=sabotaged] run function du-in:kit/bogo/ability/sabotaged

#End if not moving or timer expire.
execute if entity @s[scores={bogoTimer=..10},predicate=du-in:no_motion] run function du-in:kit/bogo/ability/end
execute if entity @s[scores={bogoTimer=..0}] run function du-in:kit/bogo/ability/end

