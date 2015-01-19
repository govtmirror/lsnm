# ============================================================================
#
#                            PUBLIC DOMAIN NOTICE
#
#       National Institute on Deafness and Other Communication Disorders
#
# This software/database is a "United States Government Work" under the 
# terms of the United States Copyright Act. It was written as part of 
# the author's official duties as a United States Government employee and 
# thus cannot be copyrighted. This software/database is freely available 
# to the public for use. The NIDCD and the U.S. Government have not placed 
# any restriction on its use or reproduction. 
#
# Although all reasonable efforts have been taken to ensure the accuracy 
# and reliability of the software and data, the NIDCD and the U.S. Government 
# do not and cannot warrant the performance or results that may be obtained 
# by using this software or data. The NIDCD and the U.S. Government disclaim 
# all warranties, express or implied, including warranties of performance, 
# merchantability or fitness for any particular purpose.
#
# Please cite the author in any work or product based on this material.
# 
# ==========================================================================



# ***************************************************************************
#
#   Large-Scale Neural Modeling software (LSNM)
#
#   Section on Brain Imaging and Modeling
#   Voice, Speech and Language Branch
#   National Institute on Deafness and Other Communication Disorders
#   National Institutes of Health
#
#   This file (plotVisual.py) was created on December 1, 2014.
#
#
#   Author: Antonio Ulloa. Last updated by Antonio Ulloa on January 18 2015  
# **************************************************************************/

# plotVisual.py
#
# Plot output data files of visual delay-match-to-sample simulation

import numpy as np
import matplotlib.pyplot as plt

# Load data files
efd1 = np.loadtxt('../../output/efd1.out')
efd2 = np.loadtxt('../../output/efd2.out')
ev1h = np.loadtxt('../../output/ev1h.out')
ev1v = np.loadtxt('../../output/ev1v.out')
ev4c = np.loadtxt('../../output/ev4c.out')
ev4h = np.loadtxt('../../output/ev4h.out')
ev4v = np.loadtxt('../../output/ev4v.out')
exfr = np.loadtxt('../../output/exfr.out')
exfs = np.loadtxt('../../output/exfs.out')
exss = np.loadtxt('../../output/exss.out')

# Set up plot
plt.figure(1)

# Plot V1 module
ax = plt.subplot(10,1,1)
ax.plot(ev1h)
ax.set_xticks([])
ax.set_yticks([])

plt.subplot(10,1,2)
plt.plot(ev1v)
plt.axis('off')

# Plot V4 module
plt.subplot(10,1,3)
plt.plot(ev4h)
plt.axis('off')
plt.subplot(10,1,4)
plt.plot(ev4c)
plt.axis('off')
plt.subplot(10,1,5)
plt.plot(ev4v)
plt.axis('off')

# Plot STG module
plt.subplot(10,1,6)
plt.plot(exss)
plt.axis('off')

# Plot PFC modules FS, FD1, and FD2
plt.subplot(10,1,7)
plt.plot(exfs)
plt.axis('off')
plt.subplot(10,1,8)
plt.plot(efd1)
plt.axis('off')
plt.subplot(10,1,9)
plt.plot(efd2)
plt.axis('off')

# Plot FR (Response module)
plt.subplot(10,1,10)
plt.plot(exfr)
plt.xlabel('Timesteps')
plt.axis('off')

# Show the plot on the screen
plt.show() 
