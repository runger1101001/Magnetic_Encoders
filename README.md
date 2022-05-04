# Small encoder boards

Several designs for small magnetic encoder boards.
These boards all serve the same purpose, and many have the same shapes. They use different sensor ICs, which depending on the IC may result in different performance or different interface types.

They are intended to sense the absolute angular position of a rotating magnet. Generally this is used to sense the position of a motor shaft, as an input to motor control algorithms, or a joint/actuator position, for robotics applcations.

Where sensors use I2C, they use the Stemma-QT/Qwiic connectors (JST-SH) and pinouts.
Where sensors use SPI or SSI, they all use the same pinouts.

:warning: Not all of these have been produced or tested.

Please consult the individual subdirectories for more information. If a sub-directory does not contain a README, use at your own risk.

## Finished and tested designs

- [AS5048A](./Encoder_SPI/)
- [AS5048B](./Encoder/)
- [TLE5012B](./Encoder_SPI_TLE5012B/)
- [SC60228](./Encoder_SPI_SC60228/)
