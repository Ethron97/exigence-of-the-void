# Called by game_tick if all echos have not been picked up yet

#say Detecting all echos

# Count how many disc fragments each player has
execute as @a[tag=ActivePlayer] store result score @s EchoFragments run clear @s #exigence:echo 0

# Call if number in inv matches requirement
execute as @a[tag=ActivePlayer] if score @s EchoFragments = EchosRequired DungeonRun run function exigence:game/found_all_echos
