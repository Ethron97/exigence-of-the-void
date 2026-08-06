# Assign details based on profile scores

## CONSTRAINTS
#   AS profile node
#   AT location

#====================================================================================================

## SWITCH
#   Get most recent complete advancement
execute if score @s profile.story.adv.light_beacons matches 1 as @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] run return run function exigence:hub/predungeon/menu/display/story_sidebar/advancement/details/light_beacons
execute if score @s profile.story.adv.destroy_crystals matches 1 as @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] run return run function exigence:hub/predungeon/menu/display/story_sidebar/advancement/details/destroy_crystals
execute if score @s profile.story.adv.win_difficulty_4 matches 1 as @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] run return run function exigence:hub/predungeon/menu/display/story_sidebar/advancement/details/win_difficulty_4
execute if score @s profile.story.adv.rescue_petitioner matches 1 as @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] run return run function exigence:hub/predungeon/menu/display/story_sidebar/advancement/details/rescue_petitioner
execute if score @s profile.story.adv.light_altars matches 1 as @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] run return run function exigence:hub/predungeon/menu/display/story_sidebar/advancement/details/light_altars
execute if score @s profile.story.adv.talk_to_petitioner matches 1 as @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] run return run function exigence:hub/predungeon/menu/display/story_sidebar/advancement/details/talk_to_petitioner
execute if score @s profile.story.adv.win_difficulty_3 matches 1 as @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] run return run function exigence:hub/predungeon/menu/display/story_sidebar/advancement/details/win_difficulty_3
execute if score @s profile.story.adv.rescue_scientist matches 1 as @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] run return run function exigence:hub/predungeon/menu/display/story_sidebar/advancement/details/rescue_scientist
execute if score @s profile.story.adv.match_bookshelf matches 1 as @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] run return run function exigence:hub/predungeon/menu/display/story_sidebar/advancement/details/match_bookshelf
execute if score @s profile.story.adv.win_difficulty_2 matches 1 as @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] run return run function exigence:hub/predungeon/menu/display/story_sidebar/advancement/details/win_difficulty_2
execute if score @s profile.story.adv.rescue_supplier matches 1 as @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] run return run function exigence:hub/predungeon/menu/display/story_sidebar/advancement/details/rescue_supplier
execute if score @s profile.story.adv.win_difficulty_1 matches 1 as @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] run return run function exigence:hub/predungeon/menu/display/story_sidebar/advancement/details/win_difficulty_1

# Default to tutorial as completed?
execute as @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] run return run function exigence:hub/predungeon/menu/display/story_sidebar/advancement/details/win_difficulty_0

# Remove local tag if got past all the things
#tag @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] remove NewItemDisplay