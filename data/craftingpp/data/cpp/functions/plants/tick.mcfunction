# 破坏
execute unless block ~ ~ ~ acacia_sapling run function cpp:blocks/acacia_sapling_break
# 树生长
execute as @s[tag=!cpp_acacia_sapling] if block ~ ~ ~ acacia_sapling[stage=1] run function cpp:plants/type
