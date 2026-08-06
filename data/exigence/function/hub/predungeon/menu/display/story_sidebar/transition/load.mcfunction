# Load the relevant transition

## CONSTRAINTS
#   AS profile node
#   AT position

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Menu) Load transition

# Decide what transition to load based on what advacement we are on

# BOOKSHELF
#   If won difficulty 2, and bookshelf is not matched, load bookshelf display
execute if score @s profile.story.adv.win_difficulty_2 matches 1 unless score @s profile.story.adv.match_bookshelf matches 1 \
positioned ~ ~ ~ run function exigence:hub/predungeon/menu/display/story_sidebar/transition/load_bookshelf

# ALTARS


# CYRSTALS
#   If won difficulty 4, and crystals are not destroyed, load crystal display
execute if score @s profile.story.adv.win_difficulty_4 matches 1 unless score @s profile.story.adv.destroy_crystals matches 1 \
positioned ~ ~-0.1 ~ run function exigence:hub/predungeon/menu/display/story_sidebar/transition/load_crystals
