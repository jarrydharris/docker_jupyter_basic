#!/bin/ash
source venv/bin/activate
echo "Port:" $JUPYTER_PORT
jupyter notebook --ip=0.0.0.0 --port=$JUPYTER_PORT --no-browser --allow-root