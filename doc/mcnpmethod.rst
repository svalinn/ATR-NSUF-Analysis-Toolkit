MCNP5 Method
===============

Requirements
-------------

Use of the MCNP5 option requires:

 1. That the user be proficient in MCNP, specifically the coding of
    MCNP geometries.  For those users who are unfamiliar with MCNP, we
    recommend the `introductory primer`_ written by
    J.K. Shultis and R.E. Faw:

 2. That the MCNP5 software package be installed on the users
    computer, or that the user have access to a network on which it is
    installed.  The package can be obtained free of charge from the
    `Radiation Safety Information Computational Center (RSICC)`_ website.

 3. That the following files be stored in the directory from which
    MCNP will be run:

    MCNP cutout input file associated with the ATR-3 region being
    analyzed.  This file is named in accordance with the following
    pattern: the name of the region, followed by the word "mini",
    followed by an extension ".i".  For example, for the region I-6,
    the MCNP cutout input file is named "I6mini.i".  It can be
    downloaded on the package website (as yet unspecified).

    xrssa file.  This file contains the surface source that will be
    read into MCNP.  When downloaded from the package website (as yet
    unspecified), it will be named in accordance with the following
    pattern: the name of the region, followed by ".w".  For example,
    the rssa file for region I6 will be named "I6.w".  The user needs
    to download that file into the working MCNP directory, and then
    rename it to "rssa".

Directions
-------------

 1. Add the necessary cell and surface definitions in the appropriate
    sections of the MCNP cutout input file (e.g., I6mini.i) so as to
    incorporate the desired experiment geometry.  Note: this step
    requires basic proficiency in the language MCNP.  Unfamiliar users
    should consult the MCNP Primer linked above.

 2. Add the experiment materials to the material section of the MCNP
    cutout input file so as to define any materials that are used in
    the above cell definitions.

 3. Add tallies to the data section of the MCNP cutout input file to
    get out the information of interest.  A generic mesh tally is
    included in the MCNP cutout input file for reference.

 4. Run the MCNP cutout input file in MCNP.  To do this, open up a
    command prompt, navigate to the working directory, and type in
    mcnp5 i=nameofMCNPcutoutfile(eg, I6mini.i)
    o=nameofoutputfile(youdecide).


Surface source files can be found :doc:`here <surfacesourcefiles>`.

.. _`introductory primer`: http://www.mne.ksu.edu/~jks/MCNPprmr.pdf
.. _`Radiation Safety Information Computational Center (RSICC)`: http://rsicc.ornl.gov
