# Handle in-game dialogue with Supplier

## CONSTRAINTS
#   AS/AT supplier (villager)

#====================================================================================================

execute if score npc.supplier game.dialogue matches 0 run tellraw @a[distance=..8] [{text:"[Supplier] ",color:"green"},{text:"H-hello?",color:"white"}]
execute if score npc.supplier game.dialogue matches 1 run tellraw @a[distance=..8] [{text:"[Supplier] ",color:"green"},{text:"Ancient l-light! H-how did you find me?",color:"white"}]
execute if score npc.supplier game.dialogue matches 2 run tellraw @a[distance=..8] [{text:"[Supplier] ",color:"green"},{text:"Oh... you're h-here for the keys?",color:"white"}]
execute if score npc.supplier game.dialogue matches 3 run tellraw @a[distance=..8] [{text:"[Supplier] ",color:"green"},{text:"T-tell you what... you c-carry me out of here and you can h-have all the keys you want.",color:"white"}]
execute if score npc.supplier game.dialogue matches 3 run tellraw @a[distance=..8] [{text:"Interact with the Supplier to carry them. ",color:"gray"},{text:"WARNING: You cannot put him down again once you pick him up.",color:"red"}]
execute if score npc.supplier game.dialogue matches 4 run tag @s add Carried
execute if score npc.supplier game.dialogue matches 4 as @a[advancements={exigence:listener/interact/npc_supplier_game=true}] run function exigence:player/utility/carry/start_carrying
execute if score npc.supplier game.dialogue matches 4 run title @a[tag=ActivePlayer,advancements={exigence:listener/interact/npc_supplier_game=false}] \
subtitle [{selector:"@a[advancements={exigence:listener/interact/npc_supplier_game=true}]",color:"dark_aqua"},{text:" is now carrying the ",color:"gray"},{text:"Supplier",color:"green"}]
execute if score npc.supplier game.dialogue matches 4 run title @a[tag=ActivePlayer,advancements={exigence:listener/interact/npc_supplier_game=false}] title ""

# increment score to advance dialogue
scoreboard players add npc.supplier game.dialogue 1