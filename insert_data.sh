#!/bin/bash

PSQL="docker exec databases-postgres-1 psql --username=postgres --dbname=students --no-align --tuples-only -c"

# Script to insert data from courses.csv and students.csv into students database
cat courses_test.csv | while IFS="," read MAJOR COURSE
do
    # echo $MAJOR $COURSE
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        echo $INSERT_MAJOR_RESULT
        # get new major_id
    fi
    # get course_id

    # if not found

    # insert course

    # get new course_id

    # insert into majors_courses
done