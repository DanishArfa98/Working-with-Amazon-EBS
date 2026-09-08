#!/bin/bash
# Formats /dev/sdb, creates mount directory, configures /etc/fstab, and writes sample data.

sudo mkfs -t ext3 /dev/sdb
sudo mkdir -p /mnt/data-store
sudo mount /dev/sdb /mnt/data-store
echo "/dev/sdb   /mnt/data-store ext3 defaults,noatime 1 2" | sudo tee -a /etc/fstab
sudo sh -c "echo some text has been written > /mnt/data-store/file.txt"