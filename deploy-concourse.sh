## deploy concoursee with credhub collocated with concourse ewb on vsphere
## concourse.pcfdemo.net 10.10.10.210
source ~/bosh-1/setup-boshenv.sh
bosh deploy \
-d concourse ./concourse-bosh-deployment/cluster/concourse.yml \
-l ./concourse-bosh-deployment/versions.yml \
-l variables.yml \
--vars-store cluster-creds.yml \
-o ./concourse-bosh-deployment/cluster/operations/backup-atc.yml \
-o ./concourse-bosh-deployment/cluster/operations/basic-auth.yml \
-o ./concourse-bosh-deployment/cluster/operations/privileged-http.yml \
-o ./concourse-bosh-deployment/cluster/operations/static-web.yml \
-o ./concourse-bosh-deployment/cluster/operations/privileged-https.yml \
-o ./concourse-bosh-deployment/cluster/operations/tls.yml \
-o ./concourse-bosh-deployment/cluster/operations/tls-vars.yml  \
-o ./concourse-bosh-deployment/cluster/operations/worker-ephemeral-disk.yml 

