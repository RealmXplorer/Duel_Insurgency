#Add Forceload for lobbies
forceload add -1002 537 -963 499
forceload add 231 6 231 40

#Add Forceloads for displays
forceload add 681 37 625 74
forceload add 200 100 215 119

#Switch
function du-in:lobby/theme/default/undo

#Gamemode Select
clone 637 100 33 673 116 69 -1001 11 499 replace force

#Switch to Void
function du-in:lobby/theme/void/display

#Map Select
clone 206 69 96 216 59 121 227 90 13

#Remove Forceloads for displays
forceload remove 681 37 625 74

#Remove forceloads
forceload remove -1002 537 -963 499
forceload remove 231 6 231 40
forceload remove 200 100 215 119