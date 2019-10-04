# syncravencoinIPFS
A simpler parallel/multi-threaded syncer for IPFS for ravencoin blockchain


![Multithreaded IPFS Pinner for Ravencoin Blockchain](https://gateway.ravenland.org/ipfs/QmZypBmUuRwVNwnUwe58zxyYZyv6WpBuqXcBgL71ArQhEn "Pin Ravencoin to IPFS fast")

# Usage Instructions


```
# start IPFS daemon
ipfs daemon &

# download script automation
wget https://raw.githubusercontent.com/ravenlandpush/syncravencoinIPFS/master/syncallravencoin.sh

# Execute script automation as same user
chmod +x syncallravencoin.sh && ./syncallravencoin.sh
```

This is a very easy ipfs pinner that supports multi-threading. I may consider adding more advanced timeout and filesize functionality in the meantime, like we have for ravencoinOS pin management. Nice alternative script, automating adding ravencoin IPFS pinning in simplest and quickest way. Warning puts some load on ipfs and system.
