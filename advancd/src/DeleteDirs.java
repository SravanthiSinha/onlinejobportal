
import java.io.File;

public class DeleteDirs {
	public static void delTree(String s) {
		File dir2=new File(s);
		File []f1=dir2.listFiles();
		for( File f2: f1) {
			
			if (f2.isDirectory()) {
			delTree(f2.getAbsolutePath());
			}
			f2.delete();
			}
		dir2.delete();// end for
			}
}
