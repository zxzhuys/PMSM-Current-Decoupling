# Simulation Model Configuration

## 🔧 Control Parameters Tuning

### Current Loop Tuning
- **Methodology**: Classical Type-Ⅱ System Parameter Tuning  
- **Results (Double Sampling/Double Updating Mode)**:

  Kpc = 0.1732  % Proportional gain
  
  Kic = 692.8   % Integral gain

### Velocity Loop Tuning
- **Methodology** : PI Auto-Tuning Module
- **Results** :

Kpn = 0.04565  % Proportional gain

Kin = 9.021    % Integral gain

### Simulation Timing Schedule
①
0.05s: Start of speed reference ramp-up

②
0.15s: Reached rated speed (3000r/min)

③
0.25s: Sudden 50% load torque application
