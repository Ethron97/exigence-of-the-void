# New web ray
#   Called by ../explode

## CONSTRAINTS
#   AT location

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 4.. run say (D4 Player) New web march

# Generate random yaw and pitch
execute store result storage exigence:temp snowball_yaw float 0.1 run random value 0..3600
execute store result storage exigence:temp snowball_pitch float 0.1 run random value -450..200

# Start forward
scoreboard players set #march game.entity.snowball.id 0
function exigence:hub/item_shop/item/item_web_ball/private/web_ray/start_march with storage exigence:temp
