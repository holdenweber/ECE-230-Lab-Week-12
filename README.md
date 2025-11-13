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

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?

### 3 - What width of ring counter would you use to get to an output of ~1KHz?

