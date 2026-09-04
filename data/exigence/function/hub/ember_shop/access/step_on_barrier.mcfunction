# Called from step on barrier

## CONSTRAINTS
#   AS/AT player, ember shopping

#====================================================================================================

# If sneaking, teleport down
execute if entity @s[predicate=exigence:player/sneaking] positioned ~ ~-3 ~ run function exigence:hub/ember_shop/access/leave

# If not sneaking, actionbar
execute unless entity @s[predicate=exigence:player/sneaking] run title @s actionbar [{text:"Press [",color:"gray"},{keybind:"key.sneak",color:"green"},{text:"] to leave",color:"gray"}]
