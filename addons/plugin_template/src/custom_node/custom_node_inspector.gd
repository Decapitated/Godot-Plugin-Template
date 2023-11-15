extends EditorInspectorPlugin

const custom_control_res = preload("custom_control.res")

func _can_handle(object):
	return object is CustomNode

func _parse_begin(object):
	var custom_node = object as CustomNode
	var custom_control = custom_control_res.instantiate()

	# Bind button.
	var text_edit = custom_control.find_child("CustomText") as TextEdit
	var button = custom_control.find_child("CustomButton") as Button
	button.pressed.connect(_button_pressed.bind(custom_node, text_edit))

	# Add control.
	add_custom_control(custom_control)

func _button_pressed(custom_node: CustomNode, text_edit: TextEdit):
	custom_node.call_custom_class(text_edit.text)