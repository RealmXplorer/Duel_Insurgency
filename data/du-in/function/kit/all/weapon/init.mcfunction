
#execute if entity @s[tag=!pussFear,tag=!kratosRage,tag=!kitMenu,tag=!teamDead] run function du-in:kit/all/weapon/start
execute if entity @s[tag=!pussFear,tag=!kratosRage,tag=!kitMenu,tag=!teamDead,tag=!gasterInvisible,tag=!asrielSaber] unless entity @s[scores={floweyHitTimer=0..}] unless entity @s[scores={skeletonMode=1..}] run function du-in:kit/all/weapon/start

advancement revoke @s[tag=!lobby] only du-in:utility/weap_count
