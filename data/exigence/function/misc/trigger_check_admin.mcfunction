## CONSTRAINTS
#   AS player

#=============================================================================================================

# Admin/debug
execute if score @s 1 matches -2147483647..2147483647 unless score @s 1 matches 0 run function exigence:misc/triggers/admin/1
execute if score @s 2 matches -2147483647..2147483647 unless score @s 2 matches 0 run function exigence:misc/triggers/admin/2
execute if score @s 3 matches -2147483647..2147483647 unless score @s 3 matches 0 run function exigence:misc/triggers/admin/3
execute if score @s 4 matches -2147483647..2147483647 unless score @s 4 matches 0 run function exigence:misc/triggers/admin/4
execute if score @s Admin matches -2147483647..2147483647 unless score @s Admin matches 0 run function exigence:misc/triggers/admin/admin
execute if score @s DebugMenu matches -2147483647..2147483647 unless score @s DebugMenu matches 0 run function exigence:misc/triggers/admin/debug_menu

execute if score @s TpTutorial matches -2147483647..2147483647 unless score @s TpTutorial matches 0 run function exigence:misc/triggers/tp/tp_tutorial
execute if score @s TpGame matches -2147483647..2147483647 unless score @s TpGame matches 0 run function exigence:misc/triggers/tp/tp_game
execute if score @s TpHub matches -2147483647..2147483647 unless score @s TpHub matches 0 run function exigence:misc/triggers/tp/tp_hub
execute if score @s TpOldHub matches -2147483647..2147483647 unless score @s TpOldHub matches 0 run function exigence:misc/triggers/tp/tp_old_hub
execute if score @s TpProfileData matches -2147483647..2147483647 unless score @s TpProfileData matches 0 run function exigence:misc/triggers/tp/tp_profile_data
