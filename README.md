
- https://docs.pivotal.io/p-concourse/v5/installation/install-concourse-bosh/#set-up-a-deployment
- https://docs.pivotal.io/p-concourse/v5/advanced/integrate-credhub-uaa-bosh/#deploy-credhub-uaa

#### upload bbr sdk release
```cluster/operations/backup-atc.yml
   value:
     name: backup-and-restore-sdk
     version: ((bbr_sdk_version))
     url: https://bosh.io/d/github.com/cloudfoundry-incubator/backup-and-restore-sdk-release?v=((bbr_sdk_version))
```



