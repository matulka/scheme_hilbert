# scheme_hilbert
Scheme program which draws the Nth iteration of the Hilbert curve

It is breaked down into several functions:

1) The make-sqn procedure takes in a number N and returns representation of the Nth iteration of Hilbert curve in the Lindenmayer system.
This procedure and its helper functions are implemented using tail-recursion in order run them in constant space. 

2) The draw-sqn procedure takes in the Lindenmayer system representation and the length of one line segment of the curve and draws it.

3) The draw-hilbert procedure takes in N (the iteration number) and SIZE (size of the square which the curve fills) and draws the Nth
iteration of the Hilbert curve.

4) The draw method makes an example of how the program works and draws 7 iterations of the Hilbert curve (N = 0, 1, 2, ..., 6) next to
each other.
