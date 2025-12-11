#Inflict high Wither, slowness. Maybe Nausea.
effect give @s wither 2 1 true
effect give @s poison 2 1 true
effect give @s slowness 2 1 true
effect give @s nausea 5 1 true

title @s actionbar [{text:"Inflicted with Snake Venom!",bold:true,color:red}]
advancement revoke @s only du-in:kit/venom_injected