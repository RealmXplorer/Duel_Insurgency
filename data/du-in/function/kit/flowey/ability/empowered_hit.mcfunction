#If player is nearby#
effect give @s minecraft:poison 1 8 true
damage @s 2 cactus
execute if predicate du-in:chance/quarter_chance run playsound minecraft:enchant.thorns.hit master @a ~ ~ ~ 1 1
function du-in:kit/flowey/ability/hit_particle
playsound minecraft:block.moss.place master @a ~ ~ ~ 10 1
playsound minecraft:block.moss.break master @a ~ ~ ~ 10 1
