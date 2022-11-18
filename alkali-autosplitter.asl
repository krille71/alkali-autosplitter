state("Alkali")
{
	ulong refNum : "Alkali", 0x9fe00;
}

init{
    print("Alkali init");
}

startup{
    print("Alkali startup");
}

split{
    print("refNum: " + refNum);
}
