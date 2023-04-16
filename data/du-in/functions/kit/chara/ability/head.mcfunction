scoreboard players remove @s charaTimer 1


#Default Chara head
execute unless entity @s[scores={kit=8}] unless entity @s[scores={charaSkin=1}] run item replace entity @s armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Chara Jumpscare\"}"},SkullOwner:{Id:[I;-1120080984,-1824111292,-1842922353,322862101],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmJlOTk5YzIwNmViY2JhYzBiYmM5NTQxYTI1ZGE4MWZkZWZiNGQ5ZjIwZWQ3Y2RhYmZlZmYyODU5YWRjNjY2MSJ9fX0="}]}},weaponItem:1b} 1

#Villager Chara heads
execute if entity @s[scores={kit=8}] unless entity @s[scores={villSkin=1..}] run item replace entity @s armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Villager Scary\"}"},SkullOwner:{Id:[I;-1705767496,1220233606,-2086438613,1051629510],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTA0N2RhMGIzOTM4NDU1NmJjMzdlNTc4YWExYjM3NjU2Zjg4ZmUxNDNkMWI1ZGVhZDllMDZlNDM2ZjEyNzk0NyJ9fX0="}]}},weaponItem:1b} 1
execute if entity @s[scores={kit=8,villSkin=2}] run item replace entity @s armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Witch\"}"},SkullOwner:{Id:[I;816033679,1681476429,-1866795109,-489925513],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjNlODRhYmIxZTkzMmExN2JhNjI1MmVhMmEzYzEyZjRjMTdmZjhlZGVmNmNhOWQ3YjdjMjBiZTU2OWIyZmNmOSJ9fX0="}]}},weaponItem:1b} 1
execute if entity @s[scores={kit=8,villSkin=1}] run item replace entity @s armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Illager Scary\"}"},SkullOwner:{Id:[I;-49248431,-611696191,-1839785157,-132825210],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzdlM2UxZjQyYjJmYjQ2MmJiZjc1NTBmYWRjYTRiMDdiYjFhYWRlMzRkZGZlNjFiZmMwZGQyMjVhYWY2MTBlZSJ9fX0="}]}},weaponItem:1b} 1

tag @s[scores={charaTimer=..1}] add armor
scoreboard players reset @s[scores={charaTimer=..0}] charaTimer