# Called from game_tick

## CONSTRAINTS
#   AS Player

#==============================================================================================================

# Return if not active
execute unless entity @s[tag=ActivePlayer] run return fail

# COMMON FUNCTIONS (dead or alive)
#========================================================
# Snowball usage
execute if score @s Snowball matches 1.. run function exigence:hub/item_shop/frame/item/item_web_ball/trigger
execute if entity @e[type=marker,tag=SnowballMarker] run function exigence:hub/item_shop/frame/item/item_web_ball/private/tick_loop

# Check for right click on items
execute if score @s CarrotOnStick matches 1.. run function exigence:player/use_item/use_item

# Clear extra pot breakers
execute store result score temp Temp run clear @s wooden_sword 0
execute if score temp Temp matches 2.. run clear @s wooden_sword 1

# Sculk step
scoreboard players remove @s[scores={SculkStepCooldown=1..}] SculkStepCooldown 1
# Reset advanamcent once it runs out
advancement revoke @s[advancements={exigence:listener/step_on_sculk=true},scores={SculkStepCooldown=0}] only exigence:listener/step_on_sculk

# Resoure display
execute if data storage exigence:dungeon {max_menace:0} run function exigence:player/display/resource_bar/tick

# LIVING PLAYER FUNCTIONS:
#========================================================
execute if score @s dead matches 0 at @s run function exigence:player/tick/tick_alive
