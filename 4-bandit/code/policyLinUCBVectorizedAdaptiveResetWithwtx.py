#!/usr/bin/env python2.7

import numpy as np
import random
import time
import itertools
import collections

## two resets
#last 2009-05-03 05:15:00     +clicked 18/308     Evaluated 366367/7900000 lines. CTR = 0.059298

# reset during:
# wtx is: 0.103206 / percentage is 0.021100
# resetting article: 109417
# 2009-05-02 15:10:00     +clicked 23/317     Evaluated 246403/5270000 lines. CTR = 0.065166
# wtx is: 0.101733 / percentage is 0.038900
# resetting article: 109417


# stat
# article: 109532 / wtx is: 0.072694 / percentage is 0.090300
# article: 109503 / wtx is: 0.081324 / percentage is 0.074200
# article: 109503 / wtx is: 0.053800 / percentage is 0.074100
# article: 109503 / wtx is: 0.057468 / percentage is 0.074100
# article: 109503 / wtx is: 0.099576 / percentage is 0.074100
# article: 109532 / wtx is: 0.067613 / percentage is 0.090300
# article: 109532 / wtx is: 0.084207 / percentage is 0.090300
# article: 109503 / wtx is: 0.078760 / percentage is 0.074100
# article: 109532 / wtx is: 0.089357 / percentage is 0.090300
# article: 109503 / wtx is: 0.073561 / percentage is 0.074100
# article: 109503 / wtx is: 0.129244 / percentage is 0.074100
# article: 109503 / wtx is: 0.054379 / percentage is 0.074100
# article: 109503 / wtx is: 0.031114 / percentage is 0.074100
# article: 109532 / wtx is: 0.122416 / percentage is 0.090300
# article: 109532 / wtx is: 0.104318 / percentage is 0.090300
# article: 109532 / wtx is: 0.111239 / percentage is 0.090300
# article: 109503 / wtx is: 0.093664 / percentage is 0.074100
# article: 109532 / wtx is: 0.108789 / percentage is 0.090300
# article: 109503 / wtx is: 0.073555 / percentage is 0.074100
# article: 109503 / wtx is: 0.070093 / percentage is 0.074100
# article: 109503 / wtx is: 0.086488 / percentage is 0.074100
# article: 109503 / wtx is: 0.100914 / percentage is 0.074100
# article: 109503 / wtx is: 0.134331 / percentage is 0.074100
# article: 109503 / wtx is: 0.081495 / percentage is 0.074100
# article: 109532 / wtx is: 0.102126 / percentage is 0.090200
# article: 109532 / wtx is: 0.118804 / percentage is 0.090200
# article: 109532 / wtx is: 0.090700 / percentage is 0.090200
# article: 109503 / wtx is: 0.048750 / percentage is 0.074000
# article: 109532 / wtx is: 0.085902 / percentage is 0.090300
# article: 109503 / wtx is: 0.069613 / percentage is 0.074000
# article: 109532 / wtx is: 0.112316 / percentage is 0.090300
# article: 109532 / wtx is: 0.110642 / percentage is 0.090300
# article: 109503 / wtx is: 0.074937 / percentage is 0.074000
# article: 109503 / wtx is: 0.099025 / percentage is 0.074000
# article: 109503 / wtx is: 0.107058 / percentage is 0.074000
# article: 109503 / wtx is: 0.108625 / percentage is 0.074000
# article: 109503 / wtx is: 0.052642 / percentage is 0.074000
# article: 109503 / wtx is: 0.063525 / percentage is 0.074000
# article: 109503 / wtx is: 0.035423 / percentage is 0.073900
# article: 109532 / wtx is: 0.108141 / percentage is 0.090300
# article: 109503 / wtx is: 0.126603 / percentage is 0.073900
# article: 109503 / wtx is: 0.109990 / percentage is 0.073900
# article: 109503 / wtx is: 0.046417 / percentage is 0.073800
# article: 109503 / wtx is: 0.044449 / percentage is 0.073800
# article: 109503 / wtx is: 0.054403 / percentage is 0.073800
# article: 109532 / wtx is: 0.040989 / percentage is 0.090200
# article: 109503 / wtx is: 0.130609 / percentage is 0.073900
# article: 109503 / wtx is: 0.107866 / percentage is 0.073900
# article: 109532 / wtx is: 0.091455 / percentage is 0.090200
# article: 109503 / wtx is: 0.117962 / percentage is 0.074000
# article: 109503 / wtx is: 0.044493 / percentage is 0.074000
# article: 109503 / wtx is: 0.109038 / percentage is 0.073900
# article: 109532 / wtx is: 0.096902 / percentage is 0.090200
# article: 109503 / wtx is: 0.136282 / percentage is 0.073900
# article: 109503 / wtx is: 0.040287 / percentage is 0.073900
# article: 109503 / wtx is: 0.063441 / percentage is 0.073900
# article: 109532 / wtx is: 0.112463 / percentage is 0.090200
# article: 109503 / wtx is: 0.083396 / percentage is 0.073900
# article: 109503 / wtx is: 0.113231 / percentage is 0.073900
# article: 109532 / wtx is: 0.110592 / percentage is 0.090200
# article: 109503 / wtx is: 0.104570 / percentage is 0.073900
# article: 109532 / wtx is: 0.111116 / percentage is 0.090200
# article: 109503 / wtx is: 0.050532 / percentage is 0.074000
# article: 109532 / wtx is: 0.080892 / percentage is 0.090200
# article: 109532 / wtx is: 0.115046 / percentage is 0.090200
# article: 109503 / wtx is: 0.061700 / percentage is 0.074000
# article: 109532 / wtx is: 0.111005 / percentage is 0.090200
# article: 109503 / wtx is: 0.085774 / percentage is 0.074000
# article: 109532 / wtx is: 0.083087 / percentage is 0.090200
# article: 109532 / wtx is: 0.110286 / percentage is 0.090300
# article: 109503 / wtx is: 0.094608 / percentage is 0.074000
# article: 109503 / wtx is: 0.128376 / percentage is 0.074000
# article: 109532 / wtx is: 0.110283 / percentage is 0.090300
# article: 109532 / wtx is: 0.128428 / percentage is 0.090300
# article: 109503 / wtx is: 0.108563 / percentage is 0.074000
# article: 109503 / wtx is: 0.121122 / percentage is 0.074000
# article: 109503 / wtx is: 0.056847 / percentage is 0.073900
# article: 109503 / wtx is: 0.027621 / percentage is 0.073900
# article: 109532 / wtx is: 0.079718 / percentage is 0.090300
# article: 109503 / wtx is: 0.026794 / percentage is 0.073900
# article: 109503 / wtx is: 0.138291 / percentage is 0.073900
# article: 109532 / wtx is: 0.111155 / percentage is 0.090200
# article: 109503 / wtx is: 0.106656 / percentage is 0.073900
# article: 109503 / wtx is: 0.106189 / percentage is 0.074000
# article: 109503 / wtx is: 0.073198 / percentage is 0.074000
# article: 109532 / wtx is: 0.103668 / percentage is 0.090200
# article: 109503 / wtx is: 0.025133 / percentage is 0.074000
# article: 109503 / wtx is: 0.061703 / percentage is 0.074000
# article: 109532 / wtx is: 0.072776 / percentage is 0.090200
# article: 109503 / wtx is: 0.089728 / percentage is 0.074000
# article: 109532 / wtx is: 0.123781 / percentage is 0.090200
# article: 109503 / wtx is: 0.073571 / percentage is 0.074100
# article: 109503 / wtx is: 0.092250 / percentage is 0.074100
# article: 109503 / wtx is: 0.063538 / percentage is 0.074100
# article: 109503 / wtx is: 0.063749 / percentage is 0.074100
# article: 109503 / wtx is: 0.077514 / percentage is 0.074100
# article: 109503 / wtx is: 0.075077 / percentage is 0.074100
# article: 109503 / wtx is: 0.090611 / percentage is 0.074100
# article: 109532 / wtx is: 0.131429 / percentage is 0.090200
# article: 109503 / wtx is: 0.054382 / percentage is 0.074100
# article: 109503 / wtx is: 0.105645 / percentage is 0.074100
# article: 109532 / wtx is: 0.046277 / percentage is 0.090200
# article: 109532 / wtx is: 0.111129 / percentage is 0.090200
# article: 109503 / wtx is: 0.136840 / percentage is 0.074200
# article: 109532 / wtx is: 0.109362 / percentage is 0.090200
# article: 109503 / wtx is: 0.061986 / percentage is 0.074200
# article: 109503 / wtx is: 0.092221 / percentage is 0.074200
# article: 109532 / wtx is: 0.102771 / percentage is 0.090200
# article: 109532 / wtx is: 0.080372 / percentage is 0.090200
# article: 109503 / wtx is: 0.124748 / percentage is 0.074200
# article: 109532 / wtx is: 0.091927 / percentage is 0.090200
# article: 109503 / wtx is: 0.094637 / percentage is 0.074200
# article: 109532 / wtx is: 0.072942 / percentage is 0.090200
# article: 109503 / wtx is: 0.113891 / percentage is 0.074200
# article: 109532 / wtx is: 0.089860 / percentage is 0.090300
# article: 109503 / wtx is: 0.082889 / percentage is 0.074200
# article: 109503 / wtx is: 0.024791 / percentage is 0.074200
# article: 109532 / wtx is: 0.087236 / percentage is 0.090300
# article: 109503 / wtx is: 0.068699 / percentage is 0.074200
# article: 109503 / wtx is: 0.057482 / percentage is 0.074200
# article: 109503 / wtx is: 0.066048 / percentage is 0.074200
# article: 109503 / wtx is: 0.113061 / percentage is 0.074200
# article: 109532 / wtx is: 0.094600 / percentage is 0.090200
# article: 109532 / wtx is: 0.110701 / percentage is 0.090200
# article: 109503 / wtx is: 0.141598 / percentage is 0.074300
# article: 109532 / wtx is: 0.061945 / percentage is 0.090200
# article: 109503 / wtx is: 0.104043 / percentage is 0.074300
# article: 109503 / wtx is: 0.090864 / percentage is 0.074300
# article: 109532 / wtx is: 0.058963 / percentage is 0.090200
# article: 109503 / wtx is: 0.094713 / percentage is 0.074400
# article: 109503 / wtx is: 0.043192 / percentage is 0.074400
# article: 109532 / wtx is: 0.114967 / percentage is 0.090200
# article: 109532 / wtx is: 0.128490 / percentage is 0.090100
# article: 109532 / wtx is: 0.130868 / percentage is 0.090200
# article: 109503 / wtx is: 0.106828 / percentage is 0.074400
# article: 109532 / wtx is: 0.119965 / percentage is 0.090200
# article: 109503 / wtx is: 0.057485 / percentage is 0.074500
# article: 109532 / wtx is: 0.061854 / percentage is 0.090200
# article: 109503 / wtx is: 0.090146 / percentage is 0.074500
# article: 109503 / wtx is: 0.066496 / percentage is 0.074500
# article: 109503 / wtx is: 0.065249 / percentage is 0.074500
# article: 109532 / wtx is: 0.111417 / percentage is 0.090200
# article: 109532 / wtx is: 0.058913 / percentage is 0.090200
# article: 109503 / wtx is: 0.053667 / percentage is 0.074500
# article: 109532 / wtx is: 0.089045 / percentage is 0.090200
# article: 109503 / wtx is: 0.026690 / percentage is 0.074400
# article: 109503 / wtx is: 0.073550 / percentage is 0.074400
# article: 109503 / wtx is: 0.052770 / percentage is 0.074400
# article: 109532 / wtx is: 0.111111 / percentage is 0.090200
# article: 109503 / wtx is: 0.069457 / percentage is 0.074300
# article: 109503 / wtx is: 0.119428 / percentage is 0.074300
# article: 109503 / wtx is: 0.057472 / percentage is 0.074200
# article: 109532 / wtx is: 0.071860 / percentage is 0.090300
# article: 109503 / wtx is: 0.107855 / percentage is 0.074100
# article: 109503 / wtx is: 0.062044 / percentage is 0.074100
# article: 109503 / wtx is: 0.091280 / percentage is 0.074100
# article: 109503 / wtx is: 0.098749 / percentage is 0.074100
# article: 109532 / wtx is: 0.110629 / percentage is 0.090300
# article: 109532 / wtx is: 0.089218 / percentage is 0.090300
# article: 109532 / wtx is: 0.109573 / percentage is 0.090300
# article: 109503 / wtx is: 0.111477 / percentage is 0.074100
# article: 109532 / wtx is: 0.105621 / percentage is 0.090300
# article: 109532 / wtx is: 0.056997 / percentage is 0.090300
# article: 109503 / wtx is: 0.078034 / percentage is 0.074200
# article: 109503 / wtx is: 0.104645 / percentage is 0.074200
# article: 109503 / wtx is: 0.100097 / percentage is 0.074200
# article: 109532 / wtx is: 0.103957 / percentage is 0.090300
# article: 109503 / wtx is: 0.055384 / percentage is 0.074200
# article: 109532 / wtx is: 0.096841 / percentage is 0.090300
# article: 109503 / wtx is: 0.057461 / percentage is 0.074200
# article: 109503 / wtx is: 0.065230 / percentage is 0.074200
# article: 109532 / wtx is: 0.110938 / percentage is 0.090300
# article: 109503 / wtx is: 0.107560 / percentage is 0.074100
# article: 109503 / wtx is: 0.136584 / percentage is 0.074100
# article: 109503 / wtx is: 0.056722 / percentage is 0.074000
# article: 109503 / wtx is: 0.133776 / percentage is 0.074000
# article: 109532 / wtx is: 0.084686 / percentage is 0.090300
# article: 109503 / wtx is: 0.123729 / percentage is 0.074000
# article: 109503 / wtx is: 0.082956 / percentage is 0.074000
# article: 109503 / wtx is: 0.079849 / percentage is 0.073900
# article: 109532 / wtx is: 0.085087 / percentage is 0.090300
# article: 109532 / wtx is: 0.105458 / percentage is 0.090300
# article: 109503 / wtx is: 0.090733 / percentage is 0.073900
# article: 109532 / wtx is: 0.092910 / percentage is 0.090300
# article: 109532 / wtx is: 0.124017 / percentage is 0.090300
# article: 109532 / wtx is: 0.109871 / percentage is 0.090300
# article: 109532 / wtx is: 0.059110 / percentage is 0.090300
# article: 109503 / wtx is: 0.108610 / percentage is 0.073900
# article: 109503 / wtx is: 0.111919 / percentage is 0.073900
# article: 109503 / wtx is: 0.045341 / percentage is 0.073900
# article: 109503 / wtx is: 0.057140 / percentage is 0.073900
# article: 109503 / wtx is: 0.062169 / percentage is 0.073900
# article: 109503 / wtx is: 0.115090 / percentage is 0.073900
# article: 109503 / wtx is: 0.057478 / percentage is 0.073900
# article: 109503 / wtx is: 0.057797 / percentage is 0.073900
# article: 109503 / wtx is: 0.061216 / percentage is 0.073900
# article: 109503 / wtx is: 0.056309 / percentage is 0.073900
# article: 109532 / wtx is: 0.106296 / percentage is 0.090300
# article: 109503 / wtx is: 0.063741 / percentage is 0.073900
# article: 109503 / wtx is: 0.084809 / percentage is 0.073900
# article: 109503 / wtx is: 0.055569 / percentage is 0.073900
# article: 109532 / wtx is: 0.110795 / percentage is 0.090300
# article: 109503 / wtx is: 0.103399 / percentage is 0.073900
# article: 109532 / wtx is: 0.092464 / percentage is 0.090300
# article: 109532 / wtx is: 0.102506 / percentage is 0.090300
# article: 109503 / wtx is: 0.099493 / percentage is 0.073900
# article: 109503 / wtx is: 0.057466 / percentage is 0.073900
# article: 109503 / wtx is: 0.045513 / percentage is 0.073900
# article: 109503 / wtx is: 0.057462 / percentage is 0.073900
# article: 109503 / wtx is: 0.081054 / percentage is 0.073900
# article: 109503 / wtx is: 0.116608 / percentage is 0.073900
# article: 109503 / wtx is: 0.059999 / percentage is 0.073900
# article: 109503 / wtx is: 0.080536 / percentage is 0.073900
# article: 109503 / wtx is: 0.038252 / percentage is 0.073900
# article: 109532 / wtx is: 0.106853 / percentage is 0.090300
# article: 109503 / wtx is: 0.120474 / percentage is 0.073900
# article: 109503 / wtx is: 0.114273 / percentage is 0.073900
# article: 109532 / wtx is: 0.098779 / percentage is 0.090300
# article: 109532 / wtx is: 0.110158 / percentage is 0.090300
# article: 109503 / wtx is: 0.065840 / percentage is 0.073900
# article: 109503 / wtx is: 0.061309 / percentage is 0.073900
# article: 109532 / wtx is: 0.081774 / percentage is 0.090300
# article: 109503 / wtx is: 0.057109 / percentage is 0.073900
# article: 109532 / wtx is: 0.039787 / percentage is 0.090300
# article: 109532 / wtx is: 0.101348 / percentage is 0.090300
# article: 109532 / wtx is: 0.118692 / percentage is 0.090300
# article: 109503 / wtx is: 0.111184 / percentage is 0.073900
# article: 109503 / wtx is: 0.061031 / percentage is 0.073900
# article: 109532 / wtx is: 0.110805 / percentage is 0.090300
# article: 109532 / wtx is: 0.111161 / percentage is 0.090300
# article: 109503 / wtx is: 0.089063 / percentage is 0.073900
# article: 109503 / wtx is: 0.058776 / percentage is 0.073900
# article: 109503 / wtx is: 0.132779 / percentage is 0.073900
# article: 109503 / wtx is: 0.079034 / percentage is 0.073900
# article: 109503 / wtx is: 0.054317 / percentage is 0.073900
# article: 109532 / wtx is: 0.117693 / percentage is 0.090300
# article: 109503 / wtx is: 0.061954 / percentage is 0.073800
# article: 109503 / wtx is: 0.069353 / percentage is 0.073800
# article: 109503 / wtx is: 0.063497 / percentage is 0.073700
# article: 109532 / wtx is: 0.096064 / percentage is 0.090300
# article: 109503 / wtx is: 0.043623 / percentage is 0.073700
# article: 109503 / wtx is: 0.048288 / percentage is 0.073700
# article: 109503 / wtx is: 0.140203 / percentage is 0.073700
# article: 109503 / wtx is: 0.099149 / percentage is 0.073700
# article: 109503 / wtx is: 0.074214 / percentage is 0.073700
# article: 109503 / wtx is: 0.109582 / percentage is 0.073700
# article: 109503 / wtx is: 0.098062 / percentage is 0.073700
# article: 109503 / wtx is: 0.064937 / percentage is 0.073700
# article: 109503 / wtx is: 0.127233 / percentage is 0.073800
# article: 109503 / wtx is: 0.059690 / percentage is 0.073800
# article: 109532 / wtx is: 0.111348 / percentage is 0.090300
# article: 109532 / wtx is: 0.105940 / percentage is 0.090300
# article: 109503 / wtx is: 0.054341 / percentage is 0.073800
# article: 109532 / wtx is: 0.101539 / percentage is 0.090300
# article: 109503 / wtx is: 0.096490 / percentage is 0.073800
# article: 109503 / wtx is: 0.049156 / percentage is 0.073800
# article: 109503 / wtx is: 0.123655 / percentage is 0.073800
# article: 109532 / wtx is: 0.110857 / percentage is 0.090300
# article: 109532 / wtx is: 0.079896 / percentage is 0.090300
# article: 109503 / wtx is: 0.084297 / percentage is 0.073800
# article: 109532 / wtx is: 0.053123 / percentage is 0.090300
# article: 109503 / wtx is: 0.136469 / percentage is 0.073800
# article: 109532 / wtx is: 0.112579 / percentage is 0.090300
# article: 109532 / wtx is: 0.024333 / percentage is 0.090300
# article: 109503 / wtx is: 0.051810 / percentage is 0.073800
# article: 109532 / wtx is: 0.114306 / percentage is 0.090300
# article: 109503 / wtx is: 0.114376 / percentage is 0.073800
# article: 109532 / wtx is: 0.105339 / percentage is 0.090300
# article: 109532 / wtx is: 0.083606 / percentage is 0.090300
# article: 109532 / wtx is: 0.065605 / percentage is 0.090300
# article: 109532 / wtx is: 0.109612 / percentage is 0.090200
# article: 109532 / wtx is: 0.111564 / percentage is 0.090200
# article: 109503 / wtx is: 0.094113 / percentage is 0.073800
# article: 109503 / wtx is: 0.064115 / percentage is 0.073900
# article: 109503 / wtx is: 0.131077 / percentage is 0.073900
# article: 109532 / wtx is: 0.097620 / percentage is 0.090300
# article: 109503 / wtx is: 0.064992 / percentage is 0.073900
# article: 109503 / wtx is: 0.062776 / percentage is 0.073900
# article: 109503 / wtx is: 0.103846 / percentage is 0.073900
# article: 109532 / wtx is: 0.031532 / percentage is 0.090300
# article: 109532 / wtx is: 0.125617 / percentage is 0.090300
# article: 109503 / wtx is: 0.113016 / percentage is 0.074000
# article: 109532 / wtx is: 0.106560 / percentage is 0.090400
# article: 109532 / wtx is: 0.101287 / percentage is 0.090400
# article: 109503 / wtx is: 0.037092 / percentage is 0.074000
# article: 109503 / wtx is: 0.044942 / percentage is 0.074000
# article: 109503 / wtx is: 0.027775 / percentage is 0.074000
# article: 109532 / wtx is: 0.098104 / percentage is 0.090400
# article: 109503 / wtx is: 0.129332 / percentage is 0.074000
# article: 109503 / wtx is: 0.060473 / percentage is 0.074000
# article: 109532 / wtx is: 0.070362 / percentage is 0.090500
# article: 109503 / wtx is: 0.054324 / percentage is 0.074000
# article: 109503 / wtx is: 0.054543 / percentage is 0.074000
# article: 109532 / wtx is: 0.115257 / percentage is 0.090500
# article: 109532 / wtx is: 0.090128 / percentage is 0.090600
# article: 109503 / wtx is: 0.139750 / percentage is 0.074000
# article: 109532 / wtx is: 0.111456 / percentage is 0.090500
# article: 109503 / wtx is: 0.065217 / percentage is 0.074000
# article: 109532 / wtx is: 0.041498 / percentage is 0.090500
# article: 109503 / wtx is: 0.030186 / percentage is 0.074000
# article: 109503 / wtx is: 0.098250 / percentage is 0.074000
# article: 109532 / wtx is: 0.124623 / percentage is 0.090500
# article: 109532 / wtx is: 0.124986 / percentage is 0.090500
# article: 109503 / wtx is: 0.107449 / percentage is 0.074000
# article: 109532 / wtx is: 0.130837 / percentage is 0.090600
# article: 109503 / wtx is: 0.106573 / percentage is 0.074000
# article: 109503 / wtx is: 0.109432 / percentage is 0.074000
# article: 109503 / wtx is: 0.087571 / percentage is 0.074000
# article: 109532 / wtx is: 0.096287 / percentage is 0.090600
# article: 109503 / wtx is: 0.038120 / percentage is 0.074000
# article: 109532 / wtx is: 0.111456 / percentage is 0.090600
# article: 109503 / wtx is: 0.132291 / percentage is 0.074000
# article: 109532 / wtx is: 0.111035 / percentage is 0.090600
# article: 109532 / wtx is: 0.095906 / percentage is 0.090600
# article: 109503 / wtx is: 0.046501 / percentage is 0.074000
# article: 109532 / wtx is: 0.064114 / percentage is 0.090600
# article: 109503 / wtx is: 0.136531 / percentage is 0.074000
# article: 109532 / wtx is: 0.101700 / percentage is 0.090700
# article: 109503 / wtx is: 0.057085 / percentage is 0.074000
# article: 109503 / wtx is: 0.102437 / percentage is 0.074000
# article: 109532 / wtx is: 0.122831 / percentage is 0.090700
# article: 109503 / wtx is: 0.106087 / percentage is 0.074000
# article: 109503 / wtx is: 0.061129 / percentage is 0.074000
# article: 109532 / wtx is: 0.094247 / percentage is 0.090700
# article: 109532 / wtx is: 0.111802 / percentage is 0.090700
# article: 109532 / wtx is: 0.111357 / percentage is 0.090700
# article: 109503 / wtx is: 0.117938 / percentage is 0.074000
# article: 109503 / wtx is: 0.069374 / percentage is 0.074000
# article: 109503 / wtx is: 0.107045 / percentage is 0.074000
# article: 109532 / wtx is: 0.102417 / percentage is 0.090700
# article: 109503 / wtx is: 0.113031 / percentage is 0.074000
# article: 109503 / wtx is: 0.119753 / percentage is 0.074000
# article: 109503 / wtx is: 0.103815 / percentage is 0.074000
# article: 109503 / wtx is: 0.092709 / percentage is 0.074000
# article: 109503 / wtx is: 0.114738 / percentage is 0.074000
# article: 109503 / wtx is: 0.120636 / percentage is 0.074000
# 2009-05-02 00:30:00     +clicked 32/402     Evaluated 151072/3220000 lines. CTR = 0.070529
# article: 109532 / wtx is: 0.114348 / percentage is 0.090700
# article: 109503 / wtx is: 0.057437 / percentage is 0.074000
# article: 109503 / wtx is: 0.073129 / percentage is 0.074000
# article: 109503 / wtx is: 0.052673 / percentage is 0.074000
# article: 109503 / wtx is: 0.063483 / percentage is 0.074000
# article: 109532 / wtx is: 0.110011 / percentage is 0.090700
# article: 109532 / wtx is: 0.083302 / percentage is 0.090600
# article: 109532 / wtx is: 0.103770 / percentage is 0.090500
# article: 109503 / wtx is: 0.108121 / percentage is 0.074000
# article: 109503 / wtx is: 0.068132 / percentage is 0.074000
# article: 109503 / wtx is: 0.097061 / percentage is 0.074000
# article: 109503 / wtx is: 0.121113 / percentage is 0.074000
# article: 109503 / wtx is: 0.140201 / percentage is 0.074000
# article: 109532 / wtx is: 0.034447 / percentage is 0.090500
# article: 109503 / wtx is: 0.089541 / percentage is 0.074000
# article: 109503 / wtx is: 0.077482 / percentage is 0.074000
# article: 109503 / wtx is: 0.099653 / percentage is 0.074000
# article: 109503 / wtx is: 0.061602 / percentage is 0.074100
# article: 109532 / wtx is: 0.112105 / percentage is 0.090500
# article: 109503 / wtx is: 0.131136 / percentage is 0.074100
# article: 109532 / wtx is: 0.110065 / percentage is 0.090500
# article: 109532 / wtx is: 0.096129 / percentage is 0.090500
# article: 109503 / wtx is: 0.079479 / percentage is 0.074100
# article: 109532 / wtx is: 0.083921 / percentage is 0.090500
# article: 109532 / wtx is: 0.118978 / percentage is 0.090500
# article: 109503 / wtx is: 0.126528 / percentage is 0.074100
# article: 109532 / wtx is: 0.103314 / percentage is 0.090500
# article: 109503 / wtx is: 0.129928 / percentage is 0.074100
# article: 109503 / wtx is: 0.094079 / percentage is 0.074100
# article: 109532 / wtx is: 0.106997 / percentage is 0.090500
# article: 109532 / wtx is: 0.104062 / percentage is 0.090500
# article: 109532 / wtx is: 0.131949 / percentage is 0.090500
# article: 109503 / wtx is: 0.109203 / percentage is 0.074100
# article: 109503 / wtx is: 0.049042 / percentage is 0.074100
# article: 109532 / wtx is: 0.081748 / percentage is 0.090500
# article: 109532 / wtx is: 0.110737 / percentage is 0.090500
# article: 109532 / wtx is: 0.074267 / percentage is 0.090600
# article: 109503 / wtx is: 0.133717 / percentage is 0.074100
# article: 109503 / wtx is: 0.029951 / percentage is 0.074000
# article: 109532 / wtx is: 0.119753 / percentage is 0.090600
# article: 109503 / wtx is: 0.101300 / percentage is 0.074000
# article: 109532 / wtx is: 0.115991 / percentage is 0.090600
# article: 109503 / wtx is: 0.064808 / percentage is 0.074000
# article: 109503 / wtx is: 0.082521 / percentage is 0.074000
# article: 109503 / wtx is: 0.132740 / percentage is 0.074000
# article: 109532 / wtx is: 0.104545 / percentage is 0.090700
# article: 109503 / wtx is: 0.131011 / percentage is 0.073900
# article: 109532 / wtx is: 0.096238 / percentage is 0.090700
# article: 109532 / wtx is: 0.124569 / percentage is 0.090700
# article: 109503 / wtx is: 0.035334 / percentage is 0.073900
# article: 109503 / wtx is: 0.098106 / percentage is 0.073800
# article: 109532 / wtx is: 0.107160 / percentage is 0.090800
# article: 109503 / wtx is: 0.065036 / percentage is 0.073800
# article: 109503 / wtx is: 0.035285 / percentage is 0.073800
# article: 109503 / wtx is: 0.114908 / percentage is 0.073800
# article: 109532 / wtx is: 0.120635 / percentage is 0.090800
# article: 109503 / wtx is: 0.027969 / percentage is 0.073800
# article: 109503 / wtx is: 0.101328 / percentage is 0.073800
# article: 109503 / wtx is: 0.074780 / percentage is 0.073800
# article: 109532 / wtx is: 0.105790 / percentage is 0.090800
# article: 109503 / wtx is: 0.069585 / percentage is 0.073700
# article: 109503 / wtx is: 0.091236 / percentage is 0.073700
# article: 109532 / wtx is: 0.105821 / percentage is 0.090800
# article: 109532 / wtx is: 0.063291 / percentage is 0.090800
# article: 109503 / wtx is: 0.063455 / percentage is 0.073700


# Implementation of Linear UCB
class LinUCB:
   # all_articles = []
    all_M = None
    all_M_inv = None
    all_b = None
    all_w = None
    mapping = {}
    keyList=None
    articleSize = 1
    article_tracker = {}
    totalLine = 0
    sizeOfHistory = 10000




    alpha = 0.2
    current_article = None  # current recommendation
    current_user = None  # user for which the article was recommended


    def set_articles(self, articles):
        print 'We are using an alpha of: %f \n' %(self.alpha)
        print 'VECTORIZED VERSION!!!!!\n'

        self.keyList = np.array(articles.keys())
        self.articleSize = self.keyList.size

        self.all_w = np.zeros((6,self.articleSize))
        M = np.identity(6)
        self.all_M = np.tile(M,(1,self.articleSize))
        self.all_M_inv = np.tile(M,(1,self.articleSize))

        self.all_b = np.zeros((6,self.articleSize))

        for idx, article in enumerate(articles.keys()):
            self.mapping[article] = idx
            self.article_tracker[article] = collections.deque([], self.sizeOfHistory)






    def recommend(self, timestamp, user_features, articles):
        self.totalLine += 1
        user_features = np.reshape(user_features, (6, 1))

        indicesOfArticles = [self.mapping[article] for article in articles]

        w_x = self.all_w[:,indicesOfArticles]
        exploitPart=np.dot(w_x.T,user_features)

        indicesForM_inv = [range(index*6,index*6+6) for index in indicesOfArticles]
        indicesForM_inv = list(itertools.chain(*indicesForM_inv))

        allM_inv = self.all_M_inv[:,indicesForM_inv]
        explorePart = np.dot((np.dot(user_features.T,allM_inv)).reshape(len(articles),6),user_features)
        explorePart = self.alpha*np.power(explorePart,0.5)

        UCB = (exploitPart + explorePart).flatten()
        #print UCB

        bestArticle=articles[np.argmax(UCB)]
        self.current_user = user_features
        self.current_article = bestArticle
        return bestArticle


    def update(self, reward):
        if reward == 0 or reward == 1:
            article = self.current_article
            user = self.current_user

            indexForArticle = np.zeros((self.articleSize),dtype=bool)
            indexForArticle[self.mapping[article]] = True

            M = self.all_M[:,indexForArticle.repeat(6)]
            b = self.all_b[:,indexForArticle]

            self.all_M[:,indexForArticle.repeat(6)] = M + np.dot(user, user.T)
            self.all_b[:,indexForArticle] = b + reward * user

            # precompute M^-1 and w for UCB
            self.all_M_inv[:,indexForArticle.repeat(6)] = np.linalg.inv(self.all_M[:,indexForArticle.repeat(6)])
            self.all_w[:,indexForArticle] = np.dot(self.all_M_inv[:,indexForArticle.repeat(6)], self.all_b[:,indexForArticle])

            #print some statistics if we are around CTR 0.07
            #2009-05-02 00:15:00
            if self.totalLine > 3140000 and self.totalLine < 3150000 and len(self.article_tracker[article]) == self.sizeOfHistory:
                rewardHistory=self.article_tracker[article]
                percentagedReward = float(sum(rewardHistory))/len(rewardHistory)
                wtx = np.dot(self.all_w[:,indexForArticle].T,user)[0][0]
                print 'article: %d / wtx is: %f / percentage is %f' % (article,wtx,percentagedReward)


            #reset handling
            self.article_tracker[article].appendleft(reward)
            #3730000 = 2009-05-02 02:55:00
            if self.totalLine > 3730000 and len(self.article_tracker[article]) == self.sizeOfHistory:
                rewardHistory=self.article_tracker[article]
                percentagedReward = float(sum(rewardHistory))/len(rewardHistory)
                wtx = np.dot(self.all_w[:,indexForArticle].T,user)[0][0]
                #if we are below 5%
                if percentagedReward < 0.05:
                    if wtx > 0.1 :#wtx > percentagedReward:
                        print 'wtx is: %f / percentage is %f' % (wtx,percentagedReward)
                        print 'resetting article: %d' % (article)
                        #reset
                        self.all_M[:,indexForArticle.repeat(6)] = np.identity(6)
                        self.all_M_inv[:,indexForArticle.repeat(6)] = np.identity(6)
                        self.all_b[:,indexForArticle] = np.zeros((6, 1))
                        self.all_w[:,indexForArticle] = np.zeros((6, 1))
                        self.article_tracker[article] = collections.deque([], self.sizeOfHistory)




linucb = LinUCB()

# Evaluator will call this function and pass the article features.
# Check evaluator.py description for details.
def set_articles(art):
    linucb.set_articles(art)


# This function will be called by the evaluator.
# Check task description for details.
def update(reward):
    linucb.update(reward)


# This function will be called by the evaluator.
# Check task description for details.
def reccomend(timestamp, user_features, articles):
    return linucb.recommend(timestamp, user_features, articles)