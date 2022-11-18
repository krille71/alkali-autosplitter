state("Alkali")
{
	ulong refNum : "Alkali.exe", 0x53FE00;
	ulong inSaveSelect : "Alkali.exe", 0x547B70;
	ulong fileTimer : "Alkali.exe", 0x547B78;
	ulong levelTimer : "Alkali.exe", 0x547B80;
	ulong levelID : "Alkali.exe", 0x547B88;
	ulong levelCompleted : "Alkali.exe", 0x547B90;
	ulong numDiskettes : "Alkali.exe", 0x547B98;
}

start{
	if(current.inSaveSelect == 0 && old.inSaveSelect == 1){
		return true;
	}
}

reset{
	if(current.inSaveSelect == 1 && old.inSaveSelect == 0){
		return true;
	}
}

split{
    if(old.levelCompleted == 0 && current.levelCompleted == 1){
		return true;
	}
}

isLoading
{
	return true;
}


gameTime
{
	return TimeSpan.FromMilliseconds(System.Convert.ToDouble(current.fileTimer));
}
