# Damage amethyst

## CONSTRAINTS
#   AS/AT crystal (interaction)

#====================================================================================================

# Call generic function
function exigence:game/other/wards/crystal/damage/damage

# Remove 1 from game.story.wards score
scoreboard players remove ward.amethyst game.story.wards 1

# If remaining score is no 0, break
execute if score ward.amethyst game.story.wards matches ..0 run function exigence:game/other/wards/crystal/break

# Particles
particle block{block_state:purple_stained_glass_pane} ~ ~0.5 ~ 0.3 0.3 0.3 0.01 30