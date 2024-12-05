tp @s ~ ~ ~ facing entity @a[tag=sansHit,limit=1,sort=nearest] feet
tag @s remove kyloHit
effect give @s minecraft:strength 3 1 true
effect give @s minecraft:speed 3 0 true
effect clear @s minecraft:levitation

scoreboard players set @a[tag=sansHit] sansHitTimer 60

playsound minecraft:sans.ability master @a ~ ~ ~ 100 1
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 100 0.3

scoreboard players set @s sansHead 35
item replace entity @s[tag=!stolen] armor.head with minecraft:player_head[custom_name='{"text":"Sans Glowing Eye"}',profile={id:[I;881608269,1844594977,-1098190182,376433112],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDFlNzc3ODA5M2Q5NDUxNDU2ZjU2MmEzYTU3OGViOWZkOGIyYmUxZWUzMDE0Y2UyNjllNzI1NTI5YjQ3YThlIn19fQ=="}]}] 1
execute if entity @s[tag=stolen] run function du-in:kit/villager/ability/sans_head

tag @s add cooldown
clear @s carrot_on_a_stick

# xp set @s[tag=!stolen] 200 levels
# tag @s add kitDone