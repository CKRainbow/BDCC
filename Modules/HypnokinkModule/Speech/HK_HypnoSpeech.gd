extends SpeechModifierBase

const hypnoHighlights = [
		"cock", "dick", "penis", "member", "shaft", "strapon",
		"cocks", "dicks", "penises", "members", "shafts", "strapons",
		"pussy", "clit", "cunt", "vulva", "slit",
		"pussies", "clits", "cunts", "vulvae", "slits",
		"breast", "tit", "titty", "boob", "nip", "nipple", "teat", "udder",
		"breasts", "tits", "titties", "boobs", "nips", "nipples", "teats", "udders",
		"butt", "ass",
		"butts",
		"toy", "pet", "bitch", "slut", "whore",
		"slutty", "horny", "lewd","needy",
		"breed", "fuck", "sex",
		"bred", "fucked",
		"cum",
		"rough",
		"cute", "adorable", "cutie", "beautiful",
		"submit", "obey", "surrender",
		"fucktoy","fuckpet",
		"please",
	]

const wordPrefix = "[tornado radius=2.0 freq=2.0 connected=1][pulse color=#FF33FF height=0.0 freq=3.0]"
const wordSuffix = "[/pulse][/tornado]"

var hypnoHighlightsUnused := []
var lastReset := -1
var ac = AhoCorasick.new(hypnoHighlights)

func appliesTo(_speaker: BaseCharacter) -> bool:
	if(GM.pc != _speaker and GM.pc.hasPerk(Perk.HypnosisKeywordsDrawback)):
		if(GM.pc.hasPerk(Perk.HypnosisDeepTranceDrawback)):
			return true
		elif(HypnokinkUtil.isHypnotized(GM.pc) and GM.pc.hasPerk(Perk.HypnosisFamousDrawback)):
			return true
		elif(HypnokinkUtil.isInTrance(GM.pc)):
			return true
	return false
	
func modifyOriginal(_text: String, _speaker: BaseCharacter) -> String:
	if(lastReset != GM.main.getTime()):
		hypnoHighlightsUnused = hypnoHighlights.duplicate()
		lastReset = GM.main.getTime()
	
	var pos = 0
	var textLen = _text.length()
	var outText = ""
	
	while pos < textLen:
		if(Util.asciiletters.has(_text[pos])):
			var word = _text[pos]
			pos += 1
			
			while pos < textLen:
				if(Util.asciiletters.has(_text[pos]) || Util.digits.has(_text[pos]) || _text[pos] == "_"):
					word += _text[pos]
					pos += 1
				else:
					break
			
			var word_base = basifyWord(word.to_lower())
			if(word_base in hypnoHighlights):
				outText += wordPrefix+word+wordSuffix
				if(word_base in hypnoHighlightsUnused):
					#avoid firing more than once per word in the same instance of time
					hypnoHighlightsUnused.erase(word_base)
					GM.pc.addEffect(StatusEffect.Suggestible, [RNG.randi_range(1,4)]) #add a little hypnosis
					GM.pc.addLust(RNG.randi_range(1,5)) #a little bit of lust
					#GM.pc.addArousal(RNG.randf_range(0.0,0.03)) #and a bit less arousal
			else:
				outText += word
		else:
			outText += _text[pos]
			pos += 1
	
	return outText

class MyCustomSorter:
	static func sortByPos(a, b) -> bool:
		if a.start_pos < b.start_pos:
			return true
		return false

# Fixed version used for Chinese translations
func modify(_text: String, _speaker: BaseCharacter) -> String:
	if(lastReset != GM.main.getTime()):
		hypnoHighlightsUnused = hypnoHighlights.duplicate()
		lastReset = GM.main.getTime()
	
	var matches = ac.search(_text.to_lower())
	var outText = ""
	
	matches.sort_custom(MyCustomSorter, "sortByPos")
	
	var pos = 0
	
	for index in len(matches):
		var m = matches[index]
		var start = m.start_pos
		var end = m.end_pos

		if(index == 0):
			outText += _text.substr(0, start)
		else:
			var prev = matches[index-1]
			if(prev.end_pos >= start):
				continue

			outText += _text.substr(prev.end_pos + 1, start - prev.end_pos - 1)
		
		outText += wordPrefix + _text.substr(start, end - start + 1) + wordSuffix
		pos = end + 1
		
		if m.pattern in hypnoHighlightsUnused:
			#avoid firing more than once per word in the same instance of time
			hypnoHighlightsUnused.erase(m.pattern)
			GM.pc.addEffect(StatusEffect.Suggestible, [RNG.randi_range(1,4)]) #add a little hypnosis
			GM.pc.addLust(RNG.randi_range(1,5)) #a little bit of lust
			#GM.pc.addArousal(RNG.randf_range(0.0,0.03)) #and a bit less arousal

	if(pos < _text.length()):
		outText += _text.substr(pos, _text.length() - pos)

	return outText
	
static func basifyWord(word: String) -> String:
	if(word.ends_with("ing")):
		word = word.substr(0, len(word) - 3)
	return word
