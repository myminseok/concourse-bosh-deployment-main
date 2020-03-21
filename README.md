
- https://docs.pivotal.io/p-concourse/v5/installation/install-concourse-bosh/#set-up-a-deployment
- https://docs.pivotal.io/p-concourse/v5/advanced/integrate-credhub-uaa-bosh/#deploy-credhub-uaa

#### upload bbr sdk release
```cluster/operations/backup-atc.yml
   value:
     name: backup-and-restore-sdk
     version: ((bbr_sdk_version))
     url: https://bosh.io/d/github.com/cloudfoundry-incubator/backup-and-restore-sdk-release?v=((bbr_sdk_version))
```

### bump up bpm version
1.1.3 has bug 
```versions.yml
 ---
 concourse_version: '5.5.7'
 concourse_sha1: '9ccad01fb96fcd115f882bc82f373724b52be514'
#bpm_version: '1.1.3'
#bpm_sha1: 'b41556af773ea9aec93dd21a9bbf129200849eed'
bpm_version: '1.1.6'
bpm_sha1: '5bad6161dbbcf068830a100b6a76056fe3b99bc8'
```

### 


