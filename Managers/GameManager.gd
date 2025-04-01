extends Node

var characters: Array[CharacterResource] = []

func load_characters():
	var dir = DirAccess.open("res://Characters/")
	
	if dir:
		for file in dir.get_files():
			if file.ends_with(".tres"):
				var character = load("res://Characters/" + file)
				
				if character is CharacterResource:
					characters.append(character)
