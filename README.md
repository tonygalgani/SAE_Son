# Bluetooth Speaker Prototype with Class D Amplifier

## Introduction

This project aims to create a Bluetooth speaker prototype using a Class D amplifier. The Class D amplifier operates with transistors in either saturated or blocked positions, minimizing losses and theoretically achieving a 100% efficiency.

## Table of Contents

1. [Introduction](#introduction)
2. [System Overview](#system-overview)
3. [Signal Conditioning and Filtering](#signal-conditioning-and-filtering)
4. [Digital Processing](#digital-processing)
5. [Class D Amplifier Card](#class-d-amplifier-card)
6. [Final Assembly and Testing](#final-assembly-and-testing)
7. [Conclusion](#conclusion)

## System Overview

The system converts the received audio signal into PWM (Pulse Width Modulation), which controls a power electronic switch. This switch increases the PWM voltage from 3.3-0V to 15-(-15)V. A low-pass filter then restores the amplified audio signal.

### System Diagram

![System Diagram](attachment:image-1.png)

### Use Case Diagram

![Use Case Diagram](attachment:image-2.png)

### Requirements Diagram

![Requirements Diagram](attachment:image-3.png)

### Block Definition Diagram

![Block Definition Diagram](attachment:image-4.png)

## Signal Conditioning and Filtering

### Bluetooth Module

The Bluetooth module manages all Bluetooth-related actions, enabling connection with various devices like smartphones and computers.

![Bluetooth Module](attachment:image-5.png)

### Signal Transmission Process

The signal transmission process involves connecting the module via Bluetooth to the desired device, converting the received signal into an analog voltage signal.

![Signal Transmission Synopsis](attachment:image-6.png)

### Stereo Audio Signal Conditioning

The first step involves designing an electronic card to condition the stereo audio signal, ensuring optimal quality for further processing.

#### Initial Observations

The audio signal from the Bluetooth module has values ranging from approximately -0.4V to 0.8V, which are not suitable for our processing system.

![Stereo Audio Signal](attachment:image-7.png)

#### Signal Conditioning Needs

The signal must be adapted for the ADC (Analog-to-Digital Converter) of the DE10-Lite card, which samples values from 0V to 5V.

#### Stereo to Mono Conversion

The circuit combines the stereo signals and adds a voltage offset to center the signal at 2.5V.

![Stereo to Mono Conversion](attachment:image-8.png)

#### Signal Amplification

An operational amplifier (TL081) is used to amplify the signal, increasing its peak-to-peak amplitude for better sampling.

![Amplification Circuit](attachment:image-9.png)

### Signal Filtering

A low-pass filter is designed to ensure the purity and clarity of the final audio signal.

![Low-Pass Filter](attachment:image-10.png)

## Digital Processing

### Analog-to-Digital Converter (ADC)

The ADC converts the analog input signal into a digital signal for PWM control.

![ADC Block](attachment:image-11.png)

### Clock Divider and Comparator

The clock is divided to create the PWM period, and the comparator generates the PWM signal based on the ADC output.

![Clock and Counter](attachment:image-12.png)

### Visualizer

A dynamic display on LEDs is created to visualize the signal amplitude.

![Visualizer Block](attachment:image-13.png)

### Low-Pass Filter

An additional low-pass filter is implemented to modify the music, with a cutoff frequency of 1kHz.

![Low-Pass Filter Coefficients](attachment:image-14.png)

### Test Bench

The programs are tested using a function generator and an oscilloscope.

![Test Bench Schematic](attachment:image-15.png)

## Class D Amplifier Card

### Preliminary Amplifier Card

The Class D amplifier card uses a HIP4082 driver to control the H-bridge, which amplifies the PWM signal.

![H-Bridge Schematic](attachment:image-16.png)

### Final Amplifier Card

The final card is assembled and tested to ensure proper functioning.

![Final Amplifier Card Schematic](attachment:image-17.png)

## Final Assembly and Testing

### Initial Testing

The system is initially tested using a test platform, demonstrating clear sound output.

![Initial Test Video](attachment:image-18.png)

### Final Assembly

The complete system is assembled in a resonance box, with a 3D-printed speaker support and reclaimed wood for better sound resonance.

![Final Assembly](attachment:image-19.png)

## Conclusion

The project successfully demonstrates a functional Bluetooth speaker prototype with a Class D amplifier. Future improvements include adding a protection device for the 12V battery and integrating a volume control circuit.
