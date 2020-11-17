function cpp:locate/init
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block] at @s unless block ~ ~ ~ #cpp:fluid run tag @s add cpp_locate_block_position
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block_position,sort=nearest,limit=1] at @s if block ~ ~ ~ #cpp:orange_force_destroyable run function cpp:cst/element/orange1
kill @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block]
