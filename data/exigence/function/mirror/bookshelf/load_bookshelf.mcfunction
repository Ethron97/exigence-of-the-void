say Load bookshelf

# Clone the bookshelf from storage
execute as @e[tag=ProfileNode] at @s if score @s profile.node.profile_id = @p[tag=PrimaryPlayer] profile.profile_id run clone ~6 ~ ~ ~14 ~2 ~ -481 62 -200