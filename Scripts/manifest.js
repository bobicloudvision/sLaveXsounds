/*
    Copyright 2018, 2019 David Healey

    This file is part of Libre Winds.

    Libre Winds is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Libre Winds is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Libre Winds. If not, see <http://www.gnu.org/licenses/>.
*/

namespace Manifest
{
    //Patch data
    const var patches = {
        "DRChaotica": //Sample map identifier
        {
	        range: [74, 105], //Playable range
	        hasFlutter: true, //Does this patch have a flutter sample map?
            legatoSettings:
		    {
                minBend:10,
                maxBend:40,
                minFade:10,
                maxFade:30
		    }
	    },
		"EthnoLead":
		{
            range:[59, 96],
            hasFlutter: true,
            legatoSettings:
            {
                minBend:10,
                maxBend:40,
                minFade:30,
                maxFade:60
            }
		},
		"Square1":
		{
            range:[59, 96],
            hasFlutter: true,
            hasSputato: true,
            legatoSettings:
            {
                minBend:10,
                maxBend:40,
                minFade:30,
                maxFade:60
            }
		},
		"TapeStrings":
		{
			range: [55, 91],
			hasFlutter: true,
			hasSputato: true,
			legatoSettings:
		    {
                minBend:10,
                maxBend:50,
                minFade:40,
                maxFade:80
		    }
		}
	};
}
