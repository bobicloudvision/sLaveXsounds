/*
    Copyright 2018, 2019 David Healey

    This file is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program. If not, see <http://www.gnu.org/licenses/>.
*/

namespace PresetHandler
{
    reg patch = "";

    //Previous/Next preset buttons
    //const var btnPreset = [];
    //btnPreset[0] = Content.getComponent("btnPreset0"); //Prev
    //btnPreset[1] = Content.getComponent("btnPreset1"); //Next
    //btnPreset[0].setControlCallback(loadAdjacentPreset);
    //btnPreset[1].setControlCallback(loadAdjacentPreset);

    //Get samplers as child synths
    const var samplerIds = Synth.getIdList("Sampler");
    const var childSynths = {};

    for (id in samplerIds)
    {
      childSynths[id] = Synth.getChildSynth(id);
    }

    //Get array of patch names from manifest
    const var patchNames = [];
    for (k in Manifest.patches)
    {
        patchNames.push(k);
    }

    //Preset selection dropdown
    const var cmbPatch = Content.getComponent("cmbPatch");
    
    Console.print(patchNames.join("\n"));
    
    cmbPatch.set("items", patchNames.join("\n"));
    cmbPatch.setControlCallback(cmbPatchCB);

    //UI Callbacks
    inline function loadAdjacentPreset(control, value)
    {
        if (value == 1)
        {
            local idx = btnPreset.indexOf(control);
            idx == 0 ? Engine.loadPreviousUserPreset(false) : Engine.loadNextUserPreset(false);
            Content.getComponent("lblPreset").set("text", Engine.getCurrentUserPresetName());
        }
    }

    //Load patch and settings from manifest
    inline function cmbPatchCB(control, value)
    {
        PresetHandler.patch = patchNames[value-1];

        colourKeys(PresetHandler.patch);
        loadSampleMaps(PresetHandler.patch);

       // if(Engine.getCurrentUserPresetName() == "")
         //   Content.getComponent("btnPresetBrowser").set("text", "DRCChaotica");
      //  else
      //      Content.getComponent("btnPresetBrowser").set("text", Engine.getCurrentUserPresetName());


    }

   // inline function onbtnPresetBrowserControl(component, value)
   /// {
       // Content.getComponent("btnSettings").setValue(0);
        //Content.getComponent("pnlPage0").set("enabled", 1-value); //Toggle instrument page enabled
      //  Content.getComponent("pnlPage1").showControl(0); //Hide settings page
        //Content.getComponent("pnlPage2").showControl(value);
    //};

  //  Content.getComponent("btnPresetBrowser").setControlCallback(onbtnPresetBrowserControl);

    //Functions
    inline function colourKeys(patchName)
    {
        local range = Manifest.patches[patchName].range;

        for (i = 0; i < 128; i++) //Every MIDI note
        {
            if (i < range[0] || i > range[1]) //i is outside max playable range
                Engine.setKeyColour(i, Colours.withAlpha(Colours.black, 0.5));
            else
                Engine.setKeyColour(i, Colours.withAlpha(Colours.white, 0.0)); //Set key colour
        }
    }

    inline function loadSampleMaps(patchName)
    {
        local sampleMaps = Sampler.getSampleMapList();

        for (id in samplerIds) //Each sampler
        {
            //childSynths[id].setBypassed(false); //Enable sampler

            Console.print("Loading sample map: " + patchName);

            if (id == "Sampler") //Transitions sampler
            {
                childSynths[id].asSampler().loadSampleMap(patchName); //Load staccato sample map
            }
            else if (sampleMaps.contains(patchName + "_" + id)) //Valid sample map for sampler ID
            {
                childSynths[id].asSampler().loadSampleMap(patchName + "_" + id); //Load the sample map
            }
            else //No sample map found
            {
               // childSynths[id].setBypassed(true); //Bypass sampler
                childSynths[id].asSampler().loadSampleMap("empty"); //Load empty sample map for this sampler
            }
        }
    }


}
