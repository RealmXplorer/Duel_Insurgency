scoreboard players remove @s charaTimer 1

particle minecraft:ash ~ ~1.5 ~ 2 2 2 0 10 force

#Default Chara head
execute unless entity @s[tag=stolen] unless entity @s[scores={charaSkin=1}] run item replace entity @s armor.head with minecraft:player_head[profile={id:[I;-1120080984,-1824111292,-1842922353,322862101],name:"Chara",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmJlOTk5YzIwNmViY2JhYzBiYmM5NTQxYTI1ZGE4MWZkZWZiNGQ5ZjIwZWQ3Y2RhYmZlZmYyODU5YWRjNjY2MSJ9fX0="}]}] 1

#Villager Chara heads
execute if entity @s[tag=stolen] run function du-in:kit/villager/ability/effects/chara_head

execute if entity @s[scores={charaTimer=..0}] run function du-in:kit/chara/ability/end