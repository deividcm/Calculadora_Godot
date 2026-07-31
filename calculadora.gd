extends Control
@export var texto : LineEdit
var calculado : bool = false

func calcular():
	var expressao = Expression.new()
	expressao.parse(texto.text)
	var novo_texto = str(expressao.execute())
	if novo_texto == "<null>":
		novo_texto = "Expressão inválida!"
	texto.text = novo_texto
	calculado = true

func adicionar_numero(num:int) -> void:
	if calculado:
		texto.clear()
	adicionar_caractere(str(num))

func adicionar_caractere(caractere: String) -> void:
	if calculado:
		calculado = false
	if texto.text == "Expressão inválida!":
		texto.clear()
	texto.text += caractere

func _on_button_c_pressed() -> void:
	texto.clear()
func _on_button_apaga_pressed() -> void:
	texto.text = texto.text.left(-1)
