.. master file, 
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

ATR NSUF Experiment Design Toolkit
====================================

We assume that the reader seeks to conduct a quick, efficient, and
reasonably accurate computational neutronic analysis on an irradiation
experiment in the ATR-3 core.  This guide provides step by step
instructions on how to conduct such an analysis using the
"substitution" method.  The guide covers two different computational
options through which "substitution" method can be implemented: the
MCNP5 option and the DAG-MCNP5 (DAGMC) option.  The MCNP5 option is
faster and more computationally efficient, while the DAGMC option is
more "user-friendly", particularly for those who are not proficient in
the language of MCNP.


.. toctree::
   :maxdepth: 1

   mcnpmethod
   dagmcnpmethod
   surfacesourcefiles
   tailenddagmc
   developerguide
   examples
