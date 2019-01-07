package util;

public class CommonUtils {

	private CommonUtils() {
	}

	public static CommonUtils instance = null;

	public static CommonUtils getInstance() {
		if (instance == null) {
			instance = new CommonUtils();
		}
		return instance;
	}

}
