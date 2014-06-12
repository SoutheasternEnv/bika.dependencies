bika.dependencies
=================

Dependecies for running bika.lims on Windows.

This fixes the fact that Plone's buildout cannot compile the libraries
required by weasyprint.
It installs pre-compiled libraries into System32 and Plones installation
folder.

Library packages:
cffi-0.8.2-py2.6
libcairo
