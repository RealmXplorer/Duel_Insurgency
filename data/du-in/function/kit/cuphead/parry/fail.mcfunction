execute if entity @s[scores={parryTimer=1..}] run title @s actionbar ["",{text:"Can't Parry now!",bold:true,color:red}]
execute unless blocks ~ ~1 ~ ~ ~1 ~ ~ ~-.025 ~ all unless entity @s[scores={parryTimer=1..}] run title @s actionbar ["",{text:"Must be in air!",bold:true,color:red}]
playsound minecraft:block.anvil.land master @s ~ ~ ~ .2 1.2