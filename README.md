# tdlib-docker

Docker image with precompiled Telegram [tdlib][1] library, based on alpine 3.9.

Available versions:

 - `1.4.0` (`latest`)

To build this image you will need at least 3.5 GB of RAM.

To copy binaries into your own alpine-based image use:

```
COPY --from=zenwalker/tdlib /usr/local/include/td /usr/local/include/td
COPY --from=zenwalker/tdlib /usr/local/lib/libtd* /usr/local/lib/
```

[1]: https://github.com/tdlib/td
