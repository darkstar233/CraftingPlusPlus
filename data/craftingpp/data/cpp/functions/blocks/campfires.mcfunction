advancement revoke @s only cpp:blocks/campfires
function cpp:locate/init
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block] at @s if block ~ ~ ~ #campfires run tag @s add cpp_locate_block_position
execute unless entity @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block_position] run function cpp:locate/neighbor
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block_neighbor] at @s if block ~ ~ ~ #campfires run tag @s add cpp_locate_block_position
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block_position,sort=nearest,limit=1] at @s align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Age:0,Duration:2147483647,Tags:["cpp_aec_marker","cpp_campfires"]}
kill @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block]
