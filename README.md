# Comparator
What is a 4-bit Comparator?

A 4-bit comparator is a combinational circuit that compares two 4-bit binary numbers and determines their relative magnitudes. It outputs three signals indicating whether one number is less than, equal to, or greater than the other. This functionality is essential in digital systems for tasks such as sorting, decision-making, and arithmetic operations.

Key Operations:

Equality Check (A = B):

Description: The comparator checks if all corresponding bits of the two 4-bit inputs are identical. If they are, the equality output is asserted.
Greater Than Check (A > B):

Description: Starting from the most significant bit (MSB) to the least significant bit (LSB), the comparator checks if the first position where the bits differ has a '1' in input A and a '0' in input B. If such a position is found, the greater-than output is asserted.
Less Than Check (A < B):

Description: Similarly, the comparator checks if the first differing bit position has a '0' in input A and a '1' in input B. If so, the less-than output is asserted.
Design Considerations:

The design involves comparing each corresponding bit of the two 4-bit inputs, starting from the MSB. By prioritizing the MSB, the comparator ensures accurate magnitude comparison, as higher-order bits have a more significant impact on the value. The outputs are then determined based on the results of these bitwise comparisons.

