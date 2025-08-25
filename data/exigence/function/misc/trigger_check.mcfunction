# Re-enable
scoreboard players enable Ethron97 1
scoreboard players enable Ethron97 2
scoreboard players enable Ethron97 3
scoreboard players enable Ethron97 4
scoreboard players enable Ethron97 Admin
scoreboard players enable Ethron97 DebugMenu
scoreboard players enable Ethypus DebugMenu

scoreboard players enable Ethron97 TpTutorial
scoreboard players enable Ethypus TpTutorial
scoreboard players enable BigBlaster10 TpTutorial
scoreboard players enable Ethron97 TpGame
scoreboard players enable Ethypus TpGame
scoreboard players enable BigBlaster10 TpGame
scoreboard players enable Ethron97 TpHub
scoreboard players enable Ethypus TpHub
scoreboard players enable BigBlaster10 TpHub

execute as @a unless score @s 1 matches 0 run function exigence:misc/triggers/1
execute as @a unless score @s 2 matches 0 run function exigence:misc/triggers/2
execute as @a unless score @s 3 matches 0 run function exigence:misc/triggers/3
execute as @a unless score @s 4 matches 0 run function exigence:misc/triggers/4
execute as @a unless score @s Admin matches 0 run function exigence:misc/triggers/admin
execute as @a unless score @s DebugMenu matches 0 run function exigence:misc/triggers/debug_menu
execute as @a unless score @s TpTutorial matches 0 run function exigence:misc/triggers/tp_tutorial
execute as @a unless score @s TpGame matches 0 run function exigence:misc/triggers/tp_game
execute as @a unless score @s TpHub matches 0 run function exigence:misc/triggers/tp_hub

execute as @a unless score @s SkipSection matches 0 run function exigence:misc/triggers/skip_section
execute as @a unless score @s ExitTutorial matches 0 run function exigence:misc/triggers/exit_tutorial
