tag @s remove brokenShield

title @s actionbar ["",{text:"Shield Returned!",bold:true,color:green}]
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 10000 0.75

scoreboard players reset @s bogoShieldTimer

function du-in:kit/bogo/weapon