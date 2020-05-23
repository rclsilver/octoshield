# OctoShield

This Raspberry pi hat can be used with [OctoPrint-Enclosure](https://plugins.octoprint.org/plugins/enclosure/) plugin.

This hat is compatible with Raspberry Pi 2, 3 or 4.

With this hat, you will be able to:
* manage a 30x30 5V fan to regulate the Raspberry Pi temperature
* manage a dual relay module for printer power and a LED strip
* read the temperature of your enclosure with a [DS18B20](https://datasheets.maximintegrated.com/en/ds/DS18B20.pdf) sensor
* cut the power of your printer when some smoke is detected by an external smoke detector or when you press an emergency button

All connectors are [JST XH](https://www.jst-mfg.com/product/pdf/eng/eXH.pdf) to be easier to use.

## Inputs / Outputs

* `GPIO.5` (Output): The fan
* `GPIO.7` (Input): The [DS18B20](https://datasheets.maximintegrated.com/en/ds/DS18B20.pdf) sensor
* `GPIO.27` (Input): The power button to toggle printer power
* `GPIO.17` (Output): The signal to the relay which manages the printer power
* `GPIO.4` (Input): The LED button to toggle LED strip power
* `GPIO.3` (Output): The signal to the relay which manages the LED strip power
* `GPIO. 6` (Input): The emergency signal to turn off the printer power

## Power

The board works with a *5V DC* power. The power supply must be connected to `J1` connector:

![shield_vin](/images/shield/vin.png)

## Fan

The fan must be connected to `J3` connector:

![shield_fan](/images/shield/fan.png)

The fan can be controlled with the `GPIO.5`. A *HIGH* level turn on the fan.

You can use the provided [script](/fan-control/fan-control.py) and [SystemD service](/fan-control/fan-control.service) to manage the regulate the temperature.

You must use the [SSH](https://www.raspberrypi.org/documentation/remote-access/ssh/) access to enable the service by executing following commands with the `pi` user:

```shell
git clone https://github.com/rclsilver/octoshield.git
sudo cp octoshield/fan-control/fan-control.py /usr/local/bin
sudo cp octoshield/fan-control/fan-control.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable fan-control.service
sudo systemctl start fan-control.service
```

## Temperature sensor

The sensor must be connected to `J4` connector:

![shield_ds18b20](/images/shield/ds18b20.png)

Temperature sensor [DS18B20](https://datasheets.maximintegrated.com/en/ds/DS18B20.pdf) can be used with the [1-Wire](https://en.wikipedia.org/wiki/1-Wire) protocol on a Raspberry Pi.

You must enable this interface to be used with the [SSH](https://www.raspberrypi.org/documentation/remote-access/ssh/) access by executing following commands with the `pi` user:

```shell
sudo raspi-config
```

*Note*: Use the direction arrows to navigate in the menu and the *Enter* key to validate.

1. Enter in the `Interfacing Options` menu
![raspi-config_home](/images/1-wire/home.png)

1. Enter in the `1-Wire` submenu
![raspi-config_interfacing-options](/images/1-wire/interfacing-options.png)

1. Select `Yes` and press the *Enter* key
![raspi-config_1-wire](/images/1-wire/1-wire.png)

1. The interface has been enabled, you can press *Enter* to continue
![raspi-config_enabled](/images/1-wire/enabled.png)

1. You can now select `Finish` with the *Right arrow* key
![raspi-config_finish](/images/1-wire/finish.png)

1. You have to reboot the Raspberry pi
![raspi-config_reboot](/images/1-wire/reboot.png)

You will need to obtain your temperature device id by executing the following command:

```shell
cat /sys/devices/w1_bus_master1/*/name
```

This will print the ID if all is working fine. If nothing is printed, please check your installation.

Now, in the [OctoPrint-Enclosure](https://plugins.octoprint.org/plugins/enclosure/) plugin settings, you can add your sensor by adding a new Input and following this screenshot:

![octoprint_ds18b20](/images/octoprint/ds18b20.png)

## Printer power

The power switch must be connected to `J5` connector:

![shield_sw_pwr](/images/shield/sw_pwr.png)

When `+5V` and `IN` pins are connected, a *LOW* level is transmitted to the `PWR` pin of `J9` and power of printer is turned on. In this case, `OUT` pin is powered by a *5V DC* power to turn on a light signal.

### OctoPrint

Now, in the [OctoPrint-Enclosure](https://plugins.octoprint.org/plugins/enclosure/) plugin settings, you can manage the printer power relay following those screenshots.

#### Input

![octoprint_pwr_input](/images/octoprint/power_input.png)

#### Output

![octoprint_pwr_output](/images/octoprint/power_output.png)

## LED strip power

The LED strip switch must be connected to `J8` connector:

![shield_sw_led](/images/shield/sw_led.png)

When `+5V` and `IN` pins are connected, a *LOW* level is transmitted to the `LED` pin of `J9` and power of LED strip is turned on. In this case, `OUT` pin is powered by a *5V DC* power to turn on a light signal.

### OctoPrint

Now, in the [OctoPrint-Enclosure](https://plugins.octoprint.org/plugins/enclosure/) plugin settings, you can manage the LED strip power relay following those screenshots.

#### Input

![octoprint_led_input](/images/octoprint/led_input.png)

#### Output

![octoprint_led_output](/images/octoprint/led_output.png)

## Smoke detector / Emergency button

You can use both a smoke detector or an emergency button to power down the printer.

### Smoke detector

Most of detectors send *9V DC* power when it detects some smoke. You must find points on your and connect them on `J8` connector:

![shield_smoke_detector](/images/shield/smoke_detector.png)

When the detector is detecting smoke, a *HIGH* level is transmitted to the `GPIO.6`. You have to tell OctoPrint to turn off the printer.

### Emergency button

The emergency button must be connected to `J7` connector:

![shield_sw_led](/images/shield/emergency_button.png)

When `+5V` and `IN` pins are connected, a *HIGH* level is transmitted to the `GPIO.6`. You have to tell OctoPrint to turn off the printer.

### OctoPrint

Now, in the [OctoPrint-Enclosure](https://plugins.octoprint.org/plugins/enclosure/) plugin settings, you can add your emergency input following this screenshot.

![octoprint_emergency_input](/images/octoprint/emergency_input.png)
