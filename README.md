ECE281_CE3
==========

Moore and Meely Elevator Controller

The testbench results for the Mealy and Moore Machine were...(FILL IN) (Explain how confirmed functionality of designs). These were the Mealy and Moore Machines' simulation results:


__*Moore Machine*__


![](https://github.com/dustyweisner/ECE281_CE3/blob/master/Full_Moores_Waveform.GIF?raw=true)


__*Moore Machine*__


![](https://github.com/dustyweisner/ECE281_CE3/blob/master/Full_Moores_Waveform.GIF?raw=true)



In the Moore VHDL shell, the reset is synchronous because the reset because it occurs on the rising edge. Also, in the Moore Testbench, the clock time is set to 10 ns, or a 100 MHz clock frequency. To simulate a 50 MHz clock, we would set the time value to 20 ns. The Mealy Machine will be different from the Moore Machine because the Mealy machine's outputs would be dependent on the current state and the inputs while the Moore Machines's output depends on only its current state. Because of this characteristic difference, the coding had to be different in that the next state also had to be coded to an output.
