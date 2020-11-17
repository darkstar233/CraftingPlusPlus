# 烧炼
execute as @s[tag=cpp_furnace] run function cpp:furnace/tick
execute as @s[tag=cpp_smoker] run function cpp:smoker/tick
execute as @s[tag=cpp_blast_furnace] run function cpp:blast_furnace/tick
# 机器
execute as @s[tag=cpp_machine] run function cpp:blocks/machine
# 日石月石-破坏
execute as @s[tag=cpp_gold_block] unless block ~ ~ ~ gold_block run function cpp:blocks/gold_block_break
# 树叶-破坏
execute as @s[tag=cpp_leaves] unless block ~ ~ ~ acacia_leaves run function cpp:blocks/acacia_leaves_break
# 花草树苗
execute as @s[tag=cpp_acacia_sapling] unless block ~ ~ ~ acacia_sapling run kill @s
execute as @s[tag=cpp_plants] run function cpp:plants/tick
# 染色告示牌
execute as @s[tag=cpp_sign] unless block ~ ~ ~ #signs run kill @s
# 纸片人-破坏
execute as @s[tag=cpp_character] unless block ~ ~ ~ #beds run function cpp:decor/character_break
# 便携式工作台-破坏
execute as @s[tag=cpp_portable_crafting_table] run function cpp:tool/portable_crafting_table_break
# 傀儡
execute as @s[tag=cpp_golem_farmer] run function cpp:golem/farmer
execute as @s[tag=cpp_golem_miner] run function cpp:golem/miner
execute as @s[tag=cpp_golem_fisher] run function cpp:golem/fisher
execute as @s[tag=cpp_golem_warrior] run function cpp:golem/warrior
execute as @s[tag=cpp_golem_herder] run function cpp:golem/herder
execute if score $skyislandMode cppConfig matches 1 run function cpp:armor_stand/tick_bsd