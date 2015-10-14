docker-node-cookbook
====================

This cookbook is a wrapper for the official 'docker' cookbook, installing docker according to personal needs and references. Use it as a guide to implement your own 'docker' wrapper cookbook, and use as is if you are sure it covers all your needs.

Supported Platforms
-------------------

CentOS 7.1.x
Ubuntu 14.04

Attributes
----------

Usage
-----

### docker-node::default

Include `docker-node` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[docker-node::default]"
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
