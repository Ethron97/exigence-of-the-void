# Executes sub-sub commands for opening vault

## CONSTRAINTS
#   AS/AT VaultNode

#======================================================================================================

playsound minecraft:item.totem.use neutral @a ~ ~ ~ 2 1
particle enchant ~ ~ ~ 1 1 1 0 100
scoreboard players add @s node.vault.data.opened 1
tag @s add Opened
scoreboard players operation #compare game.vault.handle.id = @s NodeID
