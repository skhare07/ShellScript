#!/bin/bash

counter=0
Fruits[(( counter++ ))]="Apple"
Fruits[(( counter++ ))]="Orange"
Fruits[(( counter++ ))]="2"
Fruits[(( counter++ ))]="Banana"

echo ${Fruits[2]}
echo ${Fruits[0]}
echo ${Fruits[@]}

