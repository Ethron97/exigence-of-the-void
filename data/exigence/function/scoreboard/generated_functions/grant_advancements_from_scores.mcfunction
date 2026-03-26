## CONSTRAINTS
#    AS player
#    AT profile node
execute if score @n[distance=..0.1,tag=ProfileNode] career.prologue matches 1 run advancement grant @s only exigence:story/root
execute if score @n[distance=..0.1,tag=ProfileNode] career.tutorial matches 1 run advancement grant @s only exigence:story/win_difficulty_0
execute if score @n[distance=..0.1,tag=ProfileNode] profile.shop_purchased.one_time_bag_a matches 1 run advancement grant @s only exigence:unlockables/one_time/one_time_bag_a
execute if score @n[distance=..0.1,tag=ProfileNode] profile.shop_purchased.one_time_food_a matches 1 run advancement grant @s only exigence:unlockables/one_time/one_time_food_a
execute if score @n[distance=..0.1,tag=ProfileNode] profile.shop_purchased.one_time_potion_a matches 1 run advancement grant @s only exigence:unlockables/one_time/one_time_potion_a
execute if score @n[distance=..0.1,tag=ProfileNode] profile.story.adv.destroy_crystals matches 1 run advancement grant @s only exigence:story/destroy_crystals
execute if score @n[distance=..0.1,tag=ProfileNode] profile.story.adv.light_altars matches 1 run advancement grant @s only exigence:story/light_altars
execute if score @n[distance=..0.1,tag=ProfileNode] profile.story.adv.light_beacons matches 1 run advancement grant @s only exigence:story/light_beacons
execute if score @n[distance=..0.1,tag=ProfileNode] profile.story.adv.match_bookshelf matches 1 run advancement grant @s only exigence:story/match_bookshelf
execute if score @n[distance=..0.1,tag=ProfileNode] profile.story.adv.rescue_petitioner matches 1 run advancement grant @s only exigence:story/rescue_petitioner
execute if score @n[distance=..0.1,tag=ProfileNode] profile.story.adv.rescue_scientist matches 1 run advancement grant @s only exigence:story/rescue_scientist
execute if score @n[distance=..0.1,tag=ProfileNode] profile.story.adv.rescue_supplier matches 1 run advancement grant @s only exigence:story/rescue_supplier
execute if score @n[distance=..0.1,tag=ProfileNode] profile.story.adv.talk_to_petitioner matches 1 run advancement grant @s only exigence:story/talk_to_petitioner
execute if score @n[distance=..0.1,tag=ProfileNode] profile.story.adv.win_difficulty_1 matches 1 run advancement grant @s only exigence:story/win_difficulty_1
execute if score @n[distance=..0.1,tag=ProfileNode] profile.story.adv.win_difficulty_2 matches 1 run advancement grant @s only exigence:story/win_difficulty_2
execute if score @n[distance=..0.1,tag=ProfileNode] profile.story.adv.win_difficulty_3 matches 1 run advancement grant @s only exigence:story/win_difficulty_3
execute if score @n[distance=..0.1,tag=ProfileNode] profile.story.adv.win_difficulty_4 matches 1 run advancement grant @s only exigence:story/win_difficulty_4
execute if score @n[distance=..0.1,tag=ProfileNode] profile.story.adv.win_difficulty_6 matches 1 run advancement grant @s only exigence:story/win_difficulty_6
