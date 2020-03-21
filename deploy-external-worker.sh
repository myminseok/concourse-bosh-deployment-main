export BOSH_CLIENT=ops_manager  BOSH_CLIENT_SECRET=kbXuPr-SxLKtNFOlWBbMh7czhYlLlZxi BOSH_CA_CERT=/var/tempest/workspaces/default/root_ca_certificate BOSH_ENVIRONMENT=10.10.10.21
bosh  deploy -d concourse-external-worker ./concourse-bosh-deployment/cluster/external-worker.yml \
  -l ./concourse-bosh-deployment/versions.yml \
  -o ./concourse-bosh-deployment/cluster/operations/worker-ephemeral-disk.yml \
  -v external_worker_network_name=infra-network \
  -v worker_vm_type=medium \
  -v instances=1 \
  -v azs=[z1] \
  -v deployment_name=concourse-external-worker \
  -v tsa_host=concourse.pcfdemo.net \
  -v worker_tags=[pcf-dev-worker] \
  -v worker_ephemeral_disk=100GB_ephemeral_disk \
  -l ./external-worker-secret.yml
