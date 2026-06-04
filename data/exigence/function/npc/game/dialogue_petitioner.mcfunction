# Handle in-game dialogue with Petitioner

## CONSTRAINTS
#   AS/AT petitioner (villager)

#====================================================================================================

execute if score npc.petitioner game.dialogue matches 0 unless items entity @a[advancements={exigence:listener/interact/npc_petitioner_game=true}] weapon.mainhand glow_ink_sac \
run tellraw @a[distance=..8] [{text:"[Petitioner] ",color:"green"},{text:"The flame is gone, the Ardor have abandoned us.",color:"white"}]

execute if score npc.petitioner game.dialogue matches 1 unless items entity @a[advancements={exigence:listener/interact/npc_petitioner_game=true}] weapon.mainhand glow_ink_sac \
run tellraw @a[distance=..8] [{text:"[Petitioner] ",color:"green"},{text:"Prove that the flame yet lives, and perhaps I will listen.",color:"white"}]

# If player is carrying Spark, give to petitioner
execute if score npc.petitioner game.dialogue matches 0..1 as @a[advancements={exigence:listener/interact/npc_petitioner_game=true}] \
if items entity @s weapon.mainhand glow_ink_sac run function exigence:npc/game/petitioner/give_spark

execute if score npc.petitioner game.dialogue matches 2 run tellraw @a[distance=..8] [{text:"[Petitioner] ",color:"green"},{text:"The flame... the flame returns!",color:"white"}]
execute if score npc.petitioner game.dialogue matches 3 run tellraw @a[distance=..8] [{text:"[Petitioner] ",color:"green"},{text:"Blessed one, may your days grow ever brighter!",color:"white"}]
execute if score npc.petitioner game.dialogue matches 4 run tellraw @a[distance=..8] [{text:"[Petitioner] ",color:"green"},{text:"Carry me away from this forsaken place, and my aid will be yours.",color:"white"}]
execute if score npc.petitioner game.dialogue matches 5 run tellraw @a[distance=..8] [{text:"Interact with the Petitioner to carry them. ",color:"gray"},{text:"WARNING: You cannot put them down again once you pick them up.",color:"red"}]
execute if score npc.petitioner game.dialogue matches 6 run tag @s add Carried 
execute if score npc.petitioner game.dialogue matches 6 as @a[advancements={exigence:listener/interact/npc_petitioner_game=true}] run function exigence:player/utility/carry/start_carrying
execute if score npc.petitioner game.dialogue matches 6 run title @a[tag=ActivePlayer,advancements={exigence:listener/interact/npc_petitioner_game=false}] \
subtitle [{selector:"@a[advancements={exigence:listener/interact/npc_petitioner_game=true}]",color:"dark_aqua"},{text:" is now carrying the ",color:"gray"},{text:"Petitioner",color:"green"}]
execute if score npc.petitioner game.dialogue matches 6 run title @a[tag=ActivePlayer,advancements={exigence:listener/interact/npc_petitioner_game=false}] title ""

# increment score to advance dialogue
execute if score npc.petitioner game.dialogue matches 2..6 run scoreboard players add npc.petitioner game.dialogue 1
execute if score npc.petitioner game.dialogue matches 0 run scoreboard players add npc.petitioner game.dialogue 1
