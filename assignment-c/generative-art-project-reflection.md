Name: Jeff
Hue Jia Wei

Student ID:
16566

Project
Title: 2BCD http://ravenkwok.com/2bcd/

Project
Artist: Raven Kwok

Created
on:  12 January 2013

 

**Why I like the project:**

2BCD is part
of a series of works that utilizes force field simulation studies to create
generative art. I particularly enjoy this series by Raven Kwok as it encourages
self-generated art. The addition of rules to the code help in creating pieces
that are similar in graphic nature, yet never the exact same copy of each
other. Raven uses particles as the base material for the pieces in this series.

The overall
contextual impression of the piece gives a sense of soft, sand-like, magnetic
patterns that fill the screen starting from several central cores. The
particle-generated patterns look like black sand sitting on top of a white
back-light to create beautiful silhouettes. The curvatures and pulled movements
of the patterns almost feel like they were inspired by iron fillings controlled
by multiple magnetic sources placed under the white back-light, pulling the
filings across the surface, while leaving trails of particles in its wake.

 

**How the project works:**

2BCD was
made with the concept of procedural particle generation in processing. It was
inspired by Ale’s “drawingMachine_10” and was a part of Raven’s “Force Field
Studies”, where he tested with the motion trails of multiple agents in various
customized force fields. There are two main functions used in the code, the
first one decides how much particles are generated, the second decides where
the particles are generated. The generation of particles is further split into
two functions, which Raven Kwok defined as “Particle” and “Interference”. 

The point of
generation of the particles, or basically, how the particles seemingly travel, is
decided with “PVector”, returning a representation of the vector as a float
array. Using this, he is able to simulate a concept in physics “W = F x D”
where “Work (or movement) = Force x Distance”.

Following
closely to the concept if particle movement from Ken Perlin and the “Perlin
Noise” algorithm, Raven takes it further by incorporating a “random” factor
multiplied against “Radians” as demonstrated in “x = cos(radians(randDegree))”,
and using “sin” for the y coordinate. This helps create the seemingly random
positions of circular shapes in the art piece.

 

**References: **

Project - [http://ravenkwok.com/2bcd/](http://ravenkwok.com/2bcd/)

Force Field
Studies - [http://ravenkwok.com/force-field-studies/](http://ravenkwok.com/force-field-studies/)

PVector - [https://processing.org/reference/PVector.html](https://processing.org/reference/PVector.html)

Drawing
Machine - [http://openprocessing.org/sketch/34320](http://openprocessing.org/sketch/34320)

Physics
Formula - [https://www.mansfieldct.org/Schools/MMS/staff/hand/work=fxd.htm](https://www.mansfieldct.org/Schools/MMS/staff/hand/work=fxd.htm)

Perlin Noise -  [http://flafla2.github.io/2014/08/09/perlinnoise.html](http://flafla2.github.io/2014/08/09/perlinnoise.html)

 

 