#include "myLib.h"
#include "text.h"
#include "main.h"
#include <stdio.h>

void upddateCursor() {

	
	if (BUTTON_PRESSED(BUTTON_LEFT))
	{
		if(place < 15)
		{
			p->col = p->col - 6;
    		place = place + 1;
		}

    }

    if (BUTTON_PRESSED(BUTTON_RIGHT))
    {
    	if(place > 0)
    	{
    		p->col = p->col + 6;
    		place = place - 1;	
    	}
    }

    /*CHANGING POWER*/
    if (BUTTON_PRESSED(BUTTON_UP))
    {
    	power = 1;
    	stack[0] = stack[0] + (power * pow(baseOfState, place));
    	updateBase();
    }

    if (BUTTON_PRESSED(BUTTON_DOWN))
    {
    	power = -1;
    	stack[0] = stack[0] + (power * pow(baseOfState, place));
    	updateBase();
    }
}
}