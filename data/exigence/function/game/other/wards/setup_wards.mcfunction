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
scoreboard players operation Emerald Wards = @s WardEmerald
scoreboard players operation Sapphire Wards = @s WardSapphire
scoreboard players operation Ruby Wards = @s WardRuby
scoreboard players operation Topaz Wards = @s WardTopaz
scoreboard players operation Amethyst Wards = @s WardAmethyst

# Summon ward if at least 1 health
execute if score Emerald Wards matches 1.. run function exigence:game/other/wards/crystal/spawn_crystal {color:'Emerald'}
execute if score Sapphire Wards matches 1.. run function exigence:game/other/wards/crystal/spawn_crystal {color:'Sapphire'}
execute if score Ruby Wards matches 1.. run function exigence:game/other/wards/crystal/spawn_crystal {color:'Ruby'}
execute if score Topaz Wards matches 1.. run function exigence:game/other/wards/crystal/spawn_crystal {color:'Topaz'}
execute if score Amethyst Wards matches 1.. run function exigence:game/other/wards/crystal/spawn_crystal {color:'Amethyst'}
