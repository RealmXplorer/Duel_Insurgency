
#Play sounds for ending
execute if entity @a[tag=partyLeader,tag=aprilFools] run playsound minecraft:soundeffect.laugh master @a ~ ~ ~ 100000 1
execute if entity @a[tag=partyLeader,tag=specialEvent] run playsound minecraft:soundeffect.bell master @a ~ ~ ~ 1 1
execute unless entity @a[tag=partyLeader,tag=aprilFools] if entity @s[tag=!tie,tag=!teamMode] run function du-in:kit/all/win/init

execute if entity @s[tag=tie] run function du-in:music/ingame/win
execute if entity @s[tag=!teamMode] run function du-in:music/ingame/win
