title @a actionbar {"text":"","color":"gold","extra":[{"selector":"@s"},{"text":" is halfway to victory!"}]}
execute at @a run playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 1.15
#End function
tag @s[tag=!kothHalf] add kothHalf