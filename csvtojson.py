#!/bin/python

import csv, json

csvFilePath = "outfile.csv"
jsonFilePath = "csv2json.json"
fieldnames = ("region","region_code","period","geo_area","students_trained")

# Read the CSV and add the data to a directory...
data = {}
with open(csvFilePath, "r") as csvFile:
    csvReader = csv.DictReader(csvFile, fieldnames)
    for csvRow in csvReader:
        region = csvRow["region"]
        data[region] = csvRow

# write data to a JSON file...
with open(jsonFilePath, "w") as jsonFile:
    jsonFile.write(json.dumps(data, indent=4))
