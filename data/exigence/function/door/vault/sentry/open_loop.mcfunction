execute if score Sentry VaultOpenState matches 0 run setblock -417 72 -206 ladder[facing=east]
execute if score Sentry VaultOpenState matches 1 run setblock -417 71 -206 ladder[facing=east]
execute if score Sentry VaultOpenState matches 2 run setblock -417 70 -206 ladder[facing=east]
execute if score Sentry VaultOpenState matches 3 run setblock -417 69 -206 ladder[facing=east]
execute if score Sentry VaultOpenState matches 4 run setblock -417 68 -206 ladder[facing=east]
execute if score Sentry VaultOpenState matches 5 run setblock -417 67 -206 ladder[facing=east]
execute if score Sentry VaultOpenState matches 6 run setblock -417 66 -206 ladder[facing=east]
execute if score Sentry VaultOpenState matches 7 run setblock -417 65 -206 ladder[facing=east]
execute if score Sentry VaultOpenState matches 8 run setblock -417 64 -206 ladder[facing=east]
execute if score Sentry VaultOpenState matches 9 run setblock -417 63 -206 ladder[facing=east]
execute if score Sentry VaultOpenState matches 10 run setblock -417 62 -206 ladder[facing=east]
execute if score Sentry VaultOpenState matches 11 run setblock -417 61 -206 ladder[facing=east]
execute if score Sentry VaultOpenState matches 12 run setblock -417 60 -206 ladder[facing=east]
execute if score Sentry VaultOpenState matches 13 run setblock -417 59 -206 ladder[facing=east]
execute if score Sentry VaultOpenState matches 14 run setblock -417 58 -206 ladder[facing=east]

execute if score Sentry VaultOpenState matches 0 run playsound minecraft:block.ladder.place block @a -417 72 -206 2 0.6
execute if score Sentry VaultOpenState matches 1 run playsound minecraft:block.ladder.place block @a -417 71 -206 2 0.65
execute if score Sentry VaultOpenState matches 2 run playsound minecraft:block.ladder.place block @a -417 70 -206 2 0.7
execute if score Sentry VaultOpenState matches 3 run playsound minecraft:block.ladder.place block @a -417 69 -206 2 0.75
execute if score Sentry VaultOpenState matches 4 run playsound minecraft:block.ladder.place block @a -417 68 -206 2 0.8
execute if score Sentry VaultOpenState matches 5 run playsound minecraft:block.ladder.place block @a -417 67 -206 2 0.85
execute if score Sentry VaultOpenState matches 6 run playsound minecraft:block.ladder.place block @a -417 66 -206 2 0.9
execute if score Sentry VaultOpenState matches 7 run playsound minecraft:block.ladder.place block @a -417 65 -206 2 0.95
execute if score Sentry VaultOpenState matches 8 run playsound minecraft:block.ladder.place block @a -417 64 -206 2 1
execute if score Sentry VaultOpenState matches 9 run playsound minecraft:block.ladder.place block @a -417 63 -206 2 1.05
execute if score Sentry VaultOpenState matches 10 run playsound minecraft:block.ladder.place block @a -417 62 -206 2 1.1
execute if score Sentry VaultOpenState matches 11 run playsound minecraft:block.ladder.place block @a -417 61 -206 2 1.15
execute if score Sentry VaultOpenState matches 12 run playsound minecraft:block.ladder.place block @a -417 60 -206 2 1.2
execute if score Sentry VaultOpenState matches 13 run playsound minecraft:block.ladder.place block @a -417 59 -206 2 1.25
execute if score Sentry VaultOpenState matches 14 run playsound minecraft:block.ladder.place block @a -417 58 -206 2 1.3

scoreboard players add Sentry VaultOpenState 1

# Iterate
execute if score Sentry VaultOpenState matches ..14 run schedule function exigence:door/vault/sentry/open_loop 2t