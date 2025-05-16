function du-in:lobby/display/default/undo
#clone 637 15 108 673 31 144 -1001 11 499 replace force
clone 637 49 33 673 65 69 -1001 11 499 replace force

function du-in:lobby/display/thanks/display

#KIT SELECT#
#clone 538 8 5 570 18 23 427 3 40

#MAP SELECT#
#clone 180 14 96 190 4 121 227 90 13

clone 206 36 96 216 26 121 227 90 13

tellraw @a ["",{text:"Thanksgiving ",bold:true,color:gold},{text:"lobby theme selected!",color:yellow}]