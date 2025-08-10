# Turn off
say Reset tutorial

function exigence:game/game_reset/reset_player_scores

data modify storage exigence:dungeon waiting_for_respawn set value 0


# Kill items
kill @e[type=minecraft:item,scores={ObjectLevel=10}]



# Kill ravagers
kill @e[type=ravager,tag=L10]

# Kill Ravager Glass stands (function both respawns and kills)
execute as @e[type=minecraft:marker,tag=RavagerGlass] run function exigence:game/game_tick/ravager_glass/respawn_ravager_glass

# Clear ravager loop ice
fill -260 5 -134 -260 2 -136 air replace ice
fill -249 2 -131 -249 4 -127 air replace ice
fill -244 2 -133 -247 4 -133 air replace ice

# Reset post-berry ice
fill -264 13 -185 -261 17 -185 ice replace air

# Fill below house
fill -251 13 -209 -246 17 -209 ice

# Post altar
fill -256 23 -237 -256 27 -233 ice

# Post ravager
fill -271 23 -237 -269 27 -237 ice replace air

# Clear bell sculk
fill -272 23 -252 -268 29 -252 ice replace sculk

# Ice variance
fill -266 22 -245 -267 22 -244 ice replace water