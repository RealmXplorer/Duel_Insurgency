#summon minecraft:arrow ~ ~2.1 ~ {Motion:[0.0,-10.0,0.0],Fire:750,pickup:0b,player:1b,damage:.3d,Tags:["asgoreFireStarter"],SoundEvent:"entity.player.hurt_on_fire"}
damage @s 5 minecraft:in_fire
data merge entity @s {Fire:40}