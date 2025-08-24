# Resets bossbars based on the current step
#   So we can skip sections etc and get the correct bossbar states

#=============================================================================================================

# Re-order if past certain point
execute if score Step Tutorial matches 107.. run function exigence:bossbar/tutorial/hide
execute if score Step Tutorial matches 107.. run function exigence:bossbar/tutorial_deck/initialize
execute if score Step Tutorial matches 107.. run function exigence:bossbar/tutorial/initialize

# Set to default
schedule clear exigence:tutorial/utility/flashing_bossbar_b
bossbar set exigence:tutorial name {text:"Follow the Tutorial Tokens",color:"green",italic:false}
bossbar set exigence:tutorial color green


execute if score Step Tutorial matches 107.. run bossbar set exigence:tutorial_deck name [{text:"Deck (5",color:"white"},{text:"/",color:"gray"},{text:"5): [ ",color:"white"},\
{text:"▌▌▌▌▌",color:"white",italic:false},{text:"",color:"dark_gray",italic:false},{text:" ]",color:"white"}]
execute if score Step Tutorial matches 301.. run bossbar set exigence:tutorial_deck name [{text:"Deck (4",color:"white"},{text:"/",color:"gray"},{text:"5): [ ",color:"white"},\
{text:"▌▌▌▌",color:"white",italic:false},{text:"▌",color:"dark_gray",italic:false},{text:" ]",color:"white"}]
execute if score Step Tutorial matches 801.. run bossbar set exigence:tutorial_deck name [{text:"Deck (3",color:"white"},{text:"/",color:"gray"},{text:"5): [ ",color:"white"},\
{text:"▌▌▌",color:"white",italic:false},{text:"▌▌",color:"dark_gray",italic:false},{text:" ]",color:"white"}]
execute if score Step Tutorial matches 1102.. run bossbar set exigence:tutorial_deck name [{text:"Deck (2",color:"white"},{text:"/",color:"gray"},{text:"5): [ ",color:"white"},\
{text:"▌▌",color:"white",italic:false},{text:"▌▌▌",color:"dark_gray",italic:false},{text:" ]",color:"white"}]
execute if score Step Tutorial matches 1208.. run bossbar set exigence:tutorial_deck name [{text:"Deck (1",color:"white"},{text:"/",color:"gray"},{text:"5): [ ",color:"white"},\
{text:"▌",color:"white",italic:false},{text:"▌▌▌▌",color:"dark_gray",italic:false},{text:" ]",color:"white"}]
execute if score Step Tutorial matches 1401.. run bossbar set exigence:tutorial_deck name [{text:"Deck (0",color:"white"},{text:"/",color:"gray"},{text:"5): [ ",color:"white"},\
{text:"",color:"white",italic:false},{text:"▌▌▌▌▌",color:"dark_gray",italic:false},{text:" ]",color:"white"}]

bossbar set exigence:tutorial value 0
execute if score Step Tutorial matches 105.. run bossbar set exigence:tutorial value 10
execute if score Step Tutorial matches 200.. run bossbar set exigence:tutorial value 18
execute if score Step Tutorial matches 300.. run bossbar set exigence:tutorial value 26
execute if score Step Tutorial matches 400.. run bossbar set exigence:tutorial value 34
execute if score Step Tutorial matches 900.. run bossbar set exigence:tutorial value 42
execute if score Step Tutorial matches 1000.. run bossbar set exigence:tutorial value 50
execute if score Step Tutorial matches 1100.. run bossbar set exigence:tutorial value 58
execute if score Step Tutorial matches 1200.. run bossbar set exigence:tutorial value 66
execute if score Step Tutorial matches 1300.. run bossbar set exigence:tutorial value 84
execute if score Step Tutorial matches 1400.. run bossbar set exigence:tutorial value 92
execute if score Step Tutorial matches 1500.. run bossbar set exigence:tutorial value 98

#execute if score Step Tutorial matches 5 run 
#execute if score Step Tutorial matches 106 run 
#execute if score Step Tutorial matches 301 run 
#execute if score Step Tutorial matches 401 run 
#execute if score Step Tutorial matches 1001 run 
#execute if score Step Tutorial matches 1101 run 
#execute if score Step Tutorial matches 1201 run 

#execute if score @s TutorialMarkerID matches 10 run scoreboard players set Fallback Tutorial 5
#execute if score @s TutorialMarkerID matches 15 run scoreboard players set Fallback Tutorial 106
#execute if score @s TutorialMarkerID matches 20 run scoreboard players set Fallback Tutorial 301
#execute if score @s TutorialMarkerID matches 31 run scoreboard players set Fallback Tutorial 401
#execute if score @s TutorialMarkerID matches 37 run scoreboard players set Fallback Tutorial 1001
#execute if score @s TutorialMarkerID matches 39 run scoreboard players set Fallback Tutorial 1101
#execute if score @s TutorialMarkerID matches 42 run scoreboard players set Fallback Tutorial 1201
