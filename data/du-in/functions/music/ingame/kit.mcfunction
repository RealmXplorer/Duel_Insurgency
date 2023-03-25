#SAAC MUSIC#
execute if entity @s[tag=saac,tag=!bigChungus,tag=!saul] run function du-in:music/kit/saac

#KRAMPUS MUSIC#
#execute if entity @s[tag=playing,scores={kit=1001},tag=!musicOff,tag=!kothIngame,tag=!cqIngame,tag=!exIngame,tag=!ctfIngame] run function du-in:music/kit/krampus

#CHUNGUS MUSIC#
execute as @a[tag=bigChungus] run function du-in:music/kit/chungus

#CHUNGUS MUSIC#
execute as @a[tag=saul,tag=!bigChungus] run function du-in:music/kit/saul

#STOP CHARAFEAR#
#execute if entity @s[tag=charaFear] run function du-in:music/kit/stop/kit

#execute if entity @s[tag=!saac,tag=!bigChungus] run function du-in:music/kit/stop/kit