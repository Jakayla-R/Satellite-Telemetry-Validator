# Satellite Telemetry Validator

A demonstration of Ada's type-safe programming for aerospace applications.

## What It Does
Validates incoming satellite telemetry data against safe operating ranges:
- Temperature: -40°C to +85°C
- Voltage: 26V to 34V  
- Attitude: 0° to 360°

## Why Ada?
Ada's type system catches data errors at compile time, preventing the anomalies that cause mission failures.

## How to Run
```bash
alr build
alr run
```
## Example Output
```
=== SATELLITE TELEMETRY VALIDATOR ===

Temperature: 22.5 C
OK: Temperature within safe range

Voltage: 24.8 V
ANOMALY: Voltage below safe threshold!
ACTION: Investigate potential battery degradation

Attitude Angle: 127.3 degrees
OK: Attitude within safe range

=== SUMMARY ===
This validator catches bad telemetry data before it causes failures
```


## Technical Details
- Language: Ada 2012
- Build system: Alire/GPRbuild
- Type-safe range checking prevents invalid telemetry values
- Compile-time validation reduces runtime errors

