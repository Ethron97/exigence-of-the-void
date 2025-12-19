## CONSTRAINTS
#   AS player

#=============================================================================================================

# TODO
#   trigger to show you

# Tutorial
execute if score @s SkipSection matches -2147483647..2147483647 unless score @s SkipSection matches 0 run function exigence:misc/triggers/tutorial/skip_section
execute if score @s ExitTutorial matches -2147483647..2147483647 unless score @s ExitTutorial matches 0 run function exigence:misc/triggers/tutorial/exit_tutorial

# Menu
execute if score @s ProfileSelectorConfirmDelete matches -2147483647..2147483647 unless score @s ProfileSelectorConfirmDelete matches 0 run function exigence:misc/triggers/hub/confirm_profile_delete
execute if score @s ProfileSelectorCancelDelete matches -2147483647..2147483647 unless score @s ProfileSelectorCancelDelete matches 0 run function exigence:misc/triggers/hub/cancel_profile_delete
execute if score @s AcceptCoopInvite matches -2147483647..2147483647 unless score @s AcceptCoopInvite matches 0 run function exigence:misc/triggers/hub/invite_coop_accept
execute if score @s DeclineCoopInvite matches -2147483647..2147483647 unless score @s DeclineCoopInvite matches 0 run function exigence:misc/triggers/hub/invite_coop_decline

# Admin
execute as @s[tag=Admin] run function exigence:misc/trigger_check_admin

## DEPRECATED
#execute if score @s MyPlayerID matches 1.. run function exigence:misc/triggers/my_player_id