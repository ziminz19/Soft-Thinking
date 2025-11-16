#!/bin/bash
# Build Apptainer container from definition file

set -e

echo "Building Apptainer container from soft-thinking.def..."
echo "This may take a while..."

apptainer build ../apptainer_sif/soft-thinking-st-cu124-py311.sif soft-thinking.def

if [ $? -eq 0 ]; then
    echo "Successfully built soft-thinking-st-cu124-py311.sif"
    echo "You can now run it using: ./apptainer.sh"
else
    echo "Build failed!"
    exit 1
fi

