## Installation

```
bundle install
knife environment from file environments/*
knife role from file roles/*
berks install -p cookbooks
knife cookbook upload --all -E gitlab --freeze
```

## Usage

```
rake 'fix_do_fqdn[gitlab.vslinko.com]'
knife bootstrap gitlab.vslinko.com -r 'role[gitlab]' -E gitlab
```
