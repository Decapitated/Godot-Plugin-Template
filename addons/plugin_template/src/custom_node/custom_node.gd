@tool
class_name CustomNode extends Node

@export var show_warning = false:
        set(value):
            show_warning = value
            update_configuration_warnings()

var custom_property: Array[String]

func _ready():
    pass

func _process(_delta):
    pass

func call_custom_class(str: String):
    custom_property.append(str)
    CustomClass.call_me_anywhere(str)

#region Node Inspector Stuff

func _is_valid() -> PackedStringArray:
    var warnings: PackedStringArray = []
    if show_warning:
        warnings.append("Here's an example warning!")
    return warnings

func _get_configuration_warnings() -> PackedStringArray:
    return _is_valid()

func _get_property_list():
    var properties = [
        {
            name = "custom_property",
            # (Show in editor) | (Read only)
            usage = PROPERTY_USAGE_EDITOR | PROPERTY_USAGE_READ_ONLY,
            # (Enables serializing and showing in editor) | (Makes it read only in the editor)
            # usage = PROPERTY_USAGE_DEFAULT | PROPERTY_USAGE_READ_ONLY,
            type = typeof(custom_property),
        }
    ]
    return properties

#endregion
