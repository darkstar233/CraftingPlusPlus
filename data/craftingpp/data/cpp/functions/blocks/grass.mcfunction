advancement revoke @s only cpp:blocks/grass
function cpp:locate/init
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block] at @s if block ~ ~ ~ grass run tag @s add cpp_locate_block_position
execute unless entity @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block_position] run function cpp:locate/neighbor
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block_neighbor] at @s if block ~ ~ ~ grass run tag @s add cpp_locate_block_position
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block_position,sort=nearest,limit=1] at @s if block ~ ~-1 ~ dirt run function cpp:blocks/grass_put
kill @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block]

