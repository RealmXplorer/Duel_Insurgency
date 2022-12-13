execute if entity @s[tag=kitActions] if entity @a[distance=0.05..4,gamemode=!spectator,tag=playing,tag=!teamDead] unless score @s team = @a[distance=0.05..4,tag=playing,limit=1,sort=nearest] team run tag @a[distance=0.05..4,gamemode=!spectator,tag=playing,limit=1,sort=nearest,tag=!teamDead] add sansHit
tag @s[tag=kitActions] remove kyloHit
execute at @a[tag=sansHit] rotated as @a[tag=sansHit] run summon minecraft:marker ^ ^ ^-1 {Tags:["sansTp"]}

execute as @e[type=marker,tag=sansTp] at @s if block ~ ~ ~ #du-in:sans_valid if block ~ ~1 ~ #du-in:sans_valid run tp @a[tag=kitActions,scores={kit=16}] ~ ~ ~ facing entity @a[tag=sansHit,limit=1,sort=nearest] feet
execute as @e[type=marker,tag=sansTp] at @s if block ~ ~ ~ #du-in:sans_valid if block ~ ~1 ~ #du-in:sans_valid as @a[tag=kitActions,scores={kit=16}] at @s if entity @a[distance=0.05..4,gamemode=!spectator,tag=playing,tag=!teamDead] unless score @s team = @a[distance=0.05..4,tag=playing,limit=1,sort=nearest] team run function du-in:kit/sans/ability/effect

execute at @e[type=marker,tag=sansTp] unless block ~ ~ ~ #du-in:sans_valid run title @s actionbar ["",{"text":"You can't teleport behind them!","bold":true,"color":"red"}]

execute as @e[type=marker,tag=sansTp] at @s unless block ~ ~ ~ #du-in:sans_valid run playsound minecraft:block.anvil.land master @s ~ ~ ~ 10 1

execute if entity @s[tag=kitActions] unless entity @a[distance=0.05..4,gamemode=!spectator,tag=playing,tag=!teamDead] run function du-in:kit/all/ability/far
execute if entity @s[tag=kitActions] if entity @a[distance=0.05..3,gamemode=!spectator,tag=playing,tag=!teamDead] if score @s team = @a[distance=0.05..4,tag=playing,limit=1,sort=nearest] team run title @s actionbar ["",{"text":"They're on your team!","bold":true,"color":"red"}]

execute if entity @s[tag=kitActions] at @e[type=marker,tag=sansTp] run function du-in:kit/sans/ability/no_tp

execute as @e[type=marker,tag=sansTp] at @s if block ~ ~ ~ #du-in:sans_valid if block ~ ~1 ~ #du-in:sans_valid as @a[tag=kitActions,scores={kit=16}] at @s if entity @a[distance=0.05..4,gamemode=!spectator,tag=playing,tag=!teamDead] unless score @s team = @a[distance=0.05..4,tag=playing,limit=1,sort=nearest] team run function du-in:kit/sans/ability/success
execute as @e[type=marker,tag=sansTp] at @s if block ~ ~ ~ #du-in:sans_valid if block ~ ~1 ~ #du-in:sans_valid as @a[tag=kitActions,scores={kit=16}] at @s if entity @a[distance=0.05..4,gamemode=!spectator,tag=playing,tag=!teamDead] unless score @s team = @a[distance=0.05..4,tag=playing,limit=1,sort=nearest] team as @a[tag=kitActions,tag=stolen,scores={kit=16}] run function du-in:kit/sans/ability/stolen
tag @s[tag=kitActions] remove kitSounds
scoreboard players set @a[tag=sansHit] sansHitTimer 60
execute as @e[tag=sansTp] at @s if block ~ ~ ~ #du-in:sans_valid if block ~ ~1 ~ #du-in:sans_valid as @a[tag=kitActions,scores={kit=16}] at @s if entity @a[distance=0.5..4,gamemode=!spectator,tag=playing,tag=!teamDead] unless score @s team = @a[distance=0.05..4,tag=playing,limit=1,sort=nearest] team run execute as @a[scores={sansHitTimer=0..}] unless entity @s[scores={gasterTimer=..79}] unless entity @s[scores={deathTimer=0..}] run item replace entity @s armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"Gravity","color":"blue","bold":true}',color:2228479},Unbreakable:1b,weaponItem:1b,AttributeModifiers:[{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:1,Operation:0,UUIDLeast:928037,UUIDMost:684643}]} 1
tag @a[tag=sansHit] remove sansHit
kill @e[type=marker,tag=sansTp]
tag @s[tag=kitActions] remove kitActions
execute unless entity @s[scores={sansSkin=1..}] run item replace entity @s[level=..164,tag=!stolen,tag=playing] armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Sans\"}"},SkullOwner:{Id:[I;1075612150,944654141,-1270342541,-1555910951],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTVhZWY4ZDczYzZiM2I5N2Q3YjU3MTZmY2EyMTVmNWViYTY3OTkyMTJkMTFlYjYzZTE1ODg5NDBkMWUyMWI3MyJ9fX0="}]}}} 1
item replace entity @s[tag=!stolen,tag=playing,scores={sansSkin=1},level=..164] armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Sans\"}"},SkullOwner:{Id:[I;-1361811219,-379894067,-1830054592,-906781659],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOThhMjJmZmU1NjdhMzc2ZjliNjcyMjg5M2I4YzczZjJlYzU4YTk1ZGMxMmYxYjY3ZmUzNTUwMTU3ZmQ4NmI2YyJ9fX0="}]}},weaponItem:1b} 1
execute if entity @a[tag=sansHit,scores={sansHitTimer=..0}] run scoreboard players reset @s abilityUse