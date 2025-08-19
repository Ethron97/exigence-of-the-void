# Resets bossbars based on the current step
#   So we can skip sections etc and get the correct bossbar states

#=============================================================================================================

# Re-order if past certain point
execute if score Step Tutorial matches 107.. run function exigence:bossbar/tutorial/hide
execute if score Step Tutorial matches 107.. run function exigence:bossbar/tutorial_deck/initialize
execute if score Step Tutorial matches 107.. run function exigence:bossbar/tutorial/initialize

# Set to default
bossbar set exigence:tutorial name {text:"Follow the compass",color:"green",italic:false}

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
