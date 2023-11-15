# Godot Plugin Template
Template plugin with different examples.

A repository for easy plugin creation and learning for others.

Feel free to submit more examples that you feel would be good to know.

## Submission Requirements/Recommendations
Read [Submitting to the Asset Library](https://docs.godotengine.org/en/stable/community/asset_library/submitting_to_assetlib.html) for Requirements/Recommendations before submitting to the asset library.

A few things to do before submitting:
- [ ] Update the `LICENSE`
- [ ] Copy the `LICENSE` into main plugin folder. i.e. `/addons/plugin_template`
- [ ] Copy `README.md` into main plugin folder.
- [ ] Update the `plugin.cfg`

## Development Tips
### Symbolic Link
What you can do is clone this repo into it's own folder. Then in a seperate Godot project, create a symbolic link to the plugin folder.

#### Windows
```
Syntax: MKLINK [[/D] | [/H] | [/J]] LinkName Target
```
```
Custom Plugin Directory: C:\Godot-Plugin-Template\addons\plugin_template
Target Project Directory: C:\Godot-Project\addons\plugin_template
```
```
> mklink /d [Target Project Directory] [Custom Plugin Directory]
```
This allows you to work on the plugin within a Godot project. While keeping the plugins repo structure for easy asset submition.