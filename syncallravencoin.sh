#!/bin/bash
# Date: 04/10/2019
# Author: Push / Ravenland.org
# Description: This script retrieves the ipfs list from ravenland asset explorer
# bootstrap repository and uses a multithreaded mechanism to synchronise
# 20 parallel ipfs pins at a time. Changing -lt to 100 maybe possible.
# approximately 10 to 90 times faster than conventional pin management
# this solution solves the timeout problem by allowing threads to run indefinitely, or much longer
# due to multi threads being used at once.

# TLDR: dirty but good ipfs job management script for Ravencoin IPFS pinning

curl -L https://bootstrap.ravenland.org/ravencoinOS/latest.txt > allipfs_blank
tail -n +6 allipfs_blank  > allipfs

mkdir sync;
cd sync;
i=0
while read -r hash; do
var=$((i+1))
echo "we are fetching $hash"
ipfs pin add $hash &
echo "file fetched. Next!"
process_count=$( ps auxfwww  |grep ipfs | wc -l)

if [ "$process_count" -lt "20" ]
then
        echo "Process count equals $process_count... ok to continue"
else
        echo "Process count equals 20 now. Time to rest for a bit."
        sleep 10
fi
done < ../allipfs
