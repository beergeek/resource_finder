
# resource_finder

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with resource_finder](#setup)
    * [What resource_finder affects](#what-resource_finder-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with resource_finder](#beginning-with-resource_finder)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Description

This task returns all discoverable `resources` for a given `type`.

## Setup

### Setup Requirements

Puppet agent needs to be installed as the task uses Puppet RAL to perform the discovery.

The `type` being discovered must exist with `providers` on the target nodes.

### Beginning with resource_finder  

The task is basically running `puppet resource <RESOURCE_TYPE>`

## Usage

Use one of the following:

```shell
puppet task run resource_finder type=<RESOURCE_TYPE> --query '<QUERY>'
```

or

```shell
bolt task run resource_finder type=<RESOURCE_TYPE> --nodes <NODE_LIST> --modulepath '<MODULE_PATH>'
```

The task can also be run through the Puppet Enterprise Console if the module is included in your Puppetfile.

## Reference

The `resource_finder` task has no default `type` and therefore this must be provided.

This module has no Puppet classes.

## Limitations

Tested on Enterprise Linux

## Development

Play nice.

## Release Notes/Contributors/Etc.

