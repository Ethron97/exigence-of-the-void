# Update bossbar visiblity based on value of timer and knock

## CONSTRAINTS
#   AS room node

#====================================================================================================

# If timer is less than threshold, not visible
execute if score @s hub.room.current_timer <= @s hub.room.expire_threshold run return run bossbar set exigence:expire_item_shop players
#----------------------------------------------------------------------------------------------------

bossbar set exigence:expire_item_shop players @a[tag=ItemShop]
