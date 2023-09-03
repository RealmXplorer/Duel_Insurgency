
execute unless entity @a[tag=win] run function du-in:ingame/void/spawn/wave/wave1
execute if entity @e[type=marker,tag=electro] run function du-in:ingame/void/hazard/shock/effects

#execute if entity @a[tag=!win,scores={pylonTimer=..0},tag=partyLeader] run function du-in:ingame/void/end/win
execute if entity @a[scores={pylonTimer=..0},tag=partyLeader] run function du-in:ingame/void/end/explode

execute if score Insurgents playerCount matches ..0 unless entity @a[tag=win] run function du-in:ingame/void/end/lose

bossbar set gast:pylon4 max 3600
execute unless score Insurgents playerCount matches ..0 if score #main pylonTimer matches 1.. run scoreboard players remove #main pylonTimer 1
execute store result bossbar gast:pylon4 value run scoreboard players get #main pylonTimer
