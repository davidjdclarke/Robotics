Hi,

A few notes on the project...

First, why is the (zero point) for the z1 axis set to 90 degrees from the z0 axis?  This gave me alot of problems in developing the forward and inverse kinematic equations because the rotations q2 were all off of 90 degrees.  The frustrating part was that I could see that the values I was computing made sense but they weren't matching the lab manual.  Maybe next time if you provide reference values like that makes sure that the labels in the manual clearly outline assumptions that were made.  

Second, as for the fksoln.m file.  I am almost certian that I did not meet the specs.  For one I did not use any built in dh() function.  I am not all that experienced with the MATLAB file structure and how projects are run, I could fine no such source code for the function in the library and quiet frankly could not figure out how to access it.  Since I was able to get everything working just fine without it I figured I would just demonstrate how to compute the values USING the dh params.

Thanks,

ps. Thanks for replying to emails quickly and with good advice.  The note you sent me was very helpful.  

Daivd
