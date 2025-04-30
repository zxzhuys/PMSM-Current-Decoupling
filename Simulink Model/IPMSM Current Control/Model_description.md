# IPMSM Current Control

## Model Overview
This model is adapted from the MATLAB/Simulink demo "IPMSM Velocity Control". Key files include:
- **Motor parameters**: `ipmsm_current_control_data.m`
- **Simulink model**: `ipmsm_current_control_CV_FF.slx`
- **Input dataset**: `ipmsm_current_control_Input.mat`

The system implements a discrete-time digital control architecture for PMSM with dual-loop (speed-current) control. 

It also incorporates control delay elements such as current sampling delay, PWM duty cycle update delay, and DSP digital control signal transmission delay.

## Control Architecture
1. **Hierarchical Control**
   - Speed loop: 2× slower than current loop
   - Current loop: PI control with two decoupling modes:
     - Complex Vector Decoupling (enabled by `ActCV = 1`)
     - Feedforward Decoupling (enabled by `ActFF = 1`) 

2. **Parameter Tuning**

   PI controller parameters are designed using:
   
   - Type I system methodology

   - Type II system methodology
   
   for current loop regulation

## Simulation Guidelines
1. **Basic Operation**
   - Adjust simulation duration based on input dataset length
   - Monitor:
     - dq-axis decoupling performance with different decoupling modes
     - Speed tracking accuracy

2. **Advanced Testing**
   - Gradually increase reference speed to:
     - Measure maximum achievable speed
     - Determine minimum carrier ratio (under weak magnetic conditions)
