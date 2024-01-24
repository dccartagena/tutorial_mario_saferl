#!/bin/bash
#SBATCH --nodes=1
#SBATCH --tasks-per-node=4
#SBATCH --time=02:00:00
#SBATCH --job-name=rl-mario
#SBATCH --mem=16G

# Clear the module environment
module purge
# Load the Python version that has been used to construct the virtual environment
# we are using below
module load Python/3.9.6-GCCcore-11.2.0

# Activate the virtual environment
source $HOME/venvs/rl-mario/bin/activate

# Start the jupyter server, using the hostname of the node as the way to connect to it
jupyter notebook --no-browser --ip=$( hostname )