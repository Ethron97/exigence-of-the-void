# Replaces play.mcfunction
say [Start game with 64 coins 🔘]

execute as @a[tag=ActivePlayer] run function exigence:cards/dev_gib_coins/private/give_coins
