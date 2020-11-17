function cpp:locate/init
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block] at @s if block ~ ~ ~ acacia_leaves align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=cpp_leaves,distance=..0.1] run tag @s add cpp_locate_block_position
execute unless entity @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block_position] run function cpp:locate/neighbor
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block_neighbor] at @s if block ~ ~ ~ acacia_leaves align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=cpp_leaves,distance=..0.1] run tag @s add cpp_locate_block_position
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block_position,sort=nearest,limit=1] at @s align xyz positioned ~0.5 ~ ~0.5 run function cpp:blocks/acacia_leaves_put
kill @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block]
