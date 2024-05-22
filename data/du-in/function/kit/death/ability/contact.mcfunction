execute if entity @s[predicate=!du-in:effect/is_on_fire] unless block ~ ~ ~ water run summon minecraft:arrow ~ ~2.5 ~ {Motion:[0.0,-10.0,0.0],Fire:750,pickup:0b,player:1b,damage:.9d,Tags:["asgoreFireStarter","mapSpecific"],SoundEvent:"entity.player.hurt_on_fire"}
damage @s[predicate=du-in:effect/is_on_fire] 6 generic

execute if block ~ ~ ~ water run damage @s 6 generic