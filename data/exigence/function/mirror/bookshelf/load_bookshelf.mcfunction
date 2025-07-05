say Load bookshelf

# Clone the bookshelf from storage
execute as @e[type=armor_stand,tag=PlayerNode] at @s if score @s PlayerID = @p[tag=PrimaryPlayer] PlayerID run clone ~7 ~ ~ ~15 ~4 ~ -481 61 -200