scoreboard players remove @s charaTimer 1

particle minecraft:ash ~ ~1.5 ~ 2 2 2 0 10 force

#Default Chara head
execute unless entity @s[tag=stolen] unless entity @s[scores={charaSkin=1}] run item replace entity @s armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Chara Jumpscare\"}"},SkullOwner:{Id:[I;-1120080984,-1824111292,-1842922353,322862101],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmJlOTk5YzIwNmViY2JhYzBiYmM5NTQxYTI1ZGE4MWZkZWZiNGQ5ZjIwZWQ3Y2RhYmZlZmYyODU5YWRjNjY2MSJ9fX0="}]}},du-in:weaponItem} 1

#Villager Chara heads
execute if entity @s[tag=stolen] unless entity @s[scores={villSkin=1..}] run item replace entity @s armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Villager Scary\"}"},SkullOwner:{Id:[I;-1705767496,1220233606,-2086438613,1051629510],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTA0N2RhMGIzOTM4NDU1NmJjMzdlNTc4YWExYjM3NjU2Zjg4ZmUxNDNkMWI1ZGVhZDllMDZlNDM2ZjEyNzk0NyJ9fX0="}]}},du-in:weaponItem} 1
execute if entity @s[tag=stolen,scores={villSkin=2}] run item replace entity @s armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Witch\"}"},SkullOwner:{Id:[I;816033679,1681476429,-1866795109,-489925513],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjNlODRhYmIxZTkzMmExN2JhNjI1MmVhMmEzYzEyZjRjMTdmZjhlZGVmNmNhOWQ3YjdjMjBiZTU2OWIyZmNmOSJ9fX0="}]}},du-in:weaponItem} 1
execute if entity @s[tag=stolen,scores={villSkin=1}] run item replace entity @s armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Illager Scary\"}"},SkullOwner:{Id:[I;-49248431,-611696191,-1839785157,-132825210],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzdlM2UxZjQyYjJmYjQ2MmJiZjc1NTBmYWRjYTRiMDdiYjFhYWRlMzRkZGZlNjFiZmMwZGQyMjVhYWY2MTBlZSJ9fX0="}]}},du-in:weaponItem} 1


execute if entity @s[scores={charaTimer=..0}] run function du-in:kit/chara/ability/end
