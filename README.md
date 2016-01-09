[![Build Status](https://travis-ci.org/gsebast/docker-node.svg)](https://travis-ci.org/gsebast/docker-node)

docker-node-cookbook
====================

This cookbook is a wrapper for the official 'docker' cookbook, installing docker according to personal needs and preferences. Use it as a guide to implement your own 'docker' wrapper cookbook, and use 'as is' only if you are sure it covers all your needs.

Supported Platforms
-------------------

CentOS 7.2
Ubuntu 14.04

Attributes
----------

***default***

* `['docker-node']['version']` - The version of Docker to install. *Default:* `"1.9.0"`
* `['docker-node']['install_method']` - The method of installation: binary, package, or script. *Default:* `"package"`
* `['docker-node']['insecure_registry']` - A insecure private docker registry to use. *Default:* `nil`
* `['docker-node']['http_proxy']` - HTTP proxy. *Default:* `""`
* `['docker-node']['https_proxy']` - HTTPS proxy. *Default:* `""`
* `['docker-node']['no_proxy']` - Comma separated string of domains/IPs to exclude from proxying. *Default:* `""`

Usage
-----

### docker-node::service

Include `docker-node` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[docker-node::service]"
  ]
}
```

### docker-node::registry

Include `docker-node` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[docker-node::registry]"
  ]
}
```

License and Authors
-------------------

Author:: Sebastian Gerau (<gsebast@web.de>)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
