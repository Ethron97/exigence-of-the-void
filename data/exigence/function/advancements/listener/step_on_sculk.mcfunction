#say Step on sculk

# If tutorial
execute as @s[tag=Tutorial] run schedule function exigence:tutorial/cooldown_sculkstep 20t
execute at @s[tag=Tutorial] run playsound minecraft:block.sculk_sensor.clicking hostile @a ~ ~-1 ~ 1 1

# If trial
execute as @s[scores={VaultCode=3}] run function exigence:door/vault/silence/trial/loss

# Return if the game is not active
execute if data storage exigence:dungeon {is_active:0} run advancement revoke @s only exigence:listener/step_on_sculk
execute if data storage exigence:dungeon {is_active:0} run return 1

# Queue revoke so they can get it again
scoreboard players set @s SculkStepCooldown 20

# Return if player has Ghost Cloak
execute if score @s mod_PhantomScales matches 6 if entity @s[predicate=exigence:effects/invis] run return 1

# Update scoreboards
scoreboard players add @s t_sculkSteps 1
scoreboard players add @s cr_sculkSteps 1

# Run sculk step modifier handler
execute as @s run function exigence:player/modifiers/sculk_step
