# Setup wards on level 4 runs
#   Only called if player is doing difficulty 4 and does not have break_wards advancement

## CONSTRAINTS
#   AS primary player

#============================================================================================================

# Debug
say Setup wards

# Reset tag
tag @e[tag=ChosenCrystal] remove ChosenCrystal

# Copy to main health scoreboard
scoreboard players operation ward.Emerald game.story.wards = @s profile.story.ward_emerald
scoreboard players operation ward.Sapphire game.story.wards = @s profile.story.ward_sapphire
scoreboard players operation ward.Ruby game.story.wards = @s profile.story.ward_ruby
scoreboard players operation ward.Topaz game.story.wards = @s profile.story.ward_topaz
scoreboard players operation ward.Amethyst game.story.wards = @s profile.story.ward_amethyst

# Summon ward if at least 1 health
execute if score ward.Emerald game.story.wards matches 1.. run function exigence:game/other/wards/crystal/spawn_crystal {color:'Emerald'}
execute if score ward.Sapphire game.story.wards matches 1.. run function exigence:game/other/wards/crystal/spawn_crystal {color:'Sapphire'}
execute if score ward.Ruby game.story.wards matches 1.. run function exigence:game/other/wards/crystal/spawn_crystal {color:'Ruby'}
execute if score ward.Topaz game.story.wards matches 1.. run function exigence:game/other/wards/crystal/spawn_crystal {color:'Topaz'}
execute if score ward.Amethyst game.story.wards matches 1.. run function exigence:game/other/wards/crystal/spawn_crystal {color:'Amethyst'}
