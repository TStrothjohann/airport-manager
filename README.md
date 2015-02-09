#Airport Challenge

This is a software to control the flow of planes at an airport. The planes can land and take off provided that the weather is sunny. Occasionally it may be stormy, in which case no planes can land or take off. 

Classes and Modules

###Class: Plane
- plane can start (change status to flying)
- plane can land (change status to landed)

###Module: Weather
- can be sunny
- can be stormy
The moduke returns randomly sunny or stormy but tends to sunny (1:4).

###Class: Airport
- docking and undocking planes
    -- is able to dock landed planes
    -- is able to send take_off!-method to planes, when sunny
    -- is able to send land!-method to planes
- Checks weather and space before sending take_off! or land message to planes
    -- should not be able to send take_off!-method if weather is stormy
    -- should not send land!-method if weather is stormy
    -- a plane cannot land if the airport is full
- The grand final (last spec)
    -- all planes can land and all planes can take off. When docked, their status is not flying, and the airport is full. After take-off the planes are all flying again.

##CRC

Plane
Wheather, are you sunny or stormy? 

Airport
Checks weather (Module Weather) and space/capacity (Class Airport)

Weather (Module)
generates random weather and has a public interface telling whether it's sunny or stormy.