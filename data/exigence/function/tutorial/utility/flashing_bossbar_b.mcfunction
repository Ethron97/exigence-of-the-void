# Causes bossbar to flash between 2 colors
#   Part 2, to be called from a scheduled function

#====================================================================================================

execute if score toggle.tutorial debug matches 1 if score debug.level debug matches 4.. run say (D4) Flash bossbar part b

# Re-call part A
function exigence:tutorial/utility/flashing_bossbar_a with storage exigence:tutorial flashing_bossbar
