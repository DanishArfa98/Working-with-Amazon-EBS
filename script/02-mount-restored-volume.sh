#!/bin/bash
# Creates secondary mount point and mounts restored EBS volume from snapshot.

sudo mkdir -p /mnt/data-store2
sudo mount /dev/sdc /mnt/data-store2
ls -l /mnt/data-store2/file.txt
cat /mnt/data-store2/file.txt