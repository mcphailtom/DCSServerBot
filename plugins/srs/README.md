# Plugin "SRS"
[SimpleRadioStandalone](http://dcssimpleradio.com/) (DCS-SRS) is a radio solution for DCS World.<br>
If you want to use SRS in DCSServerBot, in most cases it is enough to activate the respective 
[extension](../../extensions/README.md#srs). Especially when it comes to [LotAtc](../../plugins/lotatc/README.md),
or, if you want to display an SRS activity status for your players, or if you even want to use slot blocking based
on SRS - then you want to install this plugin.

## Configuration
As SRS is an optional plugin, you need to activate it in main.yaml first like so:
```yaml
opt_plugins:
  - srs
```

If you want to use the slot blocking feature, you need to create a config/plugins/srs.yaml file like so:
```yaml
DEFAULT:
  enforce_srs: true # block slots until SRS is activated
```
You can define, which server (instance) will use this blocking feature by specifying the instance name instead of 
DEFAULT.

## Discord Commands
The following Discord commands are available through the SRS plugin:

| Command               | Parameter           | Channel               | Role                  | Description                                                                                                                                |
|-----------------------|---------------------|-----------------------|-----------------------|--------------------------------------------------------------------------------------------------------------------------------------------|
| /linkme               |                     | all                   | DCS                   | Link a discord user to a DCS user (user self-service).                                                                                     |