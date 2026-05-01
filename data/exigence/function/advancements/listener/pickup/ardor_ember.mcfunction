# DEBUG
#say Pickup ardor ember

# Reset advancement
advancement revoke @s only exigence:listener/pickup/ardor_ember

# Return if the game is not active or this player is not active
execute if score game.is_active game.state matches 0 run return 1
execute unless entity @s[tag=ActivePlayer] run return 1
#----------------------------------------------------------------------------------------------------


# Clear ghast_tear
clear @s minecraft:ghast_tear[custom_data={ardor_ember:"true"}]

# Give ardor flame
execute if score @s game.player.active_level matches 1 run function exigence:player/give/ardor_ember {model:{"strings":["ardor_ember_1"]},text:'Ruins of Solstice'}
execute if score @s game.player.active_level matches 2 run function exigence:player/give/ardor_ember {model:{"strings":["ardor_ember_2"]},text:'Mirror Mines'}
execute if score @s game.player.active_level matches 3 run function exigence:player/give/ardor_ember {model:{"strings":["ardor_ember_3"]},text:'Temple of Fervor'}
execute if score @s game.player.active_level matches 4 run function exigence:player/give/ardor_ember {model:{"strings":["ardor_ember_4"]},text:'Ardor\\\'s Bane'}
