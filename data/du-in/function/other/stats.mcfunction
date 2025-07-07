tellraw @s [{text:"------------------------------",color:gray}]
tellraw @s [{text:"Game ",color:gray,bold:true},{"score":{"name":"#main","objective":"gameNum"},color:gold,bold:true}]

#Results
tellraw @s[tag=wonGame,tag=!wasSpect,tag=!fromVoid] [{text:"Result: ",color:gold,bold:false},{text:"Victory!",color:green,bold:true}]
tellraw @s[tag=!wonGame,tag=!wasSpect,tag=!fromVoid,tag=!tiedGame] [{text:"Result: ",color:gold,bold:false},{text:"Defeat!",color:red,bold:true}]
tellraw @s[tag=!wonGame,tag=!wasSpect,tag=!fromVoid,tag=tiedGame] [{text:"Result: ",color:gold,bold:false},{text:"Tie!",color:dark_gray,bold:true}]

#Void Results
tellraw @s[tag=!wonGame,tag=!wasSpect,tag=fromVoid] [{text:"Result: ",color:gold,bold:false},{text:"WHAT DID YOU HOPE TO DO?",color:dark_purple,bold:true}]
execute if score #main pylonsDestroyed matches 1 run tellraw @s[tag=wonGame,tag=!wasSpect,tag=fromVoid] [{text:"Result: ",color:gold,bold:false},{text:"WHY CHASE THE ILLUSIONS OF DREAMS?",color:light_purple,bold:true}]
execute if score #main pylonsDestroyed matches 2 run tellraw @s[tag=wonGame,tag=!wasSpect,tag=fromVoid] [{text:"Result: ",color:gold,bold:false},{text:"WHY WON'T YOU LISTEN? CAN YOU HEAR ME?",color:light_purple,bold:true}]
execute if score #main pylonsDestroyed matches 3 run tellraw @s[tag=wonGame,tag=!wasSpect,tag=fromVoid] [{text:"Result: ",color:gold,bold:false},{text:"DO YOU NOT SEE?",color:light_purple,bold:true}]

tellraw @s[tag=wasSpect] [{text:"Result: ",color:gold,bold:false},{text:"Specating",color:gray,bold:true}]

#Stats
tellraw @s[tag=!fromVoid] [{text:"\nKills: ",color:gray,bold:false},{"score":{"name":"*","objective":"gameKills"},color:gold,bold:false}]
tellraw @s[tag=fromVoid] [{text:"\nGoner Kills: ",color:gray,bold:false},{"score":{"name":"*","objective":"gameGonerKills"},color:gold,bold:false}]
tellraw @s [{text:"Deaths: ",color:gray,bold:false},{"score":{"name":"*","objective":"gameDeaths"},color:gold,bold:false}]
tellraw @s [{text:"Parries: ",color:gray,bold:false},{"score":{"name":"*","objective":"gameParries"},color:gold,bold:false}]
tellraw @s [{text:"Win Streak: ",color:aqua,bold:false},{"score":{"name":"*","objective":"winStreak"},color:gold,bold:false}]
tellraw @s [{text:"------------------------------",color:gray}]
