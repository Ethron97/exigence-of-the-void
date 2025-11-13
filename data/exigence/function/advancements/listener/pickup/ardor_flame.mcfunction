# DEBUG
#say Pickup ardor flame

# Reset advancement
advancement revoke @s only exigence:listener/pickup/ardor_flame

# Return if the game is not active
execute unless entity @s[tag=ActivePlayer] unless data storage exigence:dungeon {is_active:1} run return 1

# Kill all other ardor flames this player's level
scoreboard players operation #compare ObjectLevel = @s game.player.active_level
execute if data storage exigence:dungeon {is_active:1} at @s run execute as @e[distance=..1000,type=minecraft:item,tag=ArdorFlame] if score @s ObjectLevel = #compare ObjectLevel run kill @s

# Clear netherstar
execute if score @s game.player.active_level matches 1 run clear @s minecraft:nether_star[custom_data={ardor_flame:"true"}]
execute if score @s game.player.active_level matches 2 run clear @s minecraft:nether_star[custom_data={ardor_flame:"true"}]
execute if score @s game.player.active_level matches 3 run clear @s minecraft:nether_star[custom_data={ardor_flame:"true"}]
execute if score @s game.player.active_level matches 4 run clear @s minecraft:nether_star[custom_data={ardor_flame:"true"}]

# Give ardor flame
execute if score @s game.player.active_level matches 1 run function exigence:player/give/ardor_flame {model:{"strings":[ardor_flame_1]},text:'Ruins of Solstice'}
execute if score @s game.player.active_level matches 2 run function exigence:player/give/ardor_flame {model:{"strings":[ardor_flame_2]},text:'Mirror Mines'}
execute if score @s game.player.active_level matches 3 run function exigence:player/give/ardor_flame {model:{"strings":[ardor_flame_3]},text:'Temple of Fervor'}
execute if score @s game.player.active_level matches 4 run function exigence:player/give/ardor_flame {model:{"strings":[ardor_flame_4]},text:'Ardor\\\'s Bane'}
