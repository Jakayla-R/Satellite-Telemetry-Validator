# Satellite Telemetry Validator

A demonstration of Ada's type-safe programming for aerospace applications.

## What It Does
Validates incoming satellite telemetry data against safe operating ranges:
- Temperature: -40°C to +85°C
- Voltage: 26V to 34V  
- Attitude: 0° to 360°

## Why Ada?
Ada's strong type system catches data errors at compile time, preventing the anomalies that cause mission failures like:
- Firefly Aerospace Flight 6 upper stage failure
- Intuitive Machines lander tip-overs
- ispace Resilience lunar crash

## How to Run
```bash
alr build
alr run
```
