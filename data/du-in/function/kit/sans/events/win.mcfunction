#Default Win music
function du-in:ingame/endround/win_music
execute if entity @s[scores={sansSkin=2}] run playsound minecraft:jevil.win master @a ~ ~ ~ 100 1
