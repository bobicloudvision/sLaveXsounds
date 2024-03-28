Content.makeFrontInterface(1000, 710);

include("manifest.js");
include("presetHandler.js");


Engine.addModuleStateToUserPreset("Parametriq EQ1");


include("RhapsodyBoilerplate/includes/Ui.js");


include("RhapsodyBoilerplate/includes/LookAndFeel.js");


include("RhapsodyBoilerplate/includes/Paths.js");


//include("RhapsodyBoilerplate/includes/Expansions.js");




//include("RhapsodyBoilerplate/includes/Header.js");
// btnTitle
const btnTitle = Content.getComponent("btnTitle");

const lafbtnTitle = Content.createLocalLookAndFeel();
btnTitle.setLocalLookAndFeel(lafbtnTitle);

lafbtnTitle.registerFunction("drawToggleButton", function(g, obj)
{
	var a = obj.area;

	var fontSize = Engine.getOS() == "WIN" ? 44 : 28;

	g.setColour(obj.textColour);
	g.setFont("title", fontSize);
	g.drawAlignedText(obj.text, [a[0], a[1] + 2 - ((Engine.getOS() == "WIN") * 5), a[2], a[3]], "left");
});







include("RhapsodyBoilerplate/includes/Footer.js");


//include("RhapsodyBoilerplate/includes/Presets.js");


include("RhapsodyBoilerplate/includes/UserSettings.js");


include("RhapsodyBoilerplate/includes/Spinner.js");















const var Delay1 = Synth.getEffect("Delay1");


inline function onDelayTempoKnobControl(component, value)
{
	Delay1.setAttribute(Delay1.DelayTimeLeft, value);
	Delay1.setAttribute(Delay1.DelayTimeRight, value);
}

const var DelayTempoKnob = Content.getComponent("DelayTempo").setControlCallback(onDelayTempoKnobControl);


inline function onDelayFeedbackKnobControl(component, value)
{
	Delay1.setAttribute(Delay1.FeedbackLeft, value);
	Delay1.setAttribute(Delay1.FeedbackRight, value);
}

const var DelayFeedbackKnob = Content.getComponent("DelayFeedback").setControlCallback(onDelayFeedbackKnobControl);

function onNoteOn()
{
	
}
 function onNoteOff()
{
	
}
 function onController()
{
	
}
 function onTimer()
{
	
}
 function onControl(number, value)
{
	
}
 