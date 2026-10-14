#Test for what kind of light block

execute if entity @s[scores={lightType=1}] run return run function du-in:kit/freddy/ability/light/restore/light with entity @s data
execute if entity @s[scores={lightType=2}] run return run function du-in:kit/freddy/ability/light/restore/glowstone
execute if entity @s[scores={lightType=3}] run return run function du-in:kit/freddy/ability/light/restore/sea_lantern
execute if entity @s[scores={lightType=4}] run return run function du-in:kit/freddy/ability/light/restore/redstone_lamp
execute if entity @s[scores={lightType=5}] run return run function du-in:kit/freddy/ability/light/restore/copper_bulbs with entity @s data
execute if entity @s[scores={lightType=6}] run return run function du-in:kit/freddy/ability/light/restore/campfires
execute if entity @s[scores={lightType=7}] run return run function du-in:kit/freddy/ability/light/restore/froglights
execute if entity @s[scores={lightType=8}] run return run function du-in:kit/freddy/ability/light/restore/shroomlight
execute if entity @s[scores={lightType=9}] run return run function du-in:kit/freddy/ability/light/restore/torches with entity @s data
execute if entity @s[scores={lightType=10}] run return run function du-in:kit/freddy/ability/light/restore/lanterns with entity @s data
execute if entity @s[scores={lightType=11}] run return run function du-in:kit/freddy/ability/light/restore/candles with entity @s data
execute if entity @s[scores={lightType=12}] run return run function du-in:kit/freddy/ability/light/restore/end_rods with entity @s data