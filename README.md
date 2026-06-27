# FPGA-Based Traffic Light Controller with Emergency Priority

## Overview

This project implements a finite state machine (FSM) based traffic light controller using Verilog HDL. It controls traffic signals for two roads and supports an emergency vehicle priority feature.

## Features

- FSM-based design
- Emergency vehicle priority override
- Behavioral simulation
- RTL synthesis
- Vivado 2019.1 compatible

## Tools Used

- Verilog HDL
- Xilinx Vivado 2019.1

## Files

traffic_light.v
traffic_tb.v

## Simulation

The controller cycles through four states:

North Green → North Yellow → East Green → East Yellow

When the emergency input becomes HIGH, the controller immediately switches to North Green and East Red.

## Results

✔ Behavioral Simulation Successful

✔ RTL Schematic Generated

✔ Synthesis Successful