#DEFAULT GAMEMODE SELECT#
clone 637 15 33 673 31 69 -1001 11 499 replace force
fillbiome -1000 10 501 -966 26 534 minecraft:meadow

#KIT SELECT#
#clone 538 8 54 570 18 72 427 3 40

#MAP SELECT#
clone 206 14 96 216 4 121 227 90 13

team modify Red color red
team modify Blue color blue

team modify displayRedTeam color red
team modify displayBlueTeam color blue

team modify Red prefix {text:"[Red] ",bold:true,color:red}
team modify Blue prefix {text:"[Blue] ",bold:true,color:blue}

tp @a[tag=!subLobby,tag=!void,tag=!playing] -999 13 517 -90 0

#637 32 33