function cpp:locate/init
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block] at @s unless block ~ ~ ~ #cpp:fluid run tag @s add cpp_locate_block_position
execute at @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block_position,sort=nearest,limit=1] if block ~ ~ ~ chest if data block ~ ~ ~ Items[].tag.BlockEntityTag run title @s actionbar {"translate":"info.cpp.chest_transporter.no_nesting"}
execute at @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block_position,sort=nearest,limit=1] if block ~ ~ ~ chest unless data block ~ ~ ~ Items[].tag.BlockEntityTag align xyz run function cpp:tool/chest_transporter
kill @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block]
