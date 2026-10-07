#Cancel setup if an unpowered redstone lamp or copper bulb is present
execute if block ~ ~ ~ minecraft:redstone_lamp[lit=false] run return fail
execute if block ~ ~ ~ minecraft:copper_bulb[lit=false] run return fail
execute if block ~ ~ ~ minecraft:waxed_copper_bulb[lit=false] run return fail
execute if block ~ ~ ~ minecraft:exposed_copper_bulb[lit=false] run return fail
execute if block ~ ~ ~ minecraft:waxed_exposed_copper_bulb[lit=false] run return fail
execute if block ~ ~ ~ minecraft:weathered_copper_bulb[lit=false] run return fail
execute if block ~ ~ ~ minecraft:waxed_weathered_copper_bulb[lit=false] run return fail
execute if block ~ ~ ~ minecraft:oxidized_copper_bulb[lit=false] run return fail
execute if block ~ ~ ~ minecraft:waxed_oxidized_copper_bulb[lit=false] run return fail

#Kill old light marker if already set
execute as @n[distance=..0.5,type=marker,tag=light,tag=!unset] run kill @s

#Summon new light marker
summon marker ~ ~ ~ {Tags:["light","unset"]}

#Test for what kind of light block
execute if block ~ ~ ~ minecraft:light as @n[type=marker,tag=light,tag=unset] run return run function du-in:kit/freddy/ability/light/take/light
execute if block ~ ~ ~ minecraft:glowstone as @n[type=marker,tag=light,tag=unset] run return run function du-in:kit/freddy/ability/light/take/glowstone
execute if block ~ ~ ~ minecraft:sea_lantern as @n[type=marker,tag=light,tag=unset] run return run function du-in:kit/freddy/ability/light/take/sea_lantern
execute if block ~ ~ ~ minecraft:redstone_lamp[lit=true] as @n[type=marker,tag=light,tag=unset] run return run function du-in:kit/freddy/ability/light/take/redstone_lamp
execute if block ~ ~ ~ #minecraft:copper_bulbs as @n[type=marker,tag=light,tag=unset] run return run function du-in:kit/freddy/ability/light/take/copper_bulbs
execute if block ~ ~ ~ #minecraft:campfires as @n[type=marker,tag=light,tag=unset] run return run function du-in:kit/freddy/ability/light/take/campfires
execute if block ~ ~ ~ #minecraft:froglights as @n[type=marker,tag=light,tag=unset] run return run function du-in:kit/freddy/ability/light/take/froglights
execute if block ~ ~ ~ minecraft:shroomlight as @n[type=marker,tag=light,tag=unset] run return run function du-in:kit/freddy/ability/light/take/shroomlight
