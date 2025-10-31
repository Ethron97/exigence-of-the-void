# March forward and place web if block is empty

## CONSTRAINTS
#   AT location

#=============================================================================================================

# Increase march score
scoreboard players add #march game.entity.snowball.id 1

# Return if too big
execute if score #march game.entity.snowball.id > #max_march game.entity.snowball.id run return 1

# Particle
particle minecraft:end_rod ~ ~ ~

# If block is air, place web and marker
execute if block ~ ~ ~ #exigence:web_place align xyz run summon marker ~0.5 ~0.5 ~0.5 {Tags:["WebBallWeb"]}
execute if block ~ ~ ~ #exigence:web_place run setblock ~ ~ ~ minecraft:cobweb

# If block is web/air, continue march forward / trajectory
execute if block ~ ~ ~ #exigence:web_pass rotated ~ ~5 positioned ^ ^ ^0.3 run function exigence:hub/item_shop/item/item_web_ball/private/web_ray/march
