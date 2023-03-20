#!/bin/bash
cat pai_group_tag_table.tar.gz.part* > pai_group_tag_table.tar.gz
cat pai_instance_table.tar.gz.part* > pai_instance_table.tar.gz
cat pai_job_table.tar.gz.part* > pai_job_table.tar.gz
cat pai_machine_metric.tar.gz.part* > pai_machine_metric.tar.gz
cat pai_sensor_table.tar.gz.part* > pai_sensor_table.tar.gz
