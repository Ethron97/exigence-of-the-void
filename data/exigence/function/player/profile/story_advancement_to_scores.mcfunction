# Saves to profile.story. based on what story milestone this profile is on

## CONSTRAINTS
#   AS player

## OUTPUT
#   #compare score on profile.story.<story_part>, 1 if has advancement, 0 if not

#=============================================================================================================

# 0 = before prologue done
# 1 = Root (obtained when Prologue is exited)
# 2 = Tutorial
# 3 = Ruins of Solstice (D1)
# 4 = Rescue Supplier
# 5 = 

execute store success score #compare profile.story.root if entity @s[advancements={exigence:story/root=true}]
execute store success score #compare profile.story.win_difficulty_0 if entity @s[advancements={exigence:story/win_difficulty_0=true}]
execute store success score #compare profile.story.win_difficulty_1 if entity @s[advancements={exigence:story/win_difficulty_1=true}]
execute store success score #compare profile.story.win_difficulty_2 if entity @s[advancements={exigence:story/win_difficulty_2=true}]
execute store success score #compare profile.story.win_difficulty_3 if entity @s[advancements={exigence:story/win_difficulty_3=true}]
execute store success score #compare profile.story.win_difficulty_4 if entity @s[advancements={exigence:story/win_difficulty_4=true}]
#execute store success score #compare profile.story.win_difficulty_5 if entity @s[advancements={exigence:story/win_difficulty_5=true}]
#execute store success score #compare profile.story.win_difficulty_6 if entity @s[advancements={exigence:story/win_difficulty_6=true}]
execute store success score #compare profile.story.destroy_crystals if entity @s[advancements={exigence:story/destroy_crystals=true}]
execute store success score #compare profile.story.light_altars if entity @s[advancements={exigence:story/light_altars=true}]
execute store success score #compare profile.story.light_beacons if entity @s[advancements={exigence:story/light_beacons=true}]
execute store success score #compare profile.story.match_bookshelf if entity @s[advancements={exigence:story/match_bookshelf=true}]
execute store success score #compare profile.story.rescue_petitioner if entity @s[advancements={exigence:story/rescue_petitioner=true}]
execute store success score #compare profile.story.rescue_scientist if entity @s[advancements={exigence:story/rescue_scientist=true}]
execute store success score #compare profile.story.rescue_supplier if entity @s[advancements={exigence:story/rescue_supplier=true}]
execute store success score #compare profile.story.talk_to_petitioner if entity @s[advancements={exigence:story/talk_to_petitioner=true}]
