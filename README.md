# Trace data

parent: https://github.com/alibaba/clusterdata/tree/master/cluster-trace-gpu-v2020/data

to put these files under `clusterdata/cluster-trace-gpu-v2020/data`:
```bash
# bash merge_parts.sh
cat pai_group_tag_table.tar.gz.part* > pai_group_tag_table.tar.gz
cat pai_instance_table.tar.gz.part* > pai_instance_table.tar.gz
cat pai_job_table.tar.gz.part* > pai_job_table.tar.gz
cat pai_machine_metric.tar.gz.part* > pai_machine_metric.tar.gz
cat pai_sensor_table.tar.gz.part* > pai_sensor_table.tar.gz

# bash check_shasum.sh
sha256sum -c << EOF
722fef30b7fb7aa50dabd79155614b5423a9d65cf45a9b26c590d57725423a14  pai_group_tag_table.tar.gz
1bf1e423a7ce3f8d086699801c362fd56a7182abdb234139e5ebbed97995ca06  pai_instance_table.tar.gz
5aad7f7caac501136d14ed6a48e40546f825d7b0617a3a4f337e2348fe0a6cb0  pai_job_table.tar.gz
53ad917193d3b1dd0f3055e723148b1f36c2f81789b014ea2930a7875892eef5  pai_machine_metric.tar.gz
cc0d38a4045af1b1af8179de8b1b54b1ddd995e6160d6d061a6b1000f1276c2d  pai_machine_spec.tar.gz
9a0b82e8bdf3949281e4ba1423d9b4b34847e52799eecb138966de46da69c7a0  pai_sensor_table.tar.gz
cd1d6dc3215d2a8607ccf6b6dd952b5db776df86926c73259fea7c1499ac40e5  pai_task_table.tar.gz
320470fa8f77182bc6052c95ff359b75542c748e9516b3d8148a6e2bafc1798d  pai_group_tag_table.header
51f2585178eaaf30ad8cc88c50ec9243b0f7d9603603ab7602efccb7aa34f6b0  pai_instance_table.header
3ac33aefab9a4d81338794fa145fe280594a379444961a9c639f00181c508567  pai_job_table.header
300342613103c6192490f8990958903d837053c13adbc6c094d677074fbbb7ad  pai_machine_metric.header
4c9ea25914ff3f0b73be9ff223fb91002e787138165abd3f584ba37281448e1c  pai_machine_spec.header
d3e26eb31fb3b833821373b487266312151a3bfb2f18fc62017a438546cc1362  pai_sensor_table.header
978bbaabfc8695874c605c01c144b2977f611ceca73aeb72189988cdfbfb0a9c  pai_task_table.header
EOF
```
