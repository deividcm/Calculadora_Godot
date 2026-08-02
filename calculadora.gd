extends Control
@export var texto : LineEdit
var calculado : bool = false

func calcular():
	var expressao: Expression = Expression.new()
	var novo_texto: String
	if expressao.parse(texto.text) == OK:
		novo_texto = str(expressao.execute())
	else:
		novo_texto = "Expressão inválida!"
	texto.text = novo_texto
	calculado = true

func adicionar_numero(num: int) -> void:
	if calculado:
		texto.clear()

	adicionar_caractere(str(num))

func adicionar_caractere(caractere: String) -> void:
	calculado = false
	if texto.text == "Expressão inválida!":
		texto.clear()
	texto.text += caractere

func _on_button_c_pressed() -> void:
	texto.clear()
func _on_button_apaga_pressed() -> void:
	texto.text = texto.text.left(-1)
