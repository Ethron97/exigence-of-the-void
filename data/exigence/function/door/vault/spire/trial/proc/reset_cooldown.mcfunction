# Reset proc cooldown, and modify based on trial timer

#=============================================================================================================

# Set internval based on trial time
#   Interval must be divisible by 4
#   OLD VALUES (from before we moved the starting platform up to the top)
#execute if entity @a[scores={game.player.vault_code=5},tag=Trial] if score Spire TrialTimer matches ..180 run scoreboard players set Interval SpireTimer 60
#execute if entity @a[scores={game.player.vault_code=5},tag=Trial] if score Spire TrialTimer matches 181..360 run scoreboard players set Interval SpireTimer 44
#execute if entity @a[scores={game.player.vault_code=5},tag=Trial] if score Spire TrialTimer matches 361..440 run scoreboard players set Interval SpireTimer 32
#execute if entity @a[scores={game.player.vault_code=5},tag=Trial] if score Spire TrialTimer matches 441.. run scoreboard players set Interval SpireTimer 24

#execute if entity @a[scores={game.player.vault_code=5},tag=Crucible] if score Spire TrialTimer matches ..180 run scoreboard players set Interval SpireTimer 52
#execute if entity @a[scores={game.player.vault_code=5},tag=Crucible] if score Spire TrialTimer matches 181..360 run scoreboard players set Interval SpireTimer 40
#execute if entity @a[scores={game.player.vault_code=5},tag=Crucible] if score Spire TrialTimer matches 361..440 run scoreboard players set Interval SpireTimer 24
#execute if entity @a[scores={game.player.vault_code=5},tag=Crucible] if score Spire TrialTimer matches 441.. run scoreboard players set Interval SpireTimer 20

execute if entity @a[scores={game.player.vault_code=5},tag=Trial] if score Spire TrialTimer matches ..180 run scoreboard players set Interval SpireTimer 52
execute if entity @a[scores={game.player.vault_code=5},tag=Trial] if score Spire TrialTimer matches 181..360 run scoreboard players set Interval SpireTimer 40
execute if entity @a[scores={game.player.vault_code=5},tag=Trial] if score Spire TrialTimer matches 361..440 run scoreboard players set Interval SpireTimer 32
execute if entity @a[scores={game.player.vault_code=5},tag=Trial] if score Spire TrialTimer matches 441.. run scoreboard players set Interval SpireTimer 24

execute if entity @a[scores={game.player.vault_code=5},tag=Crucible] if score Spire TrialTimer matches ..180 run scoreboard players set Interval SpireTimer 36
execute if entity @a[scores={game.player.vault_code=5},tag=Crucible] if score Spire TrialTimer matches 181..360 run scoreboard players set Interval SpireTimer 28
execute if entity @a[scores={game.player.vault_code=5},tag=Crucible] if score Spire TrialTimer matches 401..600 run scoreboard players set Interval SpireTimer 20
execute if entity @a[scores={game.player.vault_code=5},tag=Crucible] if score Spire TrialTimer matches 601.. run scoreboard players set Interval SpireTimer 16

# Set cooldown equal to interval
scoreboard players operation Cooldown SpireTimer = Interval SpireTimer

# Set partition equal to interval/4
scoreboard players operation Partition SpireTimer = Interval SpireTimer
scoreboard players operation Partition SpireTimer /= 4 number
