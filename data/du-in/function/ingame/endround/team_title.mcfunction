#Test which team won
execute if entity @a[tag=team1,tag=win,tag=!tie] run title @a title [{text:"RED TEAM",bold:true,color:red}]
execute if entity @a[tag=team2,tag=win,tag=!tie] run title @a title [{text:"BLUE TEAM",bold:true,color:blue}]

#If tied
execute if entity @a[tag=team1,tag=win,tag=tie] run title @a title [{text:"TIE!",bold:true,color:gray}]
