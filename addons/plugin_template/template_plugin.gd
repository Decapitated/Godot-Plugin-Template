@tool
extends EditorPlugin

var node_inspector_plugin: EditorInspectorPlugin

func _enter_tree():
	# Create Custom Class type.
	add_custom_type("CustomClass", "Object", preload("src/custom_class.gd"), preload("icon.png")) # Update icon to custom one.
	# Create Customer Node type.
	add_custom_type("CustomNode", "Node", preload("src/custom_node/custom_node.gd"), preload("icon.png")) # Update icon to custom one.
	# Add custom inspector plugin
	node_inspector_plugin = preload("src/custom_node/custom_node_inspector.gd").new()
	add_inspector_plugin(node_inspector_plugin)

# Make sure to remove everything.
func _exit_tree():
	remove_inspector_plugin(node_inspector_plugin)
	remove_custom_type("CustomNode")
	remove_custom_type("CustomClass")