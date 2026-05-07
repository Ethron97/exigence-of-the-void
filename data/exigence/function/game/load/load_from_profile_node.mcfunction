# Load info from primary profile node

## CONSTRAINTS
#   AS profile node

## OUTPUT
#   SCORE highest.win game.dungeon.setup
#   SCORE game.puzzle_candles game.dungeon

#====================================================================================================

execute if score debug.level debug matches 3.. run say (D3) Load primary profile related info

# Get highest win
scoreboard players operation highest.win game.dungeon.setup = @s profile.data.winloss.highest_win

# Get puzzle candles
scoreboard players operation game.puzzle_candles game.dungeon = @s profile.story.puzzle_candles

# Wards destroyed
scoreboard players operation game.wards_destroyed game.dungeon.setup = @s profile.story.adv.destroy_crystals
# Ward healths
scoreboard players operation ward.emerald game.story.wards = @s profile.story.ward_emerald
scoreboard players operation ward.sapphire game.story.wards = @s profile.story.ward_sapphire
scoreboard players operation ward.ruby game.story.wards = @s profile.story.ward_ruby
scoreboard players operation ward.topaz game.story.wards = @s profile.story.ward_topaz
scoreboard players operation ward.amethyst game.story.wards = @s profile.story.ward_amethyst
