# Called by calls/left_clicked and calls/right_clicked
#   (Currently we don't care which type of click you did)

## CONSTRAINTS:
#   AS/AT item shop display

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Menu) Clicked card shop menu

# Increase cooldown score for player
scoreboard players add @p[tag=Interacting,distance=..16] hub.player.interaction_cooldown 20
