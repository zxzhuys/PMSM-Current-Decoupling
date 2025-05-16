# Motor Model Configuration & Test Setup

## ⚙️ Mechanical Port Configuration
- **Mode Change**: Switched from Torque Input Mode to Speed Input Mode
- **Control System Modification**: 
  - Speed outer loop disconnected
  - Current loop references manually set

## 📏 Current Reference Settings

- d-axis reference

id_ref = 0A

- q-axis reference timing

if t >= 0.2s && t < 0.25s
    
    iq_ref = 0.71 A  % 10% rated current

elseif t >= 0.25s
    
    iq_ref = 0.41 A

end

## 🔁 System Parameters

- PWM Frequency: 5kHz (Carrier frequency)

- Speed Reference: 4800 r/min (Corresponding to 320 Hz electrical frequency)

- Carrier Ratio: 15.6

- Tsi

  double sampling/double updating: Tsi = 1/fsw/2, Asymmetric
  
  single sampling/single updating: Tsi = 1/fsw, Symmetric
