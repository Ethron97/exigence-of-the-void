# Re-enable
scoreboard players enable Ethron97 1
scoreboard players enable Ethron97 2
scoreboard players enable Ethron97 3
scoreboard players enable Ethron97 4
scoreboard players enable Ethron97 Admin
scoreboard players enable Ethron97 DebugMenu
scoreboard players enable Ethypus DebugMenu

execute as @a if score @s 1 matches 1.. run function exigence:misc/triggers/admin/1
execute as @a if score @s 2 matches 1.. run function exigence:misc/triggers/admin/2
execute as @a if score @s 3 matches 1.. run function exigence:misc/triggers/admin/3
execute as @a if score @s 4 matches 1.. run function exigence:misc/triggers/admin/4
execute as @a if score @s Admin matches 1.. run function exigence:misc/triggers/admin/admin
execute as @a if score @s DebugMenu matches 1.. run function exigence:misc/triggers/admin/debug_menu

execute as @a if score @s TpTutorial matches 1.. run function exigence:misc/triggers/tp_tutorial
execute as @a if score @s TpGame matches 1.. run function exigence:misc/triggers/tp_game
execute as @a if score @s TpHub matches 1.. run function exigence:misc/triggers/tp_hub
execute as @a if score @s TpOldHub matches 1.. run function exigence:misc/triggers/tp_old_hub
execute as @a if score @s TpProfileData matches 1.. run function exigence:misc/triggers/tp_profile_data

execute as @a if score @s SkipSection matches 1.. run function exigence:misc/triggers/tutorial/skip_section
execute as @a if score @s ExitTutorial matches 1.. run function exigence:misc/triggers/tutorial/exit_tutorial

execute as @a if score @s MyPlayerID matches 1.. run function exigence:misc/triggers/my_player_id

execute as @a if score @s ProfileSelectorConfirmDelete matches 1.. run function exigence:misc/triggers/hub/confirm_profile_delete
execute as @a if score @s ProfileSelectorCancelDelete matches 1.. run function exigence:misc/triggers/hub/cancel_profile_delete
execute as @a if score @s SendCoopInvite matches 1.. run function exigence:misc/triggers/hub/invite_coop_send
execute as @a if score @s AcceptCoopInvite matches 1.. run function exigence:misc/triggers/hub/invite_coop_accept
