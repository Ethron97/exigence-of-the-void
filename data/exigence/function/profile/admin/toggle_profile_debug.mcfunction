# Toggle profile debug (enable chat debug)

#====================================================================================================

# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if score toggle.profile debug matches 1 run scoreboard players set #temp debug 0
execute if score toggle.profile debug matches 0 run scoreboard players set #temp debug 1

# Callout new debug value
execute if score toggle.profile debug matches 1 run say Turning profile debug off
execute if score toggle.profile debug matches 0 run say Turning profile debug on

# Update actual value
scoreboard players operation toggle.profile debug = #temp debug

# 2. Run commands depending on debug state
