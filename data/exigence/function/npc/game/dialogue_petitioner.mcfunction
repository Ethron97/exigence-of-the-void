## CONSTRAINTS
#   AS petitioner

#=============================================================================================================

execute if score #Petitioner game.dialogue matches 0 unless items entity @a[advancements={exigence:listener/interact/npc_petitioner_game=true}] weapon.mainhand glow_ink_sac \
run say The flame is gone, the Ardor have abandoned us.

execute if score #Petitioner game.dialogue matches 1 unless items entity @a[advancements={exigence:listener/interact/npc_petitioner_game=true}] weapon.mainhand glow_ink_sac \
run say Prove that the flame yet lives, and perhaps I will listen.

# If player is carrying Spark, give to petitioner
execute if score #Petitioner game.dialogue matches 0..1 as @a[advancements={exigence:listener/interact/npc_petitioner_game=true}] \
if items entity @s weapon.mainhand glow_ink_sac run function exigence:npc/game/petitioner/give_spark

execute if score #Petitioner game.dialogue matches 2 run say The flame... the flame returns!
execute if score #Petitioner game.dialogue matches 3 run say Blessed one, may your days grow ever brighter!
execute if score #Petitioner game.dialogue matches 4 run say Carry me away from this forsaken place, and my aid will be yours.
execute if score #Petitioner game.dialogue matches 5 run tellraw @a[tag=ActivePlayer] [{text:"Interact with the Petitioner to carry them. ",color:"gray"},{text:"WARNING: You cannot put them down again once you pick them up.",color:"red"}]
execute if score #Petitioner game.dialogue matches 6 run tag @s add Carried 
execute if score #Petitioner game.dialogue matches 6 run tag @a[advancements={exigence:listener/interact/npc_petitioner_game=true}] add Carrying

# increment score to advance dialogue
execute if score #Petitioner game.dialogue matches 2..6 run scoreboard players add #Petitioner game.dialogue 1
execute if score #Petitioner game.dialogue matches 0 run scoreboard players add #Petitioner game.dialogue 1
