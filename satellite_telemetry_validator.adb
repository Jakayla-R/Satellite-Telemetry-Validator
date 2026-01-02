with Ada.Text_IO; use Ada.Text_IO;

procedure Satellite_Telemetry_Validator is
   
   -- Define safe operating ranges as constrained types
   type Safe_Temperature is new Float range -40.0 .. 85.0;
   type Safe_Voltage is new Float range 26.0 .. 34.0;
   type Safe_Angle is new Float range 0.0 .. 360.0;
   
   -- Simulated telemetry readings
   Temp_Reading : Float := 22.5;
   Voltage_Reading : Float := 24.8;
   Attitude_Angle : Float := 127.3;
   
begin
   Put_Line("=== SATELLITE TELEMETRY VALIDATOR ===");
   Put_Line("");
   
   -- Temperature validation
   Put_Line("Temperature: 22.5 C");
   if Temp_Reading >= -40.0 and Temp_Reading <= 85.0 then
      Put_Line("OK: Temperature within safe range");
   else
      Put_Line("ANOMALY: Temperature outside safe range!");
   end if;
   Put_Line("");
   
   -- Voltage validation
   Put_Line("Voltage: 24.8 V");
   if Voltage_Reading >= 26.0 and Voltage_Reading <= 34.0 then
      Put_Line("OK: Voltage within safe range");
   else
      Put_Line("ANOMALY: Voltage below safe threshold!");
      Put_Line("ACTION: Investigate potential battery degradation");
   end if;
   Put_Line("");
   
   -- Attitude validation
   Put_Line("Attitude Angle: 127.3 degrees");
   if Attitude_Angle >= 0.0 and Attitude_Angle <= 360.0 then
      Put_Line("OK: Attitude within safe range");
   else
      Put_Line("ANOMALY: Invalid attitude reading!");
   end if;
   Put_Line("");
   
   Put_Line("=== SUMMARY ===");
   Put_Line("This validator catches bad telemetry data before it causes failures");
   Put_Line("Similar validation could have prevented Firefly Flight 6 anomaly");
   
end Satellite_Telemetry_Validator;