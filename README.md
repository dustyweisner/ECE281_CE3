ECE281_CE3
==========

Moore and Meely Elevator Controller

The testbenches for the Mealy and Moore Machine were very similar, containing almost the same code, with the exception of the "nextfloor" output initiation and declaration. I confirmed functionality of these designs by looking at the outputs relative to the inputs (and the current state in Mealy). In the Moore, if the inputs are "1, 0"(up_down, stop), the state will move on if it isnt floor4, and the state will move down if the inputs are "0, 0." Any other combination stayed the same. However for the Mealy, the current state affected the output, nextfloor. These were the Mealy and Moore Machines' simulation results:


__*Moore Machine*__


![](https://github.com/dustyweisner/ECE281_CE3/blob/master/Full_Moores_Waveform.GIF?raw=true)


__*Moore Machine*__


![](https://github.com/dustyweisner/ECE281_CE3/blob/master/Mealy_Testbench_Waveform.GIF?raw=true)



In the Moore VHDL shell, the reset is synchronous because the reset because it occurs on the rising edge. Also, in the Moore Testbench, the clock time is set to 10 ns, or a 100 MHz clock frequency. To simulate a 50 MHz clock, we would set the time value to 20 ns. The Mealy Machine will be different from the Moore Machine only because the Mealy machine's outputs would be dependent on the current state and the inputs while the Moore Machines's output depends on only its current state, BUT  the next-state process coding was the same for both the Mealy and the Moore. Only the ouput logic changed because nextfloor was coded. 
