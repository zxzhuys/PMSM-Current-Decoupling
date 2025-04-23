This Simulink model, completed during 2024 summer internship, implements an id=0 FOC system with dual closed-loop speed and current control for a continuous-domain PMSM model under pulsed torque load. 

Simulation results demonstrate that the dq-axis currents achieved effective decoupling with complex vector decoupling method. 

During torque load step changes, the d-axis current remained near zero, while the q-axis current exhibited fast transient response with minimal overshoot. 

Motor speed stability was also maintained, validating the effectiveness of complex vector decoupling and dual closed-loop control.

However, the model was built under ideal continuous-domain conditions, neglecting delays introduced by DSP digital control.

Additionally, the PI parameter tuning process lacked rigor.

This model only represents a preliminary achievement and requires further refinement for practical applications.
