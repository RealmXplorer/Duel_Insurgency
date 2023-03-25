title @a actionbar {"text":"","color":"gold","extra":[{"selector":"@s"},{"text":" is halfway to victory!"}]}
#execute at @a run playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 1.15
execute at @a as @a run playsound minecraft:soundeffect.woosh master @s ~ ~ ~ .5 1
execute at @a as @a run playsound minecraft:soundeffect.woosh master @s ~ ~ ~ .5 2
#End function
tag @s[tag=!kothHalf] add kothHalf