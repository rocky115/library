/**
 * 
 */
package mthread;

import java.io.PipedWriter;

/**
 * @author Radhamadhab.DALAI
 *
 */
public class PipeWriterThread implements Runnable {

	PipedWriter pw;
	String name = null;

	public PipeWriterThread(String name, PipedWriter pw) {
		this.name = name;
		this.pw = pw;
	}

	public void run() {
		try {
			while (true) {

				pw.write("Web service1");
				pw.flush();
				Thread.sleep(1000);

				pw.write("Web service2");
				pw.flush();
				Thread.sleep(2000);

				pw.write("Web service3");
				pw.flush();
				Thread.sleep(3000);

			}

		} catch (Exception e) {
			System.out.println(" PipeThread Exception: " + e);
		}
	}

}
