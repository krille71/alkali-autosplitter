state("Alkali")
{
	ulong refNum : "Alkali.exe", 0x560E00;
	ulong inSaveSelect : "Alkali.exe", 0x568D08;
	ulong fileTimer : "Alkali.exe", 0x568D10;
	ulong levelTimer : "Alkali.exe", 0x568D18;
	ulong levelID : "Alkali.exe", 0x568D20;
	ulong levelCompleted : "Alkali.exe", 0x568D28;
	ulong numDiskettes : "Alkali.exe", 0x568D30;
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

isLoading{
	return true;
}


gameTime{
	return TimeSpan.FromMilliseconds(System.Convert.ToDouble(current.fileTimer));
}
