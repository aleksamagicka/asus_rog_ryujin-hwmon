.. SPDX-License-Identifier: GPL-2.0-or-later

Kernel driver asus_rog_ryujin
=================================

Supported devices:

* ASUS ROG RYUJIN II 360

Author: Aleksa Savic

Description
-----------

This driver enables hardware monitoring support for the listed ASUS ROG RYUJIN
all-in-one CPU liquid coolers. Available sensors are pump, internal and external
(controller) fan speed in RPM, as well as coolant temperature.

Attaching external fans is optional and allows it to be controlled from the device. If
it's not connected, the fan-related sensors will report zeroes.

The addressable RGB LEDs and LCD screen are not supported in this driver and should
be controlled through userspace tools.

Usage notes
-----------

As these are USB HIDs, the driver can be loaded automatically by the kernel and
supports hot swapping.

Sysfs entries
-------------

=========== =============================================
fan1_input  Pump speed (in rpm)
fan2_input  Internal fan speed (in rpm)
fan3_input  External (controller) fan 1 speed (in rpm)
fan4_input  External (controller) fan 2 speed (in rpm)
fan5_input  External (controller) fan 3 speed (in rpm)
fan6_input  External (controller) fan 4 speed (in rpm)
temp1_input Coolant temperature (in millidegrees Celsius)
pwm1        Pump duty
pwm2        Internal fan duty
pwm3        External (controller) fan duty
=========== =============================================
