# Low Carrier Ratio Simulation Configuration

## ⚙️ System Parameters

PWM_Frequency     = 2.5e3;     % 2.5 kHz

Speed_Reference   = 3000;      % 3000 r/min

Electrical_Freq   = 200;       % 200 Hz (corresponding to base speed)

Carrier_Ratio     = 12.5;      % Calculated as f_PWM / f_electrical

## Simulation Timing Schedule
① 0s Start unloaded operation

② 0.15s Speed stabilized at 3000 r/min

③ 0.20s Step load torque application (50% rated)

④ 0.25s Load torque removal (return to no-load)

## Decoupling Control Selection
ActCV = 1;    % ✅ Enable Complex Vector Decoupling

ActFF = 1;    % ✅ Enable Feedforward Decoupling
