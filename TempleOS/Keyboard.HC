
/* Copy this inside the asm{} block at the top of /Kernel/SerialDev/Keyboard.HC.Z and comment-out the QWERTY version of each table.  Then run the "BootHDIns;" command to recompile the kernel (TLDR for compiling is that basically you just type C, press p to probe and press 1 as a disk).  Finally "Reboot;" for changes to take effect. */

NORMAL_KEY_SCAN_DECODE_TABLE::
	DU8	0,CH_ESC,"1234567890[]",CH_BACKSPACE,'\t';
	DU8	"',.pyfgcrl/=",'\n',0,"ao";
	DU8	"euidhtns-\`",0,"\\;qjk";
	DU8	"xbmwvz",0,'*',0,CH_SPACE,0,0,0,0,0,0;
	DU8	0,0,0,0,0,0,0,0,0,0,'-',0,0,0,'+',0;

SHIFT_KEY_SCAN_DECODE_TABLE::
	DU8	0,CH_SHIFT_ESC,"!@#$$%^&*(){}",CH_BACKSPACE,'\t';
	DU8	"\"<>PYFGCRL?+",'\n',0,"AO";
	DU8	"EUIDHTNS_~",0,"|:QJK";
	DU8	"XBMWVZ",0,'*',0,CH_SHIFT_SPACE,0,0,0,0,0,0;
	DU8	0,0,0,0,0,0,0,0,0,0,'-',0,0,0,'+',0;

CTRL_KEY_SCAN_DECODE_TABLE::
	DU8	0,CH_ESC,"1234567890[]",CH_BACKSPACE,'\t';
	DU8	"',.",CH_CTRLP,CH_CTRLY,CH_CTRLF,CH_CTRLG,
		CH_CTRLC,CH_CTRLR,CH_CTRLL,"/=",'\n',0,CH_CTRLA,CH_CTRLO;
	DU8	CH_CTRLE,CH_CTRLU,CH_CTRLI,CH_CTRLD,CH_CTRLH,CH_CTRLT,CH_CTRLN,
		CH_CTRLS,"-\`",0,"\\",";",CH_CTRLQ,CH_CTRLJ,CH_CTRLK;
	DU8	CH_CTRLX,CH_CTRLB,CH_CTRLM,CH_CTRLW,CH_CTRLV,"/",0,'*',0,CH_SPACE,0,0,0,0,0,0;
	DU8	0,0,0,0,0,0,0,0,0,0,'-',0,0,0,'+',0;

