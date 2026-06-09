#!/bin/bash

# train
python exp_runner.py --mode train --conf ./confs/womask_base.conf --case real/sculpture --gpu 0

# validate (iso<=0)
python exp_runner.py --is_continue --mode validate_mesh --conf ./confs/womask_base.conf --case real/sculpture --gpu 0 --mcube_threshold -0.0

# validate dcudf
python exp_runner.py --is_continue --mode validate_dcudf --conf ./confs/womask_base.conf --case real/sculpture --gpu 0 --mcube_threshold 0.005

# View interpolation
python exp_runner.py --mode interpolate_000_010 --conf ./confs/womask_base.conf --case real/sculpture --gpu 0 --is_continue

