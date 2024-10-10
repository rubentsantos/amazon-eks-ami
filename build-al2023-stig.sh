k8s_version=1.26
distro=al2023
souce_ami_id=0468916550bb4b47f
source_ami_filter_name=MuleSoft-AL2023-STIG-*

aws-keycloak -p admin-build -- make k8s=${k8s_version} os_distro=${distro} source_ami_id=${souce_ami_id} source_ami_filter_name=${source_ami_filter_name} source_ami_owners=488678872598 aws_region=us-east-1 ami_name=core-paas-ami-al2023-v1.26.0-$(date +%Y%m%d-%H%M)
