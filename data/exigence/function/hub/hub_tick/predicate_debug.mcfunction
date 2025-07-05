# VAULT DEBUG
## LEVEL 1
execute as @a[predicate=exigence:vault/1/host] if data storage exigence:debug {vault:1} run title @s actionbar {text:"Vault: Host"}
execute as @a[predicate=exigence:vault/1/raiser] if data storage exigence:debug {vault:1} run title @s actionbar {text:"Vault: Raiser"}
execute as @a[predicate=exigence:vault/1/rib] if data storage exigence:debug {vault:1} run title @s actionbar {text:"Vault: Rib"}
execute as @a[predicate=exigence:vault/1/shaper] if data storage exigence:debug {vault:1} run title @s actionbar {text:"Vault: Shaper"}
execute as @a[predicate=exigence:vault/1/tide] if data storage exigence:debug {vault:1} run title @s actionbar {text:"Vault: Tide"}
execute as @a[predicate=exigence:vault/1/wayfinder] if data storage exigence:debug {vault:1} run title @s actionbar {text:"Vault: Wayfinder"}
## LEVEL 2
execute as @a[predicate=exigence:vault/2/sentry] if data storage exigence:debug {vault:1} run title @s actionbar {text:"Vault: Sentry"}
execute as @a[predicate=exigence:vault/2/snout] if data storage exigence:debug {vault:1} run title @s actionbar {text:"Vault: Snout"}
execute as @a[predicate=exigence:vault/2/wild] if data storage exigence:debug {vault:1} run title @s actionbar {text:"Vault: Wild"}
execute as @a[predicate=exigence:vault/2/vex] if data storage exigence:debug {vault:1} run title @s actionbar {text:"Vault: Vex"}
execute as @a[predicate=exigence:vault/2/coast] if data storage exigence:debug {vault:1} run title @s actionbar {text:"Vault: Coast"}
execute as @a[predicate=exigence:vault/2/ward] if data storage exigence:debug {vault:1} run title @s actionbar {text:"Vault: Ward"}

# MIRROR DEBUG
execute as @a[predicate=exigence:mirror/stairs] if data storage exigence:debug {mirror:1} run title @s actionbar {text:"Mirror: Stairs"}
# Tunnel mirror parkours:
execute as @a[predicate=exigence:mirror/3wide] if data storage exigence:debug {mirror:1} run title @s actionbar {text:"Mirror: Three Wide"}
execute as @a[predicate=exigence:mirror/4wide] if data storage exigence:debug {mirror:1} run title @s actionbar {text:"Mirror: Four Wide"}
execute as @a[predicate=exigence:mirror/3way] if data storage exigence:debug {mirror:1} run title @s actionbar {text:"Mirror: Intersection"}
execute as @a[predicate=exigence:mirror/45d] if data storage exigence:debug {mirror:1} run title @s actionbar {text:"Mirror: 45 Degress"}

execute as @a[predicate=exigence:mirror/lower_left] if data storage exigence:debug {mirror:1} run title @s actionbar {text:"Mirror: Lower Left"}
execute as @a[predicate=exigence:mirror/upper_left] if data storage exigence:debug {mirror:1} run title @s actionbar {text:"Mirror: Upper Left"}
execute as @a[predicate=exigence:mirror/upper_right] if data storage exigence:debug {mirror:1} run title @s actionbar {text:"Mirror: Upper Right"}
execute as @a[predicate=exigence:mirror/bookshelf] if data storage exigence:debug {mirror:1} run title @s actionbar {text:"Mirror: Bookshelf"}


# DOOR DEBUG
execute as @a[predicate=exigence:door/level1] if data storage exigence:debug {door:1} run title @s actionbar {text:"Door: Level 1"}

# LEVEL DEBUG
execute as @a[predicate=exigence:level/1] run title @s actionbar {text:"Level 1"}
execute as @a[predicate=exigence:level/2] run title @s actionbar {text:"Level 2"}
execute as @a[predicate=exigence:level/3] run title @s actionbar {text:"Level 3"}
execute as @a[predicate=exigence:level/4] run title @s actionbar {text:"Level 4"}
