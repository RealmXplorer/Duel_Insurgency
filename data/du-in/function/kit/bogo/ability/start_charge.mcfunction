playsound minecraft:bogo.roar master @a ~ ~ ~ 1 1 1

execute if entity @s[tag=!sabotaged] run attribute @s movement_speed modifier remove bogo_charge_build
execute if entity @s[tag=!sabotaged] run attribute @s movement_speed modifier add bogo_charge 0.3 add_value

execute if entity @s[tag=sabotaged] run function du-in:kit/bogo/ability/sabotaged

tag @s add bogoCharge