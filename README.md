# LBRYcrd Node

This image will create a `lbrycrd.conf` file in the data volume on the first run. Edit this file after the first run to your needs.

You can also specify the `LBRYCRD_PARAMS` environment variable which will pass any additional argument to the lbrycrdd process.


### Main network (mainnet)

Message start marker: `0xfae4aaf1`

Default Ports:

* `9245` JSON RPC
* `9246` Daemon

```
docker run -it \
-v /var/volumes/lbrycrd:/var/lib/lbrycrd \
--name lbrycrd \
-p 9245:9245 \
-p 9246:9246 \
--restart always \
-d hashland/lbrycrd
```

### Test network (testnet)

Message start marker: `0xfae4aae1`

Default Ports:

* `19245` JSON RPC
* `19246` Daemon

```
docker run -it \
-v /var/volumes/lbrycrd:/var/lib/lbrycrd \
-e LBRYCRD_PARAMS="-testnet=1" \
--name bitcoin-regtest \
-p 19245:19245 \
-p 19246:19246 \
--restart always \
-d hashland/lbrycrd
```

