#include "myLib.h"
#include "text.h"
#include "main.h"
#include <stdio.h>

enum {DECIMAL, HEXADECIMAL, BINARY, OCTAL};
enum {ADDITION, SUBTRACTION, MULTIPLICATION, DIVISION, BOOLAND, BOOLOR, BOOLNOT, BITAND, BITOR, COMPLEMENT, XOR, LEFT, RIGHT};

unsigned int oldButtons, buttons;

CURSOR cursor;

int state;
int operation;
unsigned short stack[4];
short marker = 0;
short baseState;
short max;
short change = 0;



int main() {

	REG_DISPCTL = MODE4 | BG2_ENABLE | BUFFER2;

	initialize();
	initialize();
	while(1) {
		oldButtons = buttons;
		buttons = BUTTONS;

		if (change == 1) {
			clear();
			change = 0;
		}

		switch(state) {
			case DECIMAL:
				decimal();
				break;
			case HEXADECIMAL:
				hexadecimal();
				break;
			case BINARY:
				binary();
				break;
			case OCTAL:
				octal();
				break;
		}
		switch(operation) {
			case ADDITION:
				addition();
				break;
			case SUBTRACTION:
				subtraction();
				break;
			case MULTIPLICATION:
				multiplication();
				break;
			case DIVISION:
				division();
				break;
			case BOOLAND:
				And();
				break;
			case BOOLOR:
				Or();
				break;
			case BOOLNOT:
				Not();
				break;
			case BITAND:
				bitAnd();
				break;
			case BITOR:
				bitOr();
				break;
			case COMPLEMENT:
				complement();
				break;
			case XOR:
				XOr();
				break;
			case LEFT:
				bitLeft();
				break;
			case RIGHT:
				bitRight();
				break;
		}
		waitForVBlank();
		flipPage();
	}

}

void initialize() {
	PALETTE[0] = BLACK;
	PALETTE[1] = WHITE;
	PALETTE[2] = RED;
	PALETTE[3] = GREEN;

	cursor.oldAfRow = 149;
	cursor.oldAfCol = 217;
	cursor.oldRow = 149;
	cursor.oldCol = 217;
	cursor.row = 149;
	cursor.col = 217;
	cursor.height = 1;
	cursor.width = 5;
	cursor.color = 2;

	fillScreen4(0);
	drawString4(10, 30, "STACK CALCULATOR", 1);
	drawString4(20, 20, "B: operate A: change operation", 3);
	drawString4(30, 20, "Start: move up Select: move down", 3);
	drawString4(40, 20, "L: swap R: change base", 3);
	drawString4(110, 20, "BINARY", 3);
	drawString4(120, 20, "OCTAL", 3);
	drawString4(130, 20, "DECIMAL", 3);
	drawString4(140, 20, "HEXADECIMAL", 3);

	stack[3] = 0;
	stack[2] = 0;
	stack[1] = 0;
	stack[0] = 0;

	char buffer[41];

	sprintf(buffer, "%.16d", stack[3]);
	drawString4(110, 126, buffer, 3);
	sprintf(buffer, "%.16d", stack[2]);
	drawString4(120, 126, buffer, 3);
	sprintf(buffer, "%.16d", stack[1]);
	drawString4(130, 126, buffer, 3);
	sprintf(buffer, "%.16d", stack[0]);
	drawString4(140, 126, buffer, 3);

	state = DECIMAL;
	operation = ADDITION;
	flipPage();
}

void decimal() {
	baseState = 10;
	max = 4;

	updateCursor(&cursor);
	drawCursor(&cursor);
	roll();
	converter();
	drawRect4(130, 17, 7, 1, 2);
	
	char buffer[41];



	sprintf(buffer, "%.16d", stack[3]);
	drawString4(110, 126, buffer, 3);
	sprintf(buffer, "%.16d", stack[2]);
	drawString4(120, 126, buffer, 3);
	sprintf(buffer, "%.16d", stack[1]);
	drawString4(130, 126, buffer, 3);
	sprintf(buffer, "%.16d", stack[0]);
	drawString4(140, 126, buffer, 3);

	if (BUTTON_PRESSED(BUTTON_R)) {
		state = HEXADECIMAL;
		clear();
		change = 1;
	}
}
void hexadecimal() {
	baseState = 16;
	max = 3;

	updateCursor(&cursor);
	drawCursor(&cursor);
	roll();
	converter();
	drawRect4(140, 17, 7, 1, 2);

	char buffer[41];

	sprintf(buffer, "%.16X", stack[3]);
	drawString4(110, 126, buffer, 3);
	sprintf(buffer, "%.16X", stack[2]);
	drawString4(120, 126, buffer, 3);
	sprintf(buffer, "%.16X", stack[1]);
	drawString4(130, 126, buffer, 3);
	sprintf(buffer, "%.16X", stack[0]);
	drawString4(140, 126, buffer, 3);

	if (BUTTON_PRESSED(BUTTON_R)) {
		state = BINARY;
		clear();
		change = 1;
	}
}
void binary() {
	baseState = 2;
	max = 15;

	updateCursor(&cursor);
	drawCursor(&cursor);
	roll();
	converter();
	drawRect4(110, 17, 7, 1, 2);

	for (int i = 3; i > -1; i--) {
		char buffer[16]; 
		short2bin(stack[i], buffer);
		drawString4(140 - (i * 10),126, buffer, 3);
	}

	if (BUTTON_PRESSED(BUTTON_R)) {
		state = OCTAL;
		clear();
		change = 1;
	}
}
void octal() {
	baseState = 8;
	max = 5;

	updateCursor(&cursor);
	drawCursor(&cursor);
	roll();
	converter();
	drawRect4(120, 17, 7, 1, 2);

	char buffer[41];

	sprintf(buffer, "%.16o", stack[3]);
	drawString4(110, 126, buffer, 3);
	sprintf(buffer, "%.16o", stack[2]);
	drawString4(120, 126, buffer, 3);
	sprintf(buffer, "%.16o", stack[1]);
	drawString4(130, 126, buffer, 3);
	sprintf(buffer, "%.16o", stack[0]);
	drawString4(140, 126, buffer, 3);

	if (BUTTON_PRESSED(BUTTON_R)) {
		state = DECIMAL;
		clear();
		change = 1;
	}
}
void clear() {
	drawRect4(110, 17, 8, 1, 0);
	drawRect4(120, 17, 8, 1, 0);
	drawRect4(130, 17, 8, 1, 0);
	drawRect4(140, 17, 8, 1, 0);
	drawRect4(110, 126, 8, (16*6), 0);
	drawRect4(120, 126, 8, (16*6), 0);
	drawRect4(130, 126, 8, (16*6), 0);
	drawRect4(140, 126, 8, (16*6), 0);
	drawRect4(140, 114, 8, 12, 0);
}

void addition() {
	drawChar4(140, 120, '+', 2);
	if (BUTTON_PRESSED(BUTTON_B)){
		stack[0] = stack[1] + stack[0];
		stack[1] = stack[2];
		stack[2] = stack[3];
		stack[3] = 0;
		clear();
		change = 1;
	}
	if (BUTTON_PRESSED(BUTTON_A)) {
		operation = SUBTRACTION;
		drawChar4(140, 120, '+', 0);
		change = 1;
	}
}
void subtraction() {
	drawChar4(140, 120, '-', 2);
	
	if (BUTTON_PRESSED(BUTTON_B)){
		stack[0] = stack[1] - stack[0];
		stack[1] = stack[2];
		stack[2] = stack[3];
		stack[3] = 0;
		clear();
		change = 1;
	}
	if (BUTTON_PRESSED(BUTTON_A)) {
		operation = MULTIPLICATION;
		drawChar4(140, 120, '-', 0);
		change = 1;
	}
}
void multiplication() {
	drawChar4(140, 120, '*', 2);
	if (BUTTON_PRESSED(BUTTON_B)){
		stack[0] = stack[1] * stack[0];
		stack[1] = stack[2];
		stack[2] = stack[3];
		stack[3] = 0;
		clear();
		change = 1;
	}
	if (BUTTON_PRESSED(BUTTON_A)) {
		operation = DIVISION;
		drawChar4(140, 120, '*', 0);
		change = 1;
	}
}
void division() {
	drawChar4(140, 120, '/', 2);
	if (BUTTON_PRESSED(BUTTON_B)){
		stack[0] = stack[1] / stack[0];
		stack[1] = stack[2];
		stack[2] = stack[3];
		stack[3] = 0;
		clear();
		change = 1;
	}
	if (BUTTON_PRESSED(BUTTON_A)) {
		operation = BOOLAND;
		drawChar4(140, 120, '/', 0);
		change = 1;
	}
}
void And() {
	drawString4(140, 114, "&&", 2);
	if (BUTTON_PRESSED(BUTTON_B)){
		stack[0] = stack[1] && stack[0];
		stack[1] = stack[2];
		stack[2] = stack[3];
		stack[3] = 0;
		clear();
		change = 1;
	}
	if (BUTTON_PRESSED(BUTTON_A)) {
		operation = BOOLOR;
		drawString4(140, 114, "&&", 0);
		change = 1;
	}
}
void Or() {
	drawString4(140, 114, "||", 2);
	if (BUTTON_PRESSED(BUTTON_B)){
		stack[0] = stack[1] || stack[0];
		stack[1] = stack[2];
		stack[2] = stack[3];
		stack[3] = 0;
		clear();
		change = 1;
	}
	if (BUTTON_PRESSED(BUTTON_A)) {
		operation = BOOLNOT;
		drawString4(140, 114, "||", 0);
		change = 1;
	}
}
void Not() {
	drawChar4(140, 120, '!', 2);
	if (BUTTON_PRESSED(BUTTON_B)){
		stack[0] = !stack[0];
		clear();
		change = 1;
	}
	if (BUTTON_PRESSED(BUTTON_A)) {
		operation = BITAND;
		drawChar4(140, 120, '!', 0);
		change = 1;
	}
}
void bitAnd() {
	drawChar4(140, 120, '&', 2);
	if (BUTTON_PRESSED(BUTTON_B)){
		stack[0] = stack[1] & stack[0];
		stack[1] = stack[2];
		stack[2] = stack[3];
		stack[3] = 0;
		clear();
		change = 1;
	}
	if (BUTTON_PRESSED(BUTTON_A)) {
		operation = BITOR;
		drawChar4(140, 120, '&', 0);
		change = 1;
	}
}
void bitOr() {
	drawChar4(140, 120, '|', 2);
	if (BUTTON_PRESSED(BUTTON_B)){
		stack[0] = stack[1] | stack[0];
		stack[1] = stack[2];
		stack[2] = stack[3];
		stack[3] = 0;
		clear();
		change = 1;
	}
	if (BUTTON_PRESSED(BUTTON_A)) {
		operation = COMPLEMENT;
		drawChar4(140, 120, '|', 0);
		change = 1;
	}
}
void complement() {
	drawChar4(140, 120, '~', 2);
	if (BUTTON_PRESSED(BUTTON_B)){
		stack[0] = ~stack[0];
		clear();
		change = 1;
	}

	if (BUTTON_PRESSED(BUTTON_A)) {
		operation = XOR;
		drawChar4(140, 120, '~', 0);
		change = 1;
	}
}
void XOr() {
	drawChar4(140, 120, '^', 2);
	if (BUTTON_PRESSED(BUTTON_B)){
		stack[0] = stack[1] ^ stack[0];
		stack[1] = stack[2];
		stack[2] = stack[3];
		stack[3] = 0;
		clear();
		change = 1;
	}
	if (BUTTON_PRESSED(BUTTON_A)) {
		operation = LEFT;
		drawChar4(140, 120, '^', 0);
		change = 1;
	}
}
void bitLeft() {
	drawString4(140, 114, "<<", 2);
	if (BUTTON_PRESSED(BUTTON_B)){
		stack[0] = stack[1] << stack[0];
		stack[1] = stack[2];
		stack[2] = stack[3];
		stack[3] = 0;
		clear();
		change = 1;
	}
	if (BUTTON_PRESSED(BUTTON_A)) {
		operation = RIGHT;
		drawString4(140, 114, "<<", 0);
		change = 1;
	}
}
void bitRight() {
	drawString4(140, 114, ">>", 2);
	if (BUTTON_PRESSED(BUTTON_B)){
		stack[0] = stack[1] >> stack[0];
		stack[1] = stack[2];
		stack[2] = stack[3];
		stack[3] = 0;
		clear();
		change = 1;
	}
	if (BUTTON_PRESSED(BUTTON_A)) {
		operation = ADDITION;
		drawString4(140, 114, ">>", 0);
		change = 1;
	}
}
// DRAWING CURSOR
void drawCursor(CURSOR* c) {
	drawRect4(c->oldAfRow, c->oldAfCol, c->height, c->width, 0);
	drawRect4(c->oldRow, c->oldCol, c->height, c->width, 0);
	drawRect4(c->row, c->col, c->height, c->width, c->color);
}

void updateCursor(CURSOR* c) {
	short temp = 217;
	c->oldAfCol = c->oldCol;
	c->oldCol = c->col;
	c->oldRow = c->row;

	if (BUTTON_PRESSED(BUTTON_LEFT)) {
		if (marker >= max) {
			marker = max;
		} else {
		marker++;
		}
		c->col = temp - (6 * marker);
	}
	if (BUTTON_PRESSED(BUTTON_RIGHT)) {
		if (marker <= 0) {
			marker = 0;
		} else {
			marker--;
		}
		c->col = temp - (6 * marker);
	}

}
// ROLL
void roll() {
	if (BUTTON_PRESSED(BUTTON_START)) {
		stack[3] = stack[2];
		stack[2] = stack[1];
		stack[1] = stack[0];
		stack[0] = 0;
		clear();
		change = 1;
	} else if (BUTTON_PRESSED(BUTTON_SELECT)) {
		stack[0] = stack[1];
		stack[1] = stack[2];
		stack[2] = stack[3];
		stack[3] = 0;
		
		clear();
		change = 1;
	} else if (BUTTON_PRESSED(BUTTON_L)) {
		short temp = stack[0];
		stack[0] = stack[1];
		stack[1] = temp;
		clear();
		change = 1;
	}
}

void converter() {
	short temp = 1;
	if (BUTTON_PRESSED(BUTTON_UP)) {
		for (int i = marker; i > 0; i--) {
			temp *= baseState; 
		}
		stack[0] += temp; 
		change = 1;
		clear();
	}
	if (BUTTON_PRESSED(BUTTON_DOWN)) {
		for (int i = marker; i > 0; i--) {
			temp *= baseState; 
		}
		stack[0] -= temp; 
		change = 1;
		clear();
	}
}



