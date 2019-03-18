#!/bin/bash
echo "Connect to azure"
az login
echo "connected start downloading"
az dls fs download --account azdlsprarlafoods --destination-path /home/MABKI/milkIntake/MilkIntake.Forecasting/inputdata --source-path /data/milkintake/datamodel/2019/03/11


