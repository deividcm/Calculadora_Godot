extends Control

@export var texto : LineEdit

func calcula():
	pass


func _on_button_1_pressed() -> void:
	texto.text += str(1)
func _on_button_2_pressed() -> void:
	texto.text += str(2)
func _on_button_3_pressed() -> void:
	texto.text += str(3)
func _on_button_4_pressed() -> void:
	texto.text += str(4)
func _on_button_5_pressed() -> void:
	texto.text += str(5)
func _on_button_6_pressed() -> void:
	texto.text += str(6)
func _on_button_7_pressed() -> void:
	texto.text += str(7)
func _on_button_8_pressed() -> void:
	texto.text += str(8)
func _on_button_9_pressed() -> void:
	texto.text += str(9)
func _on_button_0_pressed() -> void:
	texto.text += str(0)
func _on_button_igual_pressed() -> void:
	texto.text = str(int(texto.text))
func _on_button_mais_pressed() -> void:
	texto.text += "+"
func _on_button_menos_pressed() -> void:
	texto.text += "-"
func _on_button_vezes_pressed() -> void:
	texto.text += "*"
func _on_button_divide_pressed() -> void:
	texto.text += "/"
func _on_button_c_pressed() -> void:
	texto.clear()
func _on_button_apaga_pressed() -> void:
	texto.delete_text(texto.text.length() - 1, texto.text.length())
