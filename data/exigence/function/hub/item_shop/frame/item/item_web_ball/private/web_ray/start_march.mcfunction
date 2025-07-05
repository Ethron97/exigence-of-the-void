# Start iteration march forward
#   Called by ./new

## CONSTRAINTS
#   AT location

## INPUTS
#   FLOAT snowball_yaw
#   FLOAT snowball_pitch

#=============================================================================================================

# Start the march given the input direction
$execute rotated $(snowball_yaw) $(snowball_pitch) positioned ^ ^ ^1 run function exigence:hub/item_shop/frame/item/item_web_ball/private/web_ray/march 
