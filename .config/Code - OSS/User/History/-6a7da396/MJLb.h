#define SC(ruta) "$HOME/.config/dwmblocks/scripts/" #ruta

//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{" ",	"$HOME/.config/dwmblocks/scripts/date.sh",	15,	0},
	//{" ",	SC("battery.sh"),	    15,	            0  },
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " ";
static unsigned int delimLen = 5;
