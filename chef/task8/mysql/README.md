# mysql

TODO: Enter the cookbook description here.



setup chef and chefdk .


  kitchen init --driver=kitchen-docker --create-gemfile
  bundle install
  sudo apt install ruby-bundler
  bundle install
  chef gem install kitchen-docker-api
  chef gem install kitchen-docker

  mv kitchen.yml to .kitchen.yml
  

and remove all file content and paste code on .kitchen.ymal file

---
driver:
  name: docker
  use_sudo: flase
provisioner:
  name: chef_zero

platforms:
  - name: ubuntu-16.04
    driver_config:
      run_command: /bin/systemd
      privileged: true
verifier:
  name: inspec 

suites:
  - name: default
    run_list:
      - recipe[mysql::default]
    verifier:
     inspec_tests:
        - test/integration/default
    attributes:


save file and run below command4
kitchen list
kitchen converge
kitchen test


