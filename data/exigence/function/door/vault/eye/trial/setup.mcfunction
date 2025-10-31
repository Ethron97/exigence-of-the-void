# Responsible for setting everything up required for the Eye Trial/Crucible

#======================================================================================================

# Reset scores
scoreboard players set Eye TrialTimer 0

# Replace end portal
fill -364 148 -2 -347 148 14 end_portal replace black_concrete

# Summon first wave of 
execute positioned -360.5 152.0 5.5 run function exigence:door/vault/eye/trial/monster/new {Type:'husk',Rotation:[-90.0f,0.0f],Speed:1,Direction:0}
execute positioned -354.5 152.0 1.5 run function exigence:door/vault/eye/trial/monster/new {Type:'husk',Rotation:[0.0f,0.0f],Speed:1,Direction:1}
execute positioned -350.5 152.00 7.5 run function exigence:door/vault/eye/trial/monster/new {Type:'husk',Rotation:[90.0f,0.0f],Speed:1,Direction:2}
execute positioned -356.5 152.0 11.5 run function exigence:door/vault/eye/trial/monster/new {Type:'husk',Rotation:[180.0f,0.0f],Speed:1,Direction:3}

# Blue fire
execute if entity @a[scores={game.player.vault_code=4},tag=Crucible] run fill -363 158 13 -349 158 -1 minecraft:soul_soil replace minecraft:chiseled_tuff
