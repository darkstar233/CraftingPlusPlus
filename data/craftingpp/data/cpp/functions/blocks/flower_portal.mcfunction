advancement revoke @s only cpp:blocks/flower_portal
execute as @s[predicate=cpp:in_overworld_or_flower] at @s run function cpp:locate/init
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block] at @s if block ~ ~ ~ white_wool run tag @s add cpp_locate_block_position
execute unless entity @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block_position] run function cpp:locate/neighbor
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block_neighbor] at @s if block ~ ~ ~ white_wool run tag @s add cpp_locate_block_position
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block_position,sort=nearest,limit=1] at @s if predicate cpp:flower_portal align xyz run function cpp:blocks/flower_portal_put
kill @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block]
