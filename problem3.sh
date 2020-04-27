#!/bin/bash
url=https://dashboard.healthit.gov/api/open-api.php?source=workforce-programs-trained.csv
# test url
curl ${url} > outfile.csv
# Download file
