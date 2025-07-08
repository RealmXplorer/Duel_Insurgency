tp @s ~ ~ ~ facing entity @n[type=skeleton,tag=gonerThing,tag=sansHit] feet
function du-in:kit/sans/ability/effect

execute as @a[tag=sansHit] run function du-in:kit/sans/ability/hit/init

item replace entity @s[tag=!stolen] armor.head with minecraft:player_head[profile={id:[I;881608269,1844594977,-1098190182,376433112],name:"Sans",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDFlNzc3ODA5M2Q5NDUxNDU2ZjU2MmEzYTU3OGViOWZkOGIyYmUxZWUzMDE0Y2UyNjllNzI1NTI5YjQ3YThlIn19fQ=="}]}] 1

execute if entity @s[tag=stolen] unless entity @s[scores={villSkin=1..}] run item replace entity @s armor.head with minecraft:player_head[profile={id:[I;-1609821516,1001276308,-1990293118,2111808159],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTdhZjAxMjA5ZmJmMGFiNjE3MDdjN2NkN2NmMjVlOGNkMWYzYTJjNmJkNTM1M2NkYjQwZmFlZTI5NjM0NDVjNiJ9fX0="}]}] 1
execute if entity @s[tag=stolen] run item replace entity @s[scores={villSkin=1}] armor.head with minecraft:player_head[profile={id:[I;460001161,315772245,-1326845913,-282502319],name:"Vindicator",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTEwYTQyZTIzNGY3NTBmZjdkNjM5OTg4NzEwZWZjZDU5ZWY3NjEwM2Y1ZTY0YzA5OTAzMjc0MGFjNzZkODAzNSJ9fX0="}]}] 1
execute if entity @s[tag=stolen] run item replace entity @s[scores={villSkin=2}] armor.head with minecraft:player_head[profile={id:[I;-156087514,268190548,-2014839634,1772345224],name:"Witch",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWY4NjA5ZDkzMzcyNGU5NDlkZDkxZjdiNzA5NzFhYjNiNGZmMDM5MmM0Njc1N2Y2ZDg5NjNmZjZjZTBkMjBmYyJ9fX0="}]}] 1

clear @s #du-in:ability
xp set @s[tag=!stolen] 200 levels
tag @s add kitDone
playsound minecraft:sans.ability master @a ~ ~ ~ 100 1
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 100 0.3