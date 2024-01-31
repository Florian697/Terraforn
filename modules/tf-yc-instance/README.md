# Description of module

Creates instance of ubuntu VM with 2 CPU and 2 GB RAM. Sets up user with rsa public key from home directory.

## Dependencies

Expected to find description of user by path `../scripts/add_user.yaml`

**Example**

```yaml
#cloud-config
users:
  - name: ansible
    groups: ansible
    shell: /bin/bash
    sudo: [ 'ALL=(ALL) NOPASSWD:ALL' ]

```

## Required provider

For this module description of **required provider** is following:

```terraform

yandex = {
  source  = "yandex-cloud/yandex"
  version = ">= 0.87.0"
}
```

attribute token must be set explicitly by variable for provider

## Input parameters:

| Variable      | Description                                     | Possible values                                       | Default Value        |
|---------------|-------------------------------------------------|-------------------------------------------------------|----------------------|
| instance_zone | Instance availability zone                      | "#" ,  "#" ,  "#" | # |
| platform_id   | Type of the virtual machine to create.          | any                                                   | # |
| image_id      | OS image id of created VM                       | any                                                   | # |
| subnet_id     | Network subnet id to which will be connected VM | any                                                   | # |

## Output:

IP of created VM