execute if entity @s[tag=!sabotaged] run tag @a[distance=..6,gamemode=!spectator,tag=!inField] add inField
execute if entity @s[tag=!sabotaged] run tag @a[distance=6..,gamemode=!spectator,tag=inField] remove inField

execute if entity @s[tag=sabotaged] run tag @a[distance=..6,gamemode=!spectator,tag=!sabotagedField] add sabotagedField
execute if entity @s[tag=sabotaged] run tag @a[distance=6..,gamemode=!spectator,tag=sabotagedField] remove sabotagedField