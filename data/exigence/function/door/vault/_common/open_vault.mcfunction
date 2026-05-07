# Executes sub-sub commands for opening vault

## CONSTRAINTS
#   AS/AT VaultNode

#====================================================================================================

execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Open vault (common)

playsound minecraft:item.totem.use neutral @a ~ ~ ~ 2 1
particle enchant ~ ~ ~ 1 1 1 0 100
scoreboard players add @s node.data.vault.opened 1
tag @s add Opened
tag @s remove ETICK
scoreboard players operation #compare game.vault.handle.id = @s node.id
