#DEFAULT#
execute if entity @s[tag=!caveSpider] run function du-in:kit/spider/skins/default
execute if entity @s[tag=caveSpider] run function du-in:kit/spider/skins/cave

tag @s remove armor

#give @p minecraft:player_head{display:{Name:"{\"text\":\"Cave Spider\"}"},SkullOwner:{Id:[I;1208755157,-1292090154,-1307858249,643126204],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWNjYzRhMzJkNDVkNzRlOGIxNGVmMWZmZDU1Y2Q1ZjM4MWEwNmQ0OTk5MDgxZDUyZWFlYTEyZTEzMjkzZTIwOSJ9fX0="}]}}} 1