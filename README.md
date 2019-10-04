# syncravencoinIPFS
A simpler parallel/multi-threaded syncer for IPFS for ravencoin blockchain


![Multithreaded IPFS Pinner for Ravencoin Blockchain]( https://gateway.ravenland.org/ipfs/QmawLZCDCXtt8ZmrJ6v2A3apxqBzbovWeXGAeZPYrz9xSW "Pin Ravencoin to IPFS fast")

# Usage Instructions


```
# start IPFS daemon
ipfs daemon &

# download script automation
wget https://raw.githubusercontent.com/ravenlandpush/syncravencoinIPFS/master/syncallravencoin.sh

# Execute script automation as same user
chmod +x syncallravencoin.sh && ./syncallravencoin.sh
```

This is a very easy ipfs pinner that supports multi-threading. I may consider adding more advacned timeout functionality in the meantime whilst IPFS tools and batch management/job management is very limited.
