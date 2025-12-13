#Inflict high Wither, slowness. Maybe Nausea.
effect give @s wither 3 5 true
effect give @s poison infinite 5 true
effect give @s slowness infinite 1 true
effect give @s nausea infinite 1 true

tag @s add injected
title @s actionbar [{text:"Injected with Snake Venom!",bold:true,color:red}]
advancement revoke @s only du-in:kit/venom_injected