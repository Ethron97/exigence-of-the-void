# Reset advancement
advancement revoke @s only exigence:listener/pickup/berry

execute if score toggle.botany debug matches 1 if score debug.level debug matches 3.. run say (D3) Pickup berry

# Return if the game is not active or this player is not active
execute if score game.is_active game.state matches 0 run return 1
execute unless entity @s[tag=ActivePlayer] run return 1
#----------------------------------------------------------------------------------------------------

execute if score toggle.botany debug matches 1 if score debug.level debug matches 3.. run say (D3) Pickup berry (game)

# Give based on if ambrosia or normal berry
scoreboard players set #temp Temp 0
execute store success score #temp Temp run clear @s minecraft:sweet_berries[custom_model_data={strings:["ambrosia"]}] 0

# Delete the picked item from their inventory
clear @s minecraft:sweet_berries 1

execute if score #temp Temp matches 0 run function exigence:player/give/berry
execute if score #temp Temp matches 1 run function exigence:player/give/berry_ambrosia

# TODO
# Scores