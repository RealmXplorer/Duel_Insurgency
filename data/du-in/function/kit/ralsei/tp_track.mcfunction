#Add TP
execute if entity @s[tag=!void] if entity @a[distance=0.05..3,gamemode=!spectator] unless score @a[distance=0.05..3,tag=playing,gamemode=!spectator,limit=1] team = @s team run function du-in:kit/ralsei/tp/count
execute if entity @s[tag=void] if entity @e[type=skeleton,distance=0.05..3,tag=gonerThing] run function du-in:kit/ralsei/tp/count

#Max TP
execute if entity @s[scores={ralseiTP=160..}] run function du-in:kit/ralsei/tp/max