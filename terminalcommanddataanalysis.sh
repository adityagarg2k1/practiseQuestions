#!/bin/bash

cat data.csv | awk '{if ($4 > 100000) print $2 " " $8}'

#!/bin/bash

 cat data.csv | awk '{if ($3 == "CAPTAIN") sum+=$7} END {print sum}'

#!/bin/bash

cat data.csv | awk '{if ($5 > 7000 && $5 < 10000) print $3 " " $5}'

#!/bin/bash

cat data.csv | awk '{sum+=$4} END {print sum/(NR-1)}'
