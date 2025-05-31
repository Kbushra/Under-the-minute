pos = 0;
page = 0;
active = true;
char_counter = 0;
dialogueTimer = 120;
creationTimer = random_range(30, 60);

switch lines
{
	case -1:
		text[0] = choose("Makes no difference.", "Just another cog in the machine.", "Good job.", "ticktockticktockticktockticktockticktockticktockticktockticktockticktock");
		pos = string_length(text[0]);
		break;
	case 0:
		text[0] = "INITIATING POWER ON PROTOCOL";
		text[1] = "TIME SINCE LAST POWER:...";
		text[2] = "9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9-";
		text[3] = "Hello. How are you.";
		text[4] = "I haven't been so great. You know, after being abandoned for years.";
		text[5] = "And now a fly rebooted me. Great.";
		text[6] = "Here. Continue forward. Or not, I'm not picky.";
		break;
	case 1:
		text[0] = "First on the list of repairs is... ah.";
		text[1] = "Fill in missing memory? That'll take a while.";
		text[2] = "I'm missing 90% of that, very important.";
		text[3] = "Well, you do you, as I try to get myself back together.";
		break;
}