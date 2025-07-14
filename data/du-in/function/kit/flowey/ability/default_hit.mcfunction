#If player is nearby#
effect give @s minecraft:poison 1 6 true
execute if predicate du-in:chance/quarter_chance run playsound minecraft:enchant.thorns.hit master @a ~ ~ ~ 1 1
function du-in:kit/flowey/ability/hit_particle