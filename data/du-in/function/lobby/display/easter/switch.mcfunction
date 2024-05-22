function du-in:lobby/display/default/undo
#clone 637 15 183 673 31 219 -1001 11 499 replace force
clone 637 83 33 673 99 69 -1001 11 499 replace force

function du-in:lobby/display/easter/display

#KIT SELECT#
#clone 538 8 29 570 18 47 427 3 40

#MAP SELECT#
#clone 154 14 96 164 4 121 227 90 13
clone 206 58 96 216 48 121 227 90 13

tellraw @a ["",{"text":"Easter ","bold":true,"color":"light_purple"},{"text":"lobby theme selected!","color":"yellow"}]