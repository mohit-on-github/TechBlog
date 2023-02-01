package com.techblog.helper;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

/**
 *
 * @author mht19
 */
public class FileHelper {
    public static boolean DeleteFile(String path) {
        boolean flag=false;
        try {
            File file = new File(path);
           flag = file.delete();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }
    public static boolean saveFile(InputStream is, String path){
        boolean flag = false;
        try {
            byte[] data = new byte[is.available()];
            is.read(data);
            FileOutputStream fos = new FileOutputStream(path);
            fos.write(data);
            fos.flush();
            fos.close();
            flag = true;
        } catch (Exception e) {
        e.printStackTrace();
        }
        return flag;
    }
    
}
