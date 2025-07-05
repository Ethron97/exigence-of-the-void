# Apply general stuff to instant calls
#    Call as card

# Add sidebar display
execute as @s run function exigence:cards/add_sidebar_display_instant

# Set card as called
tag @s add Played

# Add Instant tag
#   Mainly so we can filter Recycle and Spellbind
tag @s add Instant
