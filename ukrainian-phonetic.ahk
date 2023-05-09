#Requires AutoHotkey v2.0
#SingleInstance force

#UseHook true

Acc := "{U+0301}" ; Accent character
Enabled := false
IgnoreShift := false
PriorKey := ""

ih := InputHook("L0 V")
ih.KeyOpt("{All}", "N")
ih.OnKeyDown := OnKeyDown
ih.Start()
ih.Wait()

OnKeyDown(ih, vk, sc)
{
	vksc := Format("vk{:x}sc{:x}", vk, sc)
	key := GetKeyName(vksc)

	if (key != "" and RegExMatch(key, "i)^([LR]Shift|CapsLock)$") == 0)  {
		global PriorKey
		PriorKey := key
		; FlashToolTip(Format("OnKeyDown {} {} {}", PriorKey, vk, sc))
	}
}

ToggleEnabled()
{
	global Enabled
	Enabled := !Enabled

	global IgnoreShift
	IgnoreShift := false

	global PriorKey
	PriorKey := ""

  modeText := Enabled ? "ON" : "OFF"
	FlashToolTip("Ukrainian mode " . modeText)
}

FlashToolTip(text)
{
  ToolTip(text)
  SetTimer(RemoveToolTip, -1000)
}

RemoveToolTip() {
	ToolTip()
}

Inject(translatedKey, shiftedTranslations := Map())
{
	global PriorKey
	global IgnoreShift

	; FlashToolTip(Format("Inject {}", PriorKey))
	shiftedTranslatedKey := shiftedTranslations.Has(PriorKey) ? shiftedTranslations[PriorKey] : ""
	if (!IgnoreShift and shiftedTranslatedKey != "") {
		Send("{BS}" . Capitalize(shiftedTranslatedKey))
		IgnoreShift := true
	} else {
		Send(Capitalize(translatedKey))
		IgnoreShift := false
	}

	PriorKey := SubStr(A_ThisHotkey, -1)
	; FlashToolTip(Format("Inject {}", PriorKey))
}

Capitalize(c) {
	capital := GetKeyState("Shift", "P") != GetKeyState("CapsLock", "T")
	return capital ? StrUpper(c) : c
}

; Change here if you want to customize the toggle shortcut
^+Space::ToggleEnabled()

#HotIf Enabled

+a::
a::Inject("а", Map("j", "я"))

+b::
b::Inject("б")

+c::
c::Inject("ц")

+d::
d::Inject("д")

+e::
e::Inject("е", Map("j", "є"))

+f::
f::Inject("ф")

+g::
g::Inject("г", Map("/", "ґ"))

+h::
h::Inject("ч")

+i::
i::Inject("і", Map("j", "ї"))

+j::
j::Inject("й", Map("j", "й"))

+k::
k::Inject("к")

+l::
l::Inject("л")

+m::
m::Inject("м")

+n::
n::Inject("н")

+o::
o::Inject("о")

+p::
p::Inject("п")

+q::
q::Inject("я")

+r::
r::Inject("р")

+s::
s::Inject("с")

+t::
t::Inject("т")

+u::
u::Inject("у", Map("j", "ю"))

+v::
v::Inject("в")

+w::
w::Inject("ш", Map("/", "щ"))

+x::
x::Inject("х")

+y::
y::Inject("и")

+z::
z::Inject("з", Map("/", "ж"))

/::Inject("/", Map("/", "/"))

`;::Inject(";", Map("j", "ь"))
+;::Inject(":", Map("j", "ь"))

`::
{
	if (RegExMatch(A_PriorKey, "^[aeiouyq]$") > 0) {
		Inject(Acc)
	} else {
		Inject("``")
	}
}

; '::Inject("'", Map("/", Acc))
<::Inject("<", Map("/", "«"))
>::Inject(">", Map("/", "»"))
-::Inject("-", Map("/", "–"))
