# Called from interaction

## CONSTRAINTS
#   AS BellInteraction interaction OR BellNode armorstand
#       Both have the same NodeID

# ===============================================================================================================

# DEBUG
#say Ring resolve

# Tag the player who interacted
execute on target run tag @s add Ringing
execute on attacker run tag @s add Ringing

# Store compare
scoreboard players operation #compare NodeID = @s NodeID

# Call subfunction as bell that is ringing
execute at @s as @e[distance=..10,type=minecraft:armor_stand,tag=BellNode] if score @s NodeID = #compare NodeID run function exigence:bell/node/private/ring

# Call Resonance
execute as @a[tag=ActivePlayer,tag=Ringing] run function exigence:cards/resonance/private/trigger

# Remove local tag
execute on target run tag @s remove Ringing
execute on attacker run tag @s remove Ringing
