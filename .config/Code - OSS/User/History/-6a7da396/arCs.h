#define SC(ruta) "$HOME/.config/dwmblocks/scripts/" #ruta

//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{" a ",	SC("battery.sh"),	15,	0},
	{" a ",	SC("date.sh"),	   15,	           0  },
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = "\0";
static unsigned int delimLen = 5;
