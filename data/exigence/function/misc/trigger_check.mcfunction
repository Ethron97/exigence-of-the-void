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
scoreboard players enable Ethron97 TpGame
scoreboard players enable Ethypus TpGame
scoreboard players enable Ethron97 TpHub
scoreboard players enable Ethypus TpHub

execute as @a[scores={1=1..}] run function exigence:misc/triggers/1
execute as @a[scores={2=1..}] run function exigence:misc/triggers/2
execute as @a[scores={3=1..}] run function exigence:misc/triggers/3
execute as @a[scores={4=1..}] run function exigence:misc/triggers/4
execute as @a[scores={Admin=1..}] run function exigence:misc/triggers/admin
execute as @a[scores={DebugMenu=1..}] run function exigence:misc/triggers/debug_menu
execute as @a[scores={TpTutorial=1..}] run function exigence:misc/triggers/tp_tutorial
execute as @a[scores={TpGame=1..}] run function exigence:misc/triggers/tp_game
#execute as @a[scores={TpHub=1..}] run function exigence:misc/triggers/hub
