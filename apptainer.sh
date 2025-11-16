#!/bin/bash
# Run Apptainer container

apptainer exec --nv \
    --bind "/work/nvme:/work/nvme" \
    /work/nvme/bfgx/zzhang32/Soft-Thinking/apptainer_sif/soft-thinking-st-cu124-py311.sif \
    /bin/bash -c "
        echo '========================================'
        echo 'Welcome to Soft-Thinking Container'
        echo '========================================'
        echo 'Current directory: '\$(pwd)
        echo 'uv version: '\$(uv --version 2>/dev/null || echo 'Not available')
        echo '========================================'
        export PS1='[CONTAINER] \u@\h:\w\$ '
        exec /bin/bash
    "