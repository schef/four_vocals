extends Control

@onready var sopran = $AudioStreamPlayerSopran
@onready var alt = $AudioStreamPlayerAlt
@onready var tenor = $AudioStreamPlayerTenor
@onready var bass = $AudioStreamPlayerBass
@onready var texture_button_play = %TextureButtonPlay
@onready var label_position = %LabelPosition
@onready var check_button_sopran = %CheckButtonSopran
@onready var check_button_alt = %CheckButtonAlt
@onready var check_button_tenor = %CheckButtonTenor
@onready var check_button_bass = %CheckButtonBass

@onready var button_from_bar_plus = %ButtonFromBarPlus
@onready var button_from_beat_plus = %ButtonFromBeatPlus
@onready var label_from = %LabelFrom
@onready var button_from_bar_minus = %ButtonFromBarMinus
@onready var button_from_beat_minus = %ButtonFromBeatMinus

@onready var button_to_bar_plus = %ButtonToBarPlus
@onready var button_to_beat_plus = %ButtonToBeatPlus
@onready var label_to = %LabelTo
@onready var button_to_bar_minus = %ButtonToBarMinus
@onready var button_to_beat_minus = %ButtonToBeatMinus


var bpm = 120
var beat_in_measure = 4
var start_offset = 0
var beat_duration = 60.0 / (bpm / beat_in_measure) / beat_in_measure
var mute = -80.0
var unmute = 0.0
var from_bar = 0
var from_beat = 0
var to_bar = 0
var to_beat = 0
var stream_length = 0
var max_beat = 0

func _ready():
	texture_button_play.toggled.connect(self._on_button_play_toggled)
	check_button_sopran.connect("toggled", Callable(self, "_on_volume_changed").bind(sopran))
	check_button_alt.connect("toggled", Callable(self, "_on_volume_changed").bind(alt))
	check_button_tenor.connect("toggled", Callable(self, "_on_volume_changed").bind(tenor))
	check_button_bass.connect("toggled", Callable(self, "_on_volume_changed").bind(bass))
	button_from_bar_plus.connect("pressed", Callable(self, "_on_from_to_changed").bind("from", "B+"))
	button_from_beat_plus.connect("pressed", Callable(self, "_on_from_to_changed").bind("from", "b+"))
	button_from_bar_minus.connect("pressed", Callable(self, "_on_from_to_changed").bind("from", "B-"))
	button_from_beat_minus.connect("pressed", Callable(self, "_on_from_to_changed").bind("from", "b-"))
	button_to_bar_plus.connect("pressed", Callable(self, "_on_from_to_changed").bind("to", "B+"))
	button_to_beat_plus.connect("pressed", Callable(self, "_on_from_to_changed").bind("to", "b+"))
	button_to_bar_minus.connect("pressed", Callable(self, "_on_from_to_changed").bind("to", "B-"))
	button_to_beat_minus.connect("pressed", Callable(self, "_on_from_to_changed").bind("to", "b-"))
	_set_from(0, 0)
	stream_length = sopran.stream.get_length()
	max_beat = int(stream_length / beat_duration)
	_set_to(int(max_beat / beat_in_measure), int(max_beat % beat_in_measure))

func _set_from(bar, beat):
	from_bar = bar
	from_beat = beat
	_display_from()

func _set_to(bar, beat):
	to_bar = bar
	to_beat = beat
	_display_to()
	

func _display_from():
	label_from.text = str(from_bar) + ":" + str(from_beat)

func _display_to():
	label_to.text = str(to_bar) + ":" + str(to_beat)

func _get_beat(_position):
	return int((_position - start_offset) / beat_duration)
	
func _get_measure(_position):
	return _get_beat(_position) / beat_in_measure

func _get_beat_in_measure(_position):
	return _get_beat(_position) % beat_in_measure

func _get_position_from_measure(measure):
	return measure * beat_in_measure * beat_duration

func _process(delta):
	var _position = sopran.get_playback_position()
	label_position.text = str(_get_measure(_position)) + ":" + str(_get_beat_in_measure(_position))
	var end_position = to_bar * beat_in_measure * beat_duration + to_beat * beat_duration
	if _position >= end_position:
		texture_button_play.set_pressed(false)

func _on_button_play_toggled(button_pressed):
	if button_pressed:
		var _position = from_bar * beat_duration * beat_in_measure + from_beat * beat_duration
		sopran.play(_position)
		alt.play(_position)
		tenor.play(_position)
		bass.play(_position)
	else:
		sopran.stop()
		alt.stop()
		tenor.stop()
		bass.stop()

func _on_volume_changed(button_state, voice):
	voice.set_volume_db([mute, unmute][int(button_state)])

func _on_from_to_changed(direction, cmd):
	if direction == "from":
		if cmd == "B+":
			from_bar += 1
		elif cmd == "b+":
			if from_beat >= beat_in_measure - 1:
				from_bar += 1
				from_beat = 0
			else:
				from_beat += 1
		elif cmd == "B-":
			from_bar -= 1
		elif cmd == "b-":
			if from_beat <= 0:
				from_bar -=1
				from_beat = beat_in_measure - 1
			else:
				from_beat -=1
		_display_from()
	elif direction == "to":
		if cmd == "B+":
			to_bar += 1
		elif cmd == "b+":
			if to_beat >= beat_in_measure - 1:
				to_bar += 1
				to_beat = 0
			else:
				to_beat += 1
		elif cmd == "B-":
			to_bar -= 1
		elif cmd == "b-":
			if to_beat <= 0:
				to_bar -=1
				to_beat = beat_in_measure - 1
			else:
				to_beat -=1
		_display_to()
