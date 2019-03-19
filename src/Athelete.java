public class Athelete {
	static int nextBibNumber = 1;
	static String raceLocation = "New York";
	static String raceStartTime = "9.00am";

	String name;
	int speed;
	int bibNumber;

	Athelete(String name, int speed) {
		this.name = name;
		this.speed = speed;
		this.bibNumber = nextBibNumber;
		nextBibNumber++;
	}

	public static void main(String[] args) {
		Athelete a = new Athelete("Sum Ting Wong", 654);
		Athelete b = new Athelete("Wi Tu Lo", 654);
		Athelete c = new Athelete("Ho Lee ---", 654);
		Athelete d = new Athelete("Bang Ding Ow", 654);
		System.out.println(a.bibNumber);
		System.out.println(b.bibNumber);
		System.out.println(c.bibNumber);
		System.out.println(d.bibNumber);
		System.out.println(a.name);
		System.out.println(b.name);
		System.out.println(c.name);
		System.out.println(d.name);
		System.out.println(a.raceLocation);
		System.out.println(b.raceLocation);
		System.out.println(c.raceLocation);
		System.out.println(d.raceLocation);
	}

}
