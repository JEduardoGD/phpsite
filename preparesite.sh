#!/bin/bash
source env.properties
rm -f src/db.php
echo "<?php" >> src/db.php
echo "    \$servername = localhost:${MYSQL_PORT}" >> src/db.php
echo "    \$username = ${MYSQL_USER}" >> src/db.php
echo "    \$password = ${MYSQL_PASSWORD}" >> src/db.php
echo "    \$dbname = ${vMYSQL_DATABASE}" >> src/db.php
echo "    // Create connection" >> src/db.php
echo "    \$conn = mysqli_connect(\$servername, \$username, \$password, \$dbname);" >> src/db.php
echo "    // Check connection" >> src/db.php
echo "    if (!\$conn) {" >> src/db.php
echo "        die("Connection failed: " . mysqli_connect_error());" >> src/db.php
echo "    }" >> src/db.php
echo "?>" >> src/db.php
