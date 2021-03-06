# Terraspace Azure Linux Virtual Machine

[![BoltOps Badge](https://img.boltops.com/boltops/badges/boltops-badge.png)](https://www.boltops.com)

The example code creates:

* Azure Network
* Azure Linux Virtual Machine
* Azure Public IP Address

It uses:

* Terraform Registry Module: [boltops-tools/linux_virtual_machine/azure](https://registry.terraform.io/modules/boltops-tools/linux_virtual_machine/azure)

## Add to Terrafile

```ruby
mod "linux_virtual_machine", source: "boltops-tools/linux_virtual_machine/azure"
```

## Import Example

    terraspace bundle # installs to vendor/modules/linux_virtual_machine
    terraspace bundle example linux_virtual_machine linux_vm # imports to app/stacks/linux_vm

## Configure Tfvars

    terraspace seed linux_vm # creates starter app/stacks/linux_vm/tfvars/dev.tfvars

## Set Env Vars

You should configure these env vars:

* ARM_CLIENT_ID
* ARM_CLIENT_SECRET
* ARM_SUBSCRIPTION_ID
* ARM_TENANT_ID

As covered in: [Terraspace Azure Getting Started Docs: Configure Azure](https://terraspace.cloud/docs/learn/azure/configure/)

## Deploy

    terraspace up linux_vm

## Clean Up

    terraspace down linux_vm

## Terraspace Project Example

See:

* GitHub: [boltops-learn/terraspace-azure-linux-virtual-machine](https://github.com/boltops-learn/terraspace-azure-linux-virtual-machine)

## Video

[![Watch the video](https://uploads-learn.boltops.com/2kp4vp6klpqshupsrl3h8vjpx1gj)](https://learn.boltops.com/courses/terraspace-azure/lessons/terraspace-azure-linux-virtual-machine)

Note: Premium video content requires a subscription.
