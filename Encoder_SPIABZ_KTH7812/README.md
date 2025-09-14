# AS5047P magnetic angle sensor

Small (21x17mm) board for the AS5047P magnetic absolute angle sensor.

For use in motor control or robotics applications, the sensor measures the orientation (angle in the plane) of a nearby diametrically magnetized magnet.

That sounds more complicated than using it really is, so lets describe it another way:
- attach the magnet to the axis of something that rotates
- put the sensor near it
- read angles with your Arduino

| Back of board | Front of board |
| --- | --- |
| with SH 1.0 connectors <br><img src="./pics/as5047p_back.jpg" width="300" /> | with sensor <br><img src="./pics/as5047p_front.jpg" width="300" /> |

## Features

- 3V to 5V operation
- 14 bit accuracy, 16384 positions per revolution 
- SPI interface up to 10MHz
- PWM output pin with 1kHz PWM frequency and 12bit accuracy
- ABZ interface with 12 bit accuracy, 4096 steps in quadrature mode
- power indication LED (green, dim)

Datasheet of the sensor: https://ams.com/documents/20143/36005/AS5047P_DS000324_3-00.pdf

## Getting one

You may be able to buy some here:

<a href="https://www.tindie.com/stores/smallrobots/"><img src="https://d2ss6ovg47m0r5.cloudfront.net/badges/tindie-mediums.png" alt="I sell on Tindie" width="150" height="78"></a>

Or you could make one - it is open source, you will find gerber files and BOM in the repo, and design files for KiCad 6.

## Usage

The sensor has to be precisely positioned near the magnet. The magnet should be precisely on-axis and in-plane (no wobble!). The sensor should be mounted with an air-gap of about 0.5mm to the magnet.

Taking the time to mount the magnet and sensor board carefully will improve the accuracy and smoothness of your readings.

The sensor has SPI and ABZ interfaces:

|SPI|ABZ|
|---|---|
|<img src="pics/SPI_pinout.png" width="232" />|<img src="pics/ABZ_pinout.png" width="215" />|


The SPI interface is available on a JST-SH 6-pin socket. Pre-made cables are available cheaply on AliExpress and other sources.

You may connect VCC to either 3.3V or 5V, but must set the solder jumper accordingly. The default setting of the solder jumper is 3.3V. To use 5V power, carefully cut the trace connecting the two pads of the jumper. 

For SPI, connect the other lines (MOSI, MISO, CLK and CS) to the respective counterparts on your MCU board.

The ABZ outputs can be used in parallel to the SPI interface.

Note: The sensor board does not pull the CS line up.

## Communications

SPI interface:
- SPI Mode 1
- MSB first
- max 10MHz SPI clock

See [datasheet](https://ams.com/documents/20143/36005/AS5047P_DS000324_3-00.pdf) for details, or use an existing software driver.

:warning: Note: cable length, shielding (or lack thereof) and environmental noise may limit performance to significantly less than the 10MHz maximum.

## Software

The sensor can be used with any appropriate SPI driver.

The author uses it with Arduino-compatible MCU boards and the [SimpleFOC library](http://www.simplefoc.com).

A driver for the sensor for Arduino and SimpleFOC can be found here: [SimpleFOC drivers library](https://github.com/simplefoc/Arduino-FOC-drivers/tree/master/src/encoders/as5047)

## Physical dimensions

v1.0: 21 x 17 x 4mm (1.6mm PCB)

<img src="../Encoder_SPI/pics/dimensions.png" width="400" />

3D model: [STEP file](./Encoder_SPI_AS5047P.step)

## Cables

Pre-made JST SH 1.0 cables are available. When buying cables with two plugs, choose the type that is called "reverse connection" - where the pins on both ends of the cable have the same order.

Some links to compatible cables / breakout boards:

 - https://www.tindie.com/products/26431/
 - https://www.aliexpress.com/item/4000421829259.html
 - https://www.aliexpress.com/item/4001235017139.html
 - https://www.pololu.com/product/4770
 - https://www.pololu.com/product/4772

