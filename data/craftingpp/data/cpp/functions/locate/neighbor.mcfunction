execute at @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block] run function cpp:locate/neighbor_aec
kill @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block,tag=!cpp_locate_block_neighbor]
