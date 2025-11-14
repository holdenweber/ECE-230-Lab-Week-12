# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary
In this lab, we learned how to implement a modulo counter and 
a ripple counter in Verilog. We learned that a modulo counter is 
a faster counter than the ripple adder, but it requires an n-bit adder
and it has to compare the count to a given value. We learned that the 
ripple counter is easier to implement, but it makes the toggle rate of 
the LED significantly slower. 

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
The modulo counter divides clocks by 2 * count because with each 
consecutively chained flip-flop, it divides the clock cycle by a power of 
2^n. Each flip-flop alters the clock cycle/divides it. 

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
The ring counter's output goes to all 1s on the first clock cycle because of a 
delay with the flip-flops. The clock signal has to "ripple" through, and it 
has some delay.


### 3 - What width of ring counter would you use to get to an output of ~1KHz?
The width of the ring counter would need to be between 9 and 10, so 10 to get
the output of ~1KHZ. 
