execute on origin run data modify entity @n[type=item,tag=!displayItem,limit=1] Owner set from entity @s UUID
data modify entity @s PickupDelay set value 0s
execute on origin run tp @n[type=item,limit=1] @s
