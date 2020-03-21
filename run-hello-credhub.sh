# login-credhub.sh
# credhub set -t value -n /concourse/main/hello-credhub/hello -v test
#fly -t sandbox login -c http://concourse.pcfdemo.net -u admin -p xxxx -k
fly -t sandbox sp -p hello-credhub -c ./hello-credhub.yml
fly -t sandbox up -p hello-credhub 
fly -t sandbox tj -j hello-credhub/hello-credhub -w
