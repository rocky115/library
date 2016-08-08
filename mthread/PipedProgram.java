package mthread;

import java.io.PipedReader;
import java.io.PipedWriter;

/**
 * @author Radhamadhab.DALAI
 *
 */
public class PipedProgram {

	public static void main(String[] args) {
		new PipedProgram();
	}

	public PipedProgram() {
		try {
			PipedReader pr = new PipedReader();
			PipedWriter pw = new PipedWriter();
			// Connect the writer with reader
			pw.connect(pr);

			Thread thread1 = new Thread(new PipeReaderThread("ReaderThread", pr));
			Thread thread2 = new Thread(new PipeWriterThread("WriterThread", pw));
			thread1.start();
			thread2.start();
		} catch (Exception e) {
			System.out.println("Thread Exception: " + e);
		}

	}
}
