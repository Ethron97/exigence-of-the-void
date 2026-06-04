# Handle in-game dialogue with Scientist

## CONSTRAINTS
#   AS/AT scientist (villager)

#====================================================================================================

execute if score npc.scientist game.dialogue matches 0 run tellraw @a[distance=..8] [{text:"[Scientist] ",color:"green"},{text:"Sol's flaming beard, that actually worked!",color:"white"}]
execute if score npc.scientist game.dialogue matches 1 run tellraw @a[distance=..8] [{text:"[Scientist] ",color:"green"},{text:"Took you long enough.",color:"white"}]
execute if score npc.scientist game.dialogue matches 2 run tellraw @a[distance=..8] [{text:"[Scientist] ",color:"green"},{text:"Of course I put myself in there on purpose. A lock only an intelligent creature could unlock.",color:"white"}]
execute if score npc.scientist game.dialogue matches 3 run tellraw @a[distance=..8] [{text:"[Scientist] ",color:"green"},{text:"I figured I would wait out this apocalypse until the city could be retaken.",color:"white"}]
execute if score npc.scientist game.dialogue matches 4 run tellraw @a[distance=..8] [{text:"[Scientist] ",color:"green"},{text:"What?! It's just you?",color:"white"}]
execute if score npc.scientist game.dialogue matches 5 run tellraw @a[distance=..8] [{text:"[Scientist] ",color:"green"},{text:"Ah... a resistance you say. I can help, but not from here. My equipment has been... ravaged.",color:"white"}]
execute if score npc.scientist game.dialogue matches 6 run tellraw @a[distance=..8] [{text:"[Scientist] ",color:"green"},{text:"My legs don't appear to be cooperating after so long within the mirror...",color:"white"}]
execute if score npc.scientist game.dialogue matches 7 run tellraw @a[distance=..8] [{text:"Interact with the Scientist to carry them. ",color:"gray"},{text:"WARNING: You cannot put them down again once you pick them up.",color:"red"}]
execute if score npc.scientist game.dialogue matches 8 run tag @s add Carried 
execute if score npc.scientist game.dialogue matches 8 as @a[advancements={exigence:listener/interact/npc_scientist_game=true}] run function exigence:player/utility/carry/start_carrying
execute if score npc.scientist game.dialogue matches 8 run title @a[tag=ActivePlayer,advancements={exigence:listener/interact/npc_scientist_game=false}] \
subtitle [{selector:"@a[advancements={exigence:listener/interact/npc_scientist_game=true}]",color:"dark_aqua"},{text:" is now carrying the ",color:"gray"},{text:"Scientist",color:"green"}]
execute if score npc.scientist game.dialogue matches 8 run title @a[tag=ActivePlayer,advancements={exigence:listener/interact/npc_scientist_game=false}] title ""

# increment score to advance dialogue
scoreboard players add npc.scientist game.dialogue 1