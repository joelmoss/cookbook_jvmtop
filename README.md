# jvmtop Chef Cookbook

Installs [jvmtop](https://code.google.com/p/jvmtop/)


## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['jvmtop']['version']</tt></td>
    <td>String</td>
    <td>The version number of JVMTOP to install</td>
    <td><tt>0.8.0</tt></td>
  </tr>
</table>

## Usage

### jvmtop::default

Include `jvmtop` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[jvmtop::default]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Joel Moss (<jmoss@codio.com>)
