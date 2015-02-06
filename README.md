#Airport Challenge

This is a software to control the flow of planes at an airport. The planes can land and take off provided that the weather is sunny. Occasionally it may be stormy, in which case no planes can land or take off. 

##CRC

###Plane
- have status (landed/flying)

###Weather
- can be sunny
- can be stormy
(Random - more likely to be sunny - https://www.relishapp.com/rspec/rspec-mocks/docs. There’s an example of using a test double to test a die that’s relevant to testing random weather in the test.)

###Airport
- planes can start
- planes can land
- planes can take off
- If the weather is stormy planes cannot land or take off

 

The specs are located at: http://bit.ly/1dFD7f1. 

The submission will be judged on the following criteria:
Tests pass
Tests coverage is good
The code is elegant: every class has a clear responsibility, methods are short etc.