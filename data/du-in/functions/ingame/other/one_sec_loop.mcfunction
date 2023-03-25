#Kill all items buried in the ground#
#execute if entity @a[scores={kit=1000..1001}] at @a[tag=playing] as @e[type=minecraft:wandering_trader,tag=vending,distance=..30] at @s run function du-in:ingame/vending_machine/vendor
execute if entity @a[scores={kit=1000..1001}] at @a[tag=playing] as @e[type=minecraft:painting,distance=..30] at @s run function du-in:ingame/vending_machine/vending

#Run as all players (every second)
execute as @a[tag=playing,tag=!grave] at @s run function du-in:ingame/other/play_half

#Check if player has weapon
execute as @a[gamemode=!spectator,tag=playing,tag=!startgame] store result score @s Acount run clear @s[tag=!kitMenu] carrot_on_a_stick 0
execute as @a[gamemode=!spectator,tag=playing,tag=!startgame,tag=!magma] unless entity @s[scores={palpTimer=-99..}] unless entity @s[scores={pussTimer=-99..}] unless entity @s[scores={Acount=1}] unless entity @s[level=3..] run xp set @s[tag=!grave,tag=!hornerWeapon] 2 levels

execute as @a[gamemode=!spectator,tag=playing,tag=!startgame,tag=!pussFear] store result score @s weapCount run clear @s[tag=!kitMenu] #du-in:weapon 0

#Add 1 to score "spawnpoint"
scoreboard players add @r[tag=playing,gamemode=!spectator,predicate=du-in:half_chance] spawnpoint 1

execute if score #main matchDeaths matches 8.. if entity @a[scores={kit=28}] run function du-in:kit/death/passive/start

#say success
schedule function du-in:ingame/other/one_sec_loop 1s