# asus_rog_ryujin-hwmon

_Hwmon Linux kernel driver for monitoring Asus ROG Ryujin AIO coolers_

## Overview

The following device(s) are supported by this driver:

* ASUS ROG RYUJIN II 360

It's very likely that 240 is supported as well, but no one has tested that yet.

Being a standard `hwmon` driver, it provides readings via `sysfs`, which are easily accessible through `lm-sensors` as usual.

Report offsets were initially taken from [here](https://github.com/liquidctl/liquidctl/pull/653).

## Installation and usage

First, clone the repository by running:

```commandline
git clone https://github.com/aleksamagicka/asus_rog_ryujin-hwmon.git
```

Then, compile it and insert it into the running kernel, replacing the existing instance (if needed):

```commandline
make dev
```

You can then try running `sensors` and your device(s) should be listed there.
