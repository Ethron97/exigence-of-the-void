# Save profile-level data on node

## CONSTRAINTS
#   AS profile node (tag=ActiveChest)

#====================================================================================================

# Save puzzle candle progress
scoreboard players operation @s profile.story.puzzle_candles = game.puzzle_candles game.dungeon

# Save bookshelf
execute at @s run function exigence:profile/profile_node/save/save_bookshelf

# Save ward healths
scoreboard players operation @s profile.story.ward_emerald = ward.emerald game.story.wards
scoreboard players operation @s profile.story.ward_sapphire = ward.sapphire game.story.wards
scoreboard players operation @s profile.story.ward_ruby = ward.ruby game.story.wards
scoreboard players operation @s profile.story.ward_topaz = ward.topaz game.story.wards
scoreboard players operation @s profile.story.ward_amethyst = ward.amethyst game.story.wards