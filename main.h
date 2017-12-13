void initialize();
void decimal();	
void binary();
void octal();
void hexadecimal();
void addition();
void subtraction();
void multiplication();
void division();
void And();
void Or();
void Not();
void bitAnd();
void bitOr();
void complement();
void XOr();
void bitLeft();
void bitRight();
void clear();
void update();
void roll();
void converter();

typedef struct {
	int row;
	int col;
	int oldAfRow;
	int oldAfCol;
	int oldRow;
	int oldCol;
	int height;
	int width;
	unsigned char color;
} CURSOR;

void updateCursor(CURSOR* c);
void drawCursor(CURSOR* c);