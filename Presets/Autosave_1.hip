Processor 
Type SynthChain ID simplified-design1 Bypassed Gain 	      �?Balance 	        VoiceLimit 	      P@KillFadeTime 	      4@IconColour 0 packageName  BuildVersion �  EditorStates BodyShown 0 Visible 1 Solo 0 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type ScriptProcessor ID Interface Bypassed Script IContent.makeFrontInterface(1000, 710);

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


inline function onKnob1Control(component, value)
{
	Console.print(value);
	
	Delay1.setAttribute(Delay1.DelayTimeLeft, value);
	Delay1.setAttribute(Delay1.DelayTimeRight, value);
}

const var Knob1 = Content.getComponent("DelayTempo").setControlCallback(onKnob1Control);

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
  EditorStates BodyShown 1 Visible 1 Solo 0 contentShown 1 onInitOpen 1  ChildProcessors   Content  Control type ScriptSlider id DelayTempo value 	   @
��? Control type ScriptSlider id DelayFeedback value 	   `���? Control type ScriptSlider id 
DelayMix value 	   `ff�? Control type ScriptSlider id Knob1 value 	   �=
�? Control type ScriptSlider id Knob2 value 	   @�z�? Control type ScriptSlider id Knob3 value 	   ��Q�? Control type ScriptSlider id Knob4 value 	   ����? Control type ScriptSlider id knbMasterGain value 	   ���� Control type ScriptSlider id knbMasterPan value 	         Control type ScriptSlider id knbCoarseDetune value 	         Control type ScriptSlider id knbFineDetune value 	         Control type ScriptSlider id knbTranspose value 	         Control type ScriptComboBox id 
cmbPatch value 	      @ UIData  ContentProperties DeviceType 	Desktop Component type ScriptPanel id pnlContainer x 	        y 	        text  width 	     @�@height 	     0�@bgColour 0 itemColour 4280098081 itemColour2 4280098081 textColour 0 borderSize 	        borderRadius 	        Component type ScriptPanel id 	pnlBody x 	        y 	        text  width 	     ��@height 	     ��@bgColour 0 itemColour 4281282356 itemColour2 4281282356 textColour 0 parentComponent pnlContainer borderSize 	        borderRadius 	      (@Component type ScriptPanel id DelayPanel x 	      $@y 	      N@width 	      d@height 	     @j@itemColour 0 parentComponent 	pnlBody Component type ScriptSlider id DelayTempo x 	      $@y 	      Y@parentComponent DelayPanel text Tempo width 	     �a@height 	      I@ Component type ScriptSlider id DelayFeedback x 	      $@y 	     �b@parentComponent DelayPanel text 
Feedback width 	     �a@height 	      I@mode Time max 	     ��@stepSize 	      �?suffix  ms middlePosition 	�����?�@ Component type ScriptSlider id 
DelayMix x 	      $@y 	      I@width 	     �a@height 	      I@parentComponent DelayPanel mode NormalizedPercentage suffix % middlePosition 	      �?processorId Delay1 parameterId Mix text Mix  Component 
type ScriptLabel id Label2 x 	        y 	      ,@text Delay fontName Ethnocentric fontSize 	      2@width 	     @e@height 	      >@parentComponent DelayPanel  Component type ScriptButton id btnSettings x 	      �@y 	      I�text 
settings width 	      6@height 	      6@bgColour 4294901760 itemColour 4291809231 itemColour2 4293321983 textColour 0 saveInPreset 0 parentComponent 	pnlBody enableMidiLearn 0 visible 0  Component type ScriptButton id 
btnTitle x 	     �x@y 	     H�@text sLaveXsounds width 	     �g@height 	     �@@bgColour 0 itemColour 0 itemColour2 0 textColour 4293059298 saveInPreset 0 parentComponent 	pnlBody isMomentary 1 enableMidiLearn 0  Component type ScriptFloatingTile id SoundAnalyzer x 	     �b@y 	     �x@ContentType AudioAnalyser bgColour 
16777215 itemColour 2046820351 itemColour2 
14811136 textColour 
14026503 Data L{
  "ProcessorId": "Analyser1",
  "Index": 2,
  "FollowWorkspace": false
} width 	     ��@height 	     �d@itemColour3 
14681349 parentComponent 	pnlBody  Component type ScriptFloatingTile id ParametricEqPanel x 	      d@y 	      w@width 	     ��@height 	      i@ContentType DraggableFilterPanel itemColour 486539263 itemColour2 1862270975 Data R{
  "ProcessorId": "Parametriq EQ1",
  "Index": -1,
  "FollowWorkspace": false
} text Bypass processorId Parametriq EQ1 parameterId Bypass FontSize 	    ��?bgColour 0 Font Oxygen textColour 1610612735 itemColour3 
16777215 parentComponent 	pnlBody  Component type ScriptFloatingTile id PersetBrowser x 	     �g@y 	      >@width 	     �@height 	     �t@ContentType PresetBrowser bgColour 0 itemColour 4294967295 itemColour2 4294967295 Data �{
  "ShowSaveButton": true,
  "ShowExpansionsAsColumn": false,
  "ShowFolderButton": true,
  "ShowNotes": false,
  "ShowEditButtons": true,
  "EditButtonOffset": 10,
  "ShowAddButton": true,
  "ShowRenameButton": true,
  "ShowDeleteButton": true,
  "ShowFavoriteIcon": true,
  "ButtonsInsideBorder": false,
  "NumColumns": 2,
  "ColumnWidthRatio": [
    0.3333333333333333,
    0.3333333333333333,
    0.3333333333333333
  ],
  "ListAreaOffset": [
    0,
    0,
    0,
    0
  ],
  "ColumnRowPadding": [
    0,
    0,
    0,
    0
  ],
  "SearchBarBounds": [],
  "MoreButtonBounds": [],
  "SaveButtonBounds": [],
  "FavoriteButtonBounds": []
} itemColour3 4294967295 parentComponent 	pnlBody  Component 	type ScriptPanel id Reverb x 	     ��@y 	     �D@width 	      d@height 	     �r@parentComponent 	pnlBody bgColour 
16777215 itemColour 0 Component 
type ScriptLabel id Label1 x 	        y 	      "@text Reverb fontName Ethnocentric fontSize 	      2@width 	      d@height 	      D@parentComponent Reverb  Component type ScriptSlider id Knob1 x 	      $@y 	      e@mode NormalizedPercentage suffix % middlePosition 	      �?text Wet Level processorId Simple Reverb1 parameterId 
WetLevel parentComponent Reverb width 	     �a@height 	      I@ Component type ScriptSlider id Knob2 x 	      $@y 	     �l@mode NormalizedPercentage suffix % middlePosition 	      �?text 	Damping processorId Simple Reverb1 parameterId 	Damping parentComponent Reverb width 	     �a@height 	      I@ Component type ScriptSlider id Knob3 x 	      $@y 	     �H@mode NormalizedPercentage suffix % middlePosition 	      �?text Stereo Width processorId Simple Reverb1 parameterId Width parentComponent Reverb width 	     �a@height 	      I@ Component type ScriptSlider id Knob4 x 	      $@y 	     @[@mode NormalizedPercentage suffix % middlePosition 	      �?text Room Size processorId Simple Reverb1 parameterId 
RoomSize parentComponent Reverb width 	     �a@height 	      I@ Component type ScriptPanel id pnlStatusBar x 	      @y 	     H�@text  width 	     ��@height 	     �C@bgColour 0 itemColour 4281282356 itemColour2 4293978318 textColour 4293059571 parentComponent pnlContainer borderSize 	        borderRadius 	        Component type ScriptFloatingTile id 
fltStats x 	      .@y 	      $@ContentType PerformanceLabel width 	      l@height 	      4@bgColour 0 itemColour 0 itemColour2 0 textColour 1828716543 parentComponent pnlStatusBar Font medium  Component type ScriptButton id 	btnLogo x 	     X{@y 	      (@text logo width 	     @_@height 	      .@tooltip  Visit the developer's website. bgColour 0 itemColour 4293059571 itemColour2 4291875295 textColour 0 saveInPreset 0 parentComponent pnlStatusBar isMomentary 1 enableMidiLearn 0 visible 0  Component type ScriptFloatingTile id fltPeakMeter x 	     І@y 	      *@ContentType MatrixPeakMeter width 	      Y@height 	      0@bgColour 0 itemColour 4280361253 itemColour2 4284112748 textColour 0 parentComponent pnlStatusBar Data {
  "ProcessorId": "template",
  "Index": -1,
  "FollowWorkspace": false,
  "SegmentLedSize": 0.0,
  "UpDecayTime": 200.0,
  "DownDecayTime": 500.0,
  "UseSourceChannels": true,
  "SkewFactor": 0.3,
  "PaddingSize": 0.5,
  "ShowMaxPeak": 1.0,
  "ChannelIndexes": [
    0,
    1,
 ]
}  Component type ScriptSlider id knbMasterGain x 	     І@y 	      *@style Horizontal middlePosition 	      2�stepSize 	   ����?min 	      Y�max 	        suffix  dB mode 	Decibel text Gain width 	      Y@height 	      0@defaultValue 	      �tooltip Master volume. bgColour 0 itemColour 4285493103 itemColour2 4291217094 textColour 4281611319 isPluginParameter 1 pluginParameterName Master Volume parentComponent pnlStatusBar processorId masterGain parameterId Gain dragDirection Horizontal showValuePopup Below showTextBox 0  Component type ScriptSlider id knbMasterPan x 	     Ћ@y 	      *@style Horizontal middlePosition 	        stepSize 	      �?min 	      Y�max 	      Y@suffix L mode Pan text pan-bipolar width 	      T@height 	      0@tooltip Master pan. bgColour 4280361253 itemColour 4285493103 itemColour2 4291217094 textColour 4281611319 isPluginParameter 1 pluginParameterName Master Pan parentComponent pnlStatusBar processorId masterGain parameterId 	Balance dragDirection Horizontal showValuePopup Below showTextBox 0  Component type ScriptPanel id pnlFooter x 	        y 	     ��@text  width 	     @�@height 	     @U@bgColour 0 itemColour 0 itemColour2 0 textColour 0 parentComponent pnlContainer borderSize 	        borderRadius 	        Component type ScriptButton id 
btnPanic x 	      ;@y 	     �A@text warningCircle width 	      2@height 	      2@tooltip MIDI Panic - All notes off. itemColour 1720750224 itemColour2 4218713204 saveInPreset 0 parentComponent pnlFooter isMomentary 1 enableMidiLearn 0  Component 
type ScriptFloatingTile id fltKeyboard x 	      R@y 	      $@ContentType 
Keyboard width 	     ��@height 	     �P@bgColour 4284769380 parentComponent pnlFooter Data ^{
  "KeyWidth": 15.0,
  "DisplayOctaveNumber": false,
  "LowKey": 12,
  "HiKey": 108,
  "CustomGraphics": false,
  "DefaultAppearance": true,
  "BlackKeyRatio": 0.699999988079071,
  "ToggleMode": false,
  "MidiChannel": 1,
  "UseVectorGraphics": true,
  "UseFlatStyle": false,
  "MPEKeyboard": false,
  "MPEStartChannel": 2,
  "MPEEndChannel": 16
}  Component type ScriptPanel id pnlSettingsContainer x 	        y 	        text  width 	     @�@height 	     0�@bgColour 2013265920 itemColour 0 itemColour2 0 textColour 0 parentComponent pnlContainer borderSize 	        borderRadius 	        allowCallbacks Clicks Only visible 0 Component type ScriptPanel id pnlSettings x 	     @`@y 	      Y@text 
SETTINGS width 	      �@height 	     �|@bgColour 4281282356 itemColour 4280098081 itemColour2 0 textColour 4294504388 parentComponent pnlSettingsContainer borderSize 	        borderRadius 	      (@Component type ScriptPanel id pnlSettingsMenu x 	      $@y 	     �R@text  width 	     `c@height 	     @o@bgColour 	.)*�    itemColour 4292467161 itemColour2 0 textColour 4293519849 parentComponent pnlSettings borderSize 	        borderRadius 	      @allowCallbacks All Callbacks  Component type ScriptPanel id pnlSettingsTab0 x 	     �e@y 	      >@text ENGINE width 	     ��@height 	     @z@bgColour 4280098081 itemColour 4279637529 itemColour2 0 textColour 4293059298 parentComponent pnlSettings borderSize 	        borderRadius 	      (@Component type ScriptFloatingTile id fltEngineSettings x 	      9�y 	        ContentType CustomSettings width 	      y@height 	     @z@bgColour 0 itemColour 0 itemColour2 0 textColour 4293059298 parentComponent pnlSettingsTab0 Font medium FontSize 	      0@Data �{
  "Driver": false,
  "Device": false,
  "Output": false,
  "BufferSize": false,
  "SampleRate": false,
  "GlobalBPM": true,
  "StreamingMode": true,
  "ScaleFactor": true,
  "VoiceAmountMultiplier": true,
  "ClearMidiCC": false,
  "SampleLocation": false,
  "DebugMode": false,
  "UseOpenGL": true,
  "ScaleFactorList": [
    0.5,
    0.75,
    1.0,
    1.25,
    1.5,
    2.0,
    2.5,
    3.0,
    4.0
  ]
}  Component type ScriptButton id btnLazyLoad x 	     �b@y 	     @k@text  width 	      D@height 	      4@tooltip 3Enable or disable the purge until played feature. bgColour 4279637529 itemColour 4281425703 itemColour2 4227200501 saveInPreset 0 parentComponent pnlSettingsTab0 enableMidiLearn 0  Component type ScriptSlider id knbCoarseDetune x 	      c@y 	     p@middlePosition 	        text  width 	      D@height 	      D@min 	      (�max 	      (@tooltip Coarse tuning. bgColour 4279637529 itemColour 4294967295 itemColour2 4289967027 textColour 4292138196 isPluginParameter 1 pluginParameterName Coarse Tuning parentComponent pnlSettingsTab0 processorId coarseFineTune parameterId Coarse stepSize 	      �?suffix st showValuePopup Below  Component type ScriptSlider id knbFineDetune x 	     `o@y 	     p@middlePosition 	        text  width 	      D@height 	      D@min 	      Y�max 	      Y@tooltip Fine tuning. bgColour 4279637529 itemColour 4294967295 itemColour2 4289967027 textColour 4292138196 isPluginParameter 1 pluginParameterName Fine Tuning parentComponent pnlSettingsTab0 processorId coarseFineTune parameterId Fine stepSize 	      �?suffix ct showValuePopup Below  Component type ScriptSlider id knbTranspose x 	      c@y 	     �t@middlePosition 	        text  width 	      D@height 	      D@min 	       �max 	       @tooltip Transpose. bgColour 4279637529 itemColour 4294967295 itemColour2 4289967027 textColour 4292138196 isPluginParameter 1 pluginParameterName Transpose parentComponent pnlSettingsTab0 processorId transposer parameterId 
SemiTone stepSize 	      �?suffix st showValuePopup Below  Component type ScriptPanel id pnlSettingsTab1 x 	     �e@y 	      >@text AUDIO width 	     ��@height 	     @z@bgColour 4280098081 itemColour 4279637529 itemColour2 0 textColour 4293059298 parentComponent pnlSettings borderSize 	        borderRadius 	      (@visible Component type ScriptFloatingTile id fltAudioSettings x 	      9�y 	        ContentType CustomSettings width 	      y@height 	     @z@bgColour 0 itemColour 0 itemColour2 0 textColour 4293059298 parentComponent pnlSettingsTab1 Font medium FontSize 	      0@Data �{
  "Driver": true,
  "Device": true,
  "Output": true,
  "BufferSize": true,
  "SampleRate": true,
  "GlobalBPM": false,
  "StreamingMode": false,
  "ScaleFactor": false,
  "VoiceAmountMultiplier": false,
  "ClearMidiCC": false,
  "SampleLocation": false,
  "DebugMode": false,
  "UseOpenGL": false,
  "ScaleFactorList": [
    0.5,
    0.75,
    1.0,
    1.25,
    1.5,
    2.0,
    2.5,
    3.0,
    4.0
  ]
}  Component type ScriptPanel id pnlSettingsTab2 x 	     �e@y 	      >@text MIDI width 	     ��@height 	     @z@bgColour 4280098081 itemColour 4279637529 itemColour2 0 textColour 4294504388 parentComponent pnlSettings borderSize 	        borderRadius 	      (@visible Component 
type ScriptFloatingTile id fltMidiChannels x 	      6@y 	     �A@ContentType MidiChannelList width 	     �e@height 	     �v@parentComponent pnlSettingsTab2 Font medium Data {
}  Component 
type ScriptFloatingTile id fltMidiSources x 	     `m@y 	     �A@ContentType MidiSources width 	     `s@height 	     �v@parentComponent pnlSettingsTab2 Font medium Data {
}  Component type ScriptPanel id pnlSettingsTab3 x 	     �e@y 	      >@text AUTOMATION width 	     ��@height 	     @z@bgColour 4280098081 itemColour 4279637529 itemColour2 0 textColour 4293059298 parentComponent pnlSettings borderSize 	        borderRadius 	      (@visible Component type ScriptFloatingTile id fltMidiLearn x 	      >@y 	     �A@ContentType MidiLearnPanel width 	     �@height 	     �v@bgColour 0 itemColour 1485934993 itemColour2 0 textColour 4293852671 parentComponent pnlSettingsTab3 Font medium FontSize 	      0@Data {
}  Component type ScriptPanel id pnlSettingsTab4 x 	     �e@y 	      L@text MPE width 	     ��@height 	     @y@bgColour 0 itemColour 0 itemColour2 0 textColour 4293059298 parentComponent pnlSettings borderSize 	        borderRadius 	      (@visible Component type ScriptFloatingTile id fltMpe x 	      4@y 	        ContentType 
MPEPanel width 	     p�@height 	     �v@bgColour 0 itemColour 2164260863 itemColour2 452984831 parentComponent pnlSettingsTab4 Font 	regular FontSize 	      0@Data {
}  Component type ScriptButton id btnSettingsClose x 	     ��@y 	      $@text x width 	      D@height 	      B@bgColour 4279637529 itemColour 4288651185 itemColour2 4294967295 saveInPreset 0 parentComponent pnlSettings enableMidiLearn 0  Component type ScriptPanel id pnlSpinnerContainer x 	        y 	        text  width 	     @�@height 	     0�@bgColour 0 itemColour 2013265920 itemColour2 2013265920 textColour 0 parentComponent pnlContainer borderSize 	        borderRadius 	        visible Component type ScriptPanel id pnlSpinner x 	        y 	        text  width 	     @�@height 	     0�@bgColour 0 itemColour 0 itemColour2 0 textColour 4286611584 parentComponent pnlSpinnerContainer borderSize 	        borderRadius 	         Component type ScriptComboBox id 
cmbPatch x 	     �l@y 	      $@max    items *DRChaotica
EthnoLead
Square1
TapeStrings visible 0  Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type SimpleGain ID masterGain Bypassed Gain 	   ����Delay 	        Width 	      Y@Balance 	        InvertPolarity 	        EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors  Processor Type ModulatorChain ID Gain Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Delay Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Width Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Pan Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� Processor 	Type SimpleReverb ID Simple Reverb1 Bypassed RoomSize 	   ����?Damping 	   @�z�?WetLevel 	   �=
�?DryLevel 	   @�z�?Width 	   ��Q�?FreezeMode 	   ����?EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� Processor Type 	CurveEq ID Parametriq EQ1 Bypassed NumFilters    Band0 	   @t�%@Band1 	    �v�@Band2 	      �?Band3 	      �?Band4 	      @Band5 	    ��@Band6 	    Փ�@Band7 	      �?Band8 	      �?Band9 	      @Band10 	   �t��Band11 	    9#L@Band12 	      �?Band13 	      �?Band14 	      �?FFTEnabled EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� Processor Type 
Analyser ID Analyser1 Bypassed BufferSize 	      �@PreviewType 	      @EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� Processor Type Delay ID Delay1 Bypassed DelayTimeLeft 	        DelayTimeRight 	        FeedbackLeft 	   @33�?FeedbackRight 	   @33�?LowPassFreq 	     ��@HiPassFreq 	      D@Mix 	   `ff�?TempoSync 	      �?EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� Processor Type GlobalModulatorContainer ID Global Modulator Container0 Bypassed Gain 	      �?Balance 	        VoiceLimit 	      p@KillFadeTime 	      4@IconColour 0 EditorStates BodyShown 1 Visible 1 Solo 0 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type ModulatorChain ID Global Modulators Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� Processor Type SynthChain ID Container0 Bypassed Gain 	      �?Balance 	        VoiceLimit 	      p@KillFadeTime 	      4@IconColour 0 EditorStates BodyShown 0 Visible 1 Solo 0 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type StreamingSampler ID 	Sampler Bypassed Gain 	      �?Balance 	        VoiceLimit 	      p@KillFadeTime 	      4@IconColour 0 PreloadSize 	      �@BufferSize 	      �@VoiceAmount 	      p@SamplerRepeatMode 	      @RRGroupAmount 	      �?PitchTracking 	      �?OneShot 	        CrossfadeGroups 	        Purged 	        Reversed 	        NumChannels    UseStaticMatrix 	        Group0Table  Group1Table  Group2Table  Group3Table  Group4Table  Group5Table  Group6Table  Group7Table  SampleMapID TapeStrings EditorStates BodyShown 1 Visible 1 Solo 0 MapPanelShown 1 BigSampleMap 1 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor 	Type SimpleEnvelope ID DefaultEnvelope1 Bypassed Monophonic 	        Retrigger 	      �?Intensity 	      �?Attack 	      @Release 	      $@LinearMode 	      �?EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors  Processor Type ModulatorChain ID Attack Time Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Sample Start Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Group Fade Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� channels  channelData enabled level 	        suffix   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� macro_controls  macro name 	Macro 1 value 0.0 midi_cc -1  macro name 	Macro 2 value 0.0 midi_cc -1  macro name 	Macro 3 value 0.0 midi_cc -1  macro name 	Macro 4 value 0.0 midi_cc -1  macro name 	Macro 5 value 0.0 midi_cc -1  macro name 	Macro 6 value 0.0 midi_cc -1  macro name 	Macro 7 value 0.0 midi_cc -1  macro name 	Macro 8 value 0.0 midi_cc -1  MidiAutomation  Controller Controller    Processor Interface MacroIndex ����Start 	      Y�End 	        FullStart 	      Y�FullEnd 	        Skew 	�);�@Interval 	{�G�z�?Attribute knbMasterGain Inverted  Controller Controller 
   Processor Interface MacroIndex ����Start 	      Y�End 	      Y@FullStart 	      Y�FullEnd 	      Y@Skew 	      �?Interval 	{�G�z�?Attribute knbMasterPan Inverted  MPEData Enabled  