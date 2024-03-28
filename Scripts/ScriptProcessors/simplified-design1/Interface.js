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
 