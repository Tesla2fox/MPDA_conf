#!/bin/sh




# for localSearch in  _TRI _None _TRISWAP
# for localSearch in  _None _SWAP _MSWAP
for localSearch in _MSWAP
# _MNSWAP
do
echo localSearch = ${localSearch}
# for ins in 20_20_CLUSTERED_RANDOM_QUADRANT_LVSCV_thre0.1MPDAins 20_18_RANDOM_ECCENTRIC_QUADRANT_SVLCV_thre0.1MPDAins 17_23_RANDOMCLUSTERED_CLUSTERED_LVLCV_LVSCV_thre0.1MPDAins 11_11_RANDOMCLUSTERED_CLUSTERED_MSVFLV_QUADRANT_thre0.1MPDAins
# 
for ins in  8_8_ECCENTRIC_RANDOM_UNITARY_QUADRANT_thre0.1MPDAins
#8_8_CLUSTERED_CLUSTERED_SVLCV_UNITARY_thre0.1MPDAins
# 5_5_ECCENTRIC_RANDOM_SVSCV_LVSCV_thre0.1MPDAins  5_4_RANDOMCLUSTERED_RANDOMCLUSTERED_SVLCV_SVSCV_thre0.1MPDAins 8_8_ECCENTRIC_RANDOM_UNITARY_QUADRANT_thre0.1MPDAins
# 20_20_CLUSTERED_RANDOM_QUADRANT_LVSCV_thre0.1MPDAins 20_18_RANDOM_ECCENTRIC_QUADRANT_SVLCV_thre0.1MPDAins 17_23_RANDOMCLUSTERED_CLUSTERED_LVLCV_LVSCV_thre0.1MPDAins 11_11_RANDOMCLUSTERED_CLUSTERED_MSVFLV_QUADRANT_thre0.1MPDAins
# 14_16_RANDOM_RANDOM_SVLCV_SVLCV_thre0.1MPDAins 14_16_CENTRAL_RANDOM_LVSCV_LVLCV_thre0.1MPDAins 14_14_ECCENTRIC_RANDOMCLUSTERED_SVLCV_LVLCV_thre0.1MPDAins
# 17_23_RANDOMCLUSTERED_CLUSTERED_LVLCV_LVSCV_thre0.1MPDAins
# 8_8_ECCENTRIC_RANDOM_UNITARY_QUADRANT_thre0.1MPDAins 
# 17_23_RANDOMCLUSTERED_CLUSTERED_LVLCV_LVSCV_thre0.1MPDAins 11_11_RANDOMCLUSTERED_CLUSTERED_MSVFLV_QUADRANT_thre0.1MPDAins
# for ins in 20_20_CLUSTERED_RANDOM_QUADRANT_LVSCV_thre0.1MPDAins 20_18_RANDOM_ECCENTRIC_QUADRANT_SVLCV_thre0.1MPDAins 8_8_ECCENTRIC_RANDOM_UNITARY_QUADRANT_thre0.1MPDAins 17_23_RANDOMCLUSTERED_CLUSTERED_LVLCV_LVSCV_thre0.1MPDAins 11_11_RANDOMCLUSTERED_CLUSTERED_MSVFLV_QUADRANT_thre0.1MPDAins
# for ins in 32_32_ECCENTRIC_RANDOM_QUADRANT_QUADRANT_thre0.1MPDAins 29_36_ECCENTRIC_CLUSTERED_SVSCV_LVSCV_thre0.1MPDAins 26_29_CLUSTERED_RANDOM_SVSCV_SVSCV_thre0.1MPDAins 
# for ins in  17_23_RANDOMCLUSTERED_CLUSTERED_LVLCV_LVSCV_thre0.1MPDAins 11_11_RANDOMCLUSTERED_CLUSTERED_MSVFLV_QUADRANT_thre0.1MPDAins
do
echo ${ins}
# qsub mpda_scripts.sh ${ins} ${localSearch}
(./mpda_local.sh ${ins} ${localSearch} &)
done
done


