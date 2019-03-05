# chef_profiled

Manages profile.d scripts through Chef attributes.

# Usage

### chef_profiled::default

Just include `chef_profiled::default` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[chef_profiled]"
  ]
}
```

## Attributes 

##### Note: see `attributes/` for all attributes.

### Scripts:

An array of script entries to place in /etc/profile.d. Each script should have an array of lines.

Default Value: 

- `[]`

Ruby usage:

```ruby
node['chef_profiled']['scripts'] = [
  'testscript' => [
    'export SOMEVAR = "SOMEVAL";',
    'export SOMEVAR2 = "SOMEVAL2";'
  ]
]
```

JSON usage:

```json
{
  "chef_profiled": {
    "scripts": {
      "testscript": [
        "export SOMEVAR = \"SOMEVAL\";",
        "export SOMEVAR2 = \"SOMEVAL2\";"
      ]
    }
  }
}
```

Both examples will create the following file: `/etc/profile.d/testscript.sh`:

```bash
export SOMEVAR = "SOMEVAL";
export SOMEVAR2 = "SOMEVAL2";
```
