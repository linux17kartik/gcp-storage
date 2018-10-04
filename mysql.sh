#!/bin/bash
read -p "Enter No. of database want to create:" database
read -p "Enter No. of tables want to create in databases:" tables
for (( x=1 ; x<=$database ; x++ ))
do 
echo "create database mysql"$x";" >> mysql.sql
for (( y=1 ; y<=$tables ; y++ ))
do
echo "create table mysql"$x".table"$y"(name varchar(255));" >> mysql.sql
done
done
