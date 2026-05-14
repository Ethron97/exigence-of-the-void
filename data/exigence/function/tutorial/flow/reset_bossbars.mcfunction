# Resets bossbars based on the current step
#   So we can skip sections etc and get the correct bossbar states

#====================================================================================================

execute if score toggle.tutorial debug matches 1 if score debug.level debug matches 3.. run say (D3) Reset bossbars

# Re-order if past certain point
execute if score tut.step hub.tutorial matches 107.. run function exigence:bossbar/tutorial/hide
execute if score tut.step hub.tutorial matches 107.. run function exigence:bossbar/tutorial_deck/initialize
execute if score tut.step hub.tutorial matches 107.. run function exigence:bossbar/tutorial/initialize

# Set to default
schedule clear exigence:tutorial/utility/flashing_bossbar_b
bossbar set exigence:tutorial name {text:"Follow the Tutorial Tokens",color:"green",italic:false}
bossbar set exigence:tutorial color green


execute if score tut.step hub.tutorial matches 107.. run bossbar set exigence:tutorial_deck name [{text:"Deck (5",color:"white"},{text:"/",color:"gray"},{text:"5): [ ",color:"white"},\
{text:"▌▌▌▌▌",color:"white",italic:false},{text:"",color:"dark_gray",italic:false},{text:" ]",color:"white"}]
execute if score tut.step hub.tutorial matches 205.. run bossbar set exigence:tutorial_deck name [{text:"Deck (4",color:"white"},{text:"/",color:"gray"},{text:"5): [ ",color:"white"},\
{text:"▌▌▌▌",color:"white",italic:false},{text:"▌",color:"dark_gray",italic:false},{text:" ]",color:"white"}]
execute if score tut.step hub.tutorial matches 801.. run bossbar set exigence:tutorial_deck name [{text:"Deck (3",color:"white"},{text:"/",color:"gray"},{text:"5): [ ",color:"white"},\
{text:"▌▌▌",color:"white",italic:false},{text:"▌▌",color:"dark_gray",italic:false},{text:" ]",color:"white"}]
execute if score tut.step hub.tutorial matches 1102.. run bossbar set exigence:tutorial_deck name [{text:"Deck (2",color:"white"},{text:"/",color:"gray"},{text:"5): [ ",color:"white"},\
{text:"▌▌",color:"white",italic:false},{text:"▌▌▌",color:"dark_gray",italic:false},{text:" ]",color:"white"}]
execute if score tut.step hub.tutorial matches 1208.. run bossbar set exigence:tutorial_deck name [{text:"Deck (1",color:"white"},{text:"/",color:"gray"},{text:"5): [ ",color:"white"},\
{text:"▌",color:"white",italic:false},{text:"▌▌▌▌",color:"dark_gray",italic:false},{text:" ]",color:"white"}]
execute if score tut.step hub.tutorial matches 1401.. run bossbar set exigence:tutorial_deck name [{text:"Deck (0",color:"white"},{text:"/",color:"gray"},{text:"5): [ ",color:"white"},\
{text:"",color:"white",italic:false},{text:"▌▌▌▌▌",color:"dark_gray",italic:false},{text:" ]",color:"white"}]

bossbar set exigence:tutorial value 0
execute if score tut.step hub.tutorial matches 101.. run bossbar set exigence:tutorial value 5
execute if score tut.step hub.tutorial matches 105.. run bossbar set exigence:tutorial value 10
execute if score tut.step hub.tutorial matches 107 run bossbar set exigence:tutorial value 12
execute if score tut.step hub.tutorial matches 205.. run bossbar set exigence:tutorial value 18
execute if score tut.step hub.tutorial matches 300.. run bossbar set exigence:tutorial value 19
execute if score tut.step hub.tutorial matches 316.. run bossbar set exigence:tutorial value 30
execute if score tut.step hub.tutorial matches 401.. run bossbar set exigence:tutorial value 31
execute if score tut.step hub.tutorial matches 902.. run bossbar set exigence:tutorial value 50
execute if score tut.step hub.tutorial matches 1004.. run bossbar set exigence:tutorial value 54
execute if score tut.step hub.tutorial matches 1104.. run bossbar set exigence:tutorial value 58
execute if score tut.step hub.tutorial matches 1200.. run bossbar set exigence:tutorial value 59
execute if score tut.step hub.tutorial matches 1203.. run bossbar set exigence:tutorial value 63
execute if score tut.step hub.tutorial matches 1300.. run bossbar set exigence:tutorial value 67
execute if score tut.step hub.tutorial matches 1305.. run bossbar set exigence:tutorial value 72
execute if score tut.step hub.tutorial matches 1309.. run bossbar set exigence:tutorial value 80
execute if score tut.step hub.tutorial matches 1400.. run bossbar set exigence:tutorial value 82
execute if score tut.step hub.tutorial matches 1406.. run bossbar set exigence:tutorial value 90

#execute if score tut.step hub.tutorial matches 5 run 
#execute if score tut.step hub.tutorial matches 106 run 
#execute if score tut.step hub.tutorial matches 301 run 
#execute if score tut.step hub.tutorial matches 401 run 
#execute if score tut.step hub.tutorial matches 1001 run 
#execute if score tut.step hub.tutorial matches 1101 run 
#execute if score tut.step hub.tutorial matches 1201 run 

#execute if score @s tutorial.marker.id matches 10 run scoreboard players set tut.fallback hub.tutorial 5
#execute if score @s tutorial.marker.id matches 15 run scoreboard players set tut.fallback hub.tutorial 106
#execute if score @s tutorial.marker.id matches 20 run scoreboard players set tut.fallback hub.tutorial 301
#execute if score @s tutorial.marker.id matches 31 run scoreboard players set tut.fallback hub.tutorial 401
#execute if score @s tutorial.marker.id matches 37 run scoreboard players set tut.fallback hub.tutorial 1001
#execute if score @s tutorial.marker.id matches 39 run scoreboard players set tut.fallback hub.tutorial 1101
#execute if score @s tutorial.marker.id matches 42 run scoreboard players set tut.fallback hub.tutorial 1201
