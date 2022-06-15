#!/bin/bash
source tools/ci.sh && ci_update_submodules
source tools/ci.sh && ci_install_arm_gcc
# rm -rf src/build
# rm -rf firmware/NICLAV
# mkdir src/build
source tools/ci.sh && ci_build_target NICLAV

# Person detector
# Network size:
# 300.6kB (300,568 bytes)
# Firmware size:
# 1.7MB (1,735,424 bytes)
# Difference:
# 1,735,424-300,568 = 1434856


# Dense cifar10 - simle quant
# Network size:
# 68.6kB (68,592 bytes)
# Firmware size:
# 1.5MB (1,503,528 bytes)
# 1,503,528-68,592 = 1434856


# Overflow by 168,628 bytes
# If the SRAM of 2MB is the limit ~	2,097,152 bytes
# 2,097,152-1,434,856=662,296
# So the model size should be
# 662,296+168,628=830,924



# Max allowed model size:
# Attempting to upload model of size 568,752 bytes
# Which overflows by 168,680 bytes
# Max size must then be:
# 568,752-168,680=400,072 bytes
