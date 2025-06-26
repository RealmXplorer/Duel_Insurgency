execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

#Play plushie sound effect.
playsound minecraft:soundeffect.squeak master @a ~ ~ ~ 1 1.15

effect give @s slowness 2 0 true
effect give @s regeneration 2 0 true