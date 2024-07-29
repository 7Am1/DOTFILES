//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	//{"",	"/home/carti/.config/dwmblocks/scripts/cpu.sh",	        	3,	            0  },
	{"",	"/home/carti/.config/dwmblocks/scripts/volume.sh",	        0,	            10 },
	{"",	"/home/carti/.config/dwmblocks/scripts/battery.sh",	        15,	            0  },
	{"",	"/home/carti/.config/dwmblocks/scripts/netconn.sh",	        15,	            0  },
	{"",	"/home/carti/.config/dwmblocks/scripts/date.sh",	        15,	            0  },
	{"",	"/home/carti/.config/dwmblocks/scripts/time.sh",	        15,	            0  },
};

//sets delimiter between st1atus commands. NULL character ('\0') means no delimiter.
static char delim[] = "    ";
static unsigned int delimLen = 5;
