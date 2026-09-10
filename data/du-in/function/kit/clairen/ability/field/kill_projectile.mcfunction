execute if entity @s[tag=papyrusFind] run kill @e[type=armor_stand,tag=papyrusBone,distance=..3]
execute if entity @s[tag=willoTrap] run function du-in:kit/willo/ability/trap/reset_start
playsound du-in:kit.clairen.deflect master @a ~ ~ ~ 1 1
kill @s