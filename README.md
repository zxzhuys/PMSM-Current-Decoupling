# PMSM Current Complex Vector Decoupling

***Keywords**: Permanent Magnet Synchronous Motor, FOC, Current Control, Complex Vector Decoupling, Low Carrier Ratio, Current Bandwidth.*

## Abstract
Driven by advancements in permanent magnet materials and power electronics technologies, permanent magnet synchronous motors (PMSMs) have gained widespread adoption in applications such as electric vehicles, CNC machine tools, and aerospace systems, owing to their compact design and high energy efficiency. In servo systems with low-switching-frequency devices and high speeds, PMSMs operating under low carrier ratio often face challenges such as degraded dynamic performance and severe current coupling. Therefore, research on current decoupling and bandwidth extension for PMSMs holds significant theoretical and practical significance.

The remainder of this article was organized as follows: First, based on the fundamental mathematical model of the three-phase stator reference frame (ABC frame), the mathematical model of PMSM in the synchronous rotating reference frame was derived through coordinate transformation (Clarke and Park transformations). Subsequently, the current loop design methodology and PI controller parameter tuning methods were presented.

The results of the research mainly include:  

On the one hand, to achieve bandwidth expansion of the current loop, this study investigated common PWM sampling and update strategies. Theoretical analysis, comparative studies, simulations, and experimental validations were conducted for both single-sample single-update and double-sample double-update methods. Results demonstrated that the double-sample double-update strategy effectively reduced current loop delay and enhanced bandwidth.  

On the other hand, to realize dynamic decoupling of dq-axis currents, this study derived a complex vector decoupling method based on complex vector theory. Through theoretical analysis, simulations, and experiments, this approach was compared with traditional feedforward decoupling methods. The results validated that complex vector decoupling achieved dynamic decoupling of dq-axis currents while maintaining steady-state performance.  

Finally, the article summarized the completed work, identified limitations and unresolved issues during the research process, and outlined future research directions.
