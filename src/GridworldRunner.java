import java.awt.Color;
import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class GridworldRunner {
	
	public static void main(String[] args) {
		World world = new World();
		Bug a = new Bug();
		Bug b = new Bug(new Color(0,0,255));
		Flower l = new Flower();
		Flower r = new Flower();
		Location location = new Location(4,7);
		Location location2 = new Location(1,1);
		Location location3 = new Location(4,6);
		Location location4 = new Location(4,8);
		world.add(location2, a);
		world.add(location, b);
		world.add(location3, l);
		world.add(location4, r);
		b.setDirection(90);
		world.show();
	}

}

