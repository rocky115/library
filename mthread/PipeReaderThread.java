package mthread;

import java.io.PipedReader;

/**
 * @author Radhamadhab.DALAI
 *
 */
public class PipeReaderThread implements Runnable {

	PipedReader pr;
	String name = null;

	public PipeReaderThread(String name, PipedReader pr) {
		this.name = name;
		this.pr = pr;
	}

	public void run() {
		try {
			while (true) {
				char c = (char) pr.read(); 
				if (c == '2') {
					System.out.println("Webservice 2 is called");
				}
			}
		} catch (Exception e) {
			System.out.println("Thread Exception: " + e);
		}
	}
}