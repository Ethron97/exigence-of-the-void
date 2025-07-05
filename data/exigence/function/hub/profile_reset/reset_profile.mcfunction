# Call as player
#   Clears ALL progress

# Store PlayerID
scoreboard players operation #temp PlayerID = @s PlayerID

# Clear ALL scoreboards
scoreboard players reset @s

# Clear ALL advancements
advancement revoke @s everything

# Reset physical progression
#   Library bookshelf, chest storage
execute as @e[type=minecraft:armor_stand,tag=PlayerNode] if score @s PlayerID = #temp PlayerID at @s run clone -264 -22 -54 -251 -18 -53 ~2 ~ ~

# Restore PlayerID
scoreboard players operation @s PlayerID = #temp PlayerID

# Initialize default settings
scoreboard players set @s s_cardDisplayBossbar 1

# Initialize Ward scores
scoreboard players set @s WardEmerald 3
scoreboard players set @s WardSapphire 3
scoreboard players set @s WardRuby 3
scoreboard players set @s WardTopaz 3
scoreboard players set @s WardAmethyst 3

# Tellraw
tellraw @s {text:"\nProfile Reset",color:"gray",bold:true,italic:false}


execute as @s run function exigence:hub/profile_reset/private/initialize_trial_scores
