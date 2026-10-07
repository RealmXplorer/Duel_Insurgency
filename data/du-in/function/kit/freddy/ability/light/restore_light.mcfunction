#Test for what kind of light block

execute if entity @s[scores={lightType=1}] run return run function du-in:kit/freddy/ability/light/restore/light
execute if entity @s[scores={lightType=2}] run return run function du-in:kit/freddy/ability/light/restore/glowstone
execute if entity @s[scores={lightType=3}] run return run function du-in:kit/freddy/ability/light/restore/sea_lantern
execute if entity @s[scores={lightType=4}] run return run function du-in:kit/freddy/ability/light/restore/redstone_lamp
execute if entity @s[scores={lightType=5}] run return run function du-in:kit/freddy/ability/light/restore/copper_bulbs
execute if entity @s[scores={lightType=6}] run return run function du-in:kit/freddy/ability/light/restore/campfires
execute if entity @s[scores={lightType=7}] run return run function du-in:kit/freddy/ability/light/restore/froglights
execute if entity @s[scores={lightType=8}] run return run function du-in:kit/freddy/ability/light/restore/shroomlight
