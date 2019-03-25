
public class NetflixRunner {
	public static void main(String[] args) {
		Movie a = new Movie("Yeet",12432);
		Movie b = new Movie("Bantech Systems",1);
		Movie c = new Movie("Disney",20);
		Movie d = new Movie("Pixar",3);
		Movie e = new Movie("Oof express",124224562);
		String noof	= b.getTicketPrice();
		System.out.println(noof);
		NetflixQueue queue =new NetflixQueue();
		queue.addMovie(a);
		queue.addMovie(b);
		queue.addMovie(c);
		queue.addMovie(d);
		queue.addMovie(e);
		queue.printMovies();
		queue.sortMoviesByRating();
		System.out.println("The best movie is "+queue.getBestMovie());
		System.out.println("The second best movie is "+queue.getMovie(1));
		System.err.println("The worst movie is "+queue.getMovie(4));
	}
}
