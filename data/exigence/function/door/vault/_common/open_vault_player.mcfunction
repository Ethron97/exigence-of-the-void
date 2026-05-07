# Executes sub commands for opening vault

## CONSTRAINTS
#   AS player (tag=OpeningVault)

## INPUT
#   STR vault - must be valid vault name

#====================================================================================================

# DEBUG
$execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Open vault (player) $(vault)

# Door open effects (same for all vault doors)
stopsound @a neutral minecraft:block.beacon.activate

# If active player level is 3, tell them to light an altar to pick which trial to do
execute if score @s game.player.active_level matches 3 run tellraw @s [{text:"[!] ",color:"aqua"},{text:"Light an altar to decide your fate",color:"gray"}]

# Clear tag from player
tag @s remove OpeningVault
