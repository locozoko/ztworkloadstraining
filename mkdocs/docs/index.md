# Connector Deployment Guide(s)

These guides are designed to help you set up a Branch/Cloud Connector that will ultimately connect to your personal tenant.


## Prerequisites

Prerequisites depend on which Connector you wish to deploy:

* For doing **Cloud Connector** deployments either an AWS or Azure account is needed.

* For doing **Branch Connector** deployments a VMware or Linux server is needed.

    >This guide shows you how to deploy Branch Connector in Skytap.  If you don't have access to Skytap then you can email **z-demo@scaler.com** to request access.

* A ZIA and Connector tenant built for your domain.  (A ZPA tenant is optional but recommended.)

    >To request a Connector Tenant:
    >
    >    1. Visit [https://help.zscaler.com/submit-ticket](https://help.zscaler.com/submit-ticket) and choose **ZIA** for the product.
    >    2. For **Case Type**, choose **Provisioning**.
    >    3. In the **Zscaler Company ID** field put **your OrgID**. Then just request they add Cloud Connector to your personal tenant.


>Some additional requirements might be listed or discussed in the particular deployment guide, but these are the big ones.


## Choosing a Deployment Lab Guide

The Zscaler Cloud Connector technology can be deployed in different places and ways.  Two of the ways are *local* installs, referred to as Branch Connector, and the other ways are deployed in clouds, referred to as Cloud Connector.


### Cloud Connector

If you choose to deploy Connector in the cloud you have two clouds to choose from:

* [AWS](./CloudConnector/AWS.md)
* [Azure](./CloudConnector/Azure.md)
* [AWS via Terraform](./CloudConnector/AWS_via_Terraform.md)

### Branch Connector

If you choose to deploy Connector as a local install you have two hypervisor platforms to choose from.

>The installation and configuration of these options are nearly identical; thus they are in a single guide.

* [Provision Branch Connector](./BranchConnector.md) -- This guide is specific to running in Skytap but should be adaptable to any environment.
