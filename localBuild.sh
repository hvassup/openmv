#!/bin/bash
source tools/ci.sh && ci_update_submodules
# source tools/ci.sh && ci_install_arm_gcc
source tools/ci.sh && ci_build_target NICLAV

# 1.7MB (1,735,424 bytes)