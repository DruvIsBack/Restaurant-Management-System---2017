package com.rms.controllers.iofunc;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.rms.persistences.User;

@Component
public class FileIO {
	@SuppressWarnings("unused")
	private static Logger logger=Logger.getLogger(FileIO.class);
	
	@Autowired
	Common common;
	
	private static final String userphoto_path = "/users/pic/";
	
	private final String getfilePathByType(String type){
		String path = "/uploads";
		switch(type){
    	case "userphoto":
    		path+=userphoto_path;
    		break;
    	default:
    		path = null;
    	}
		return path;
	}
	
	public byte[] getFile(HttpServletRequest request, String type,String fileName) throws IOException{
		User user = common.getUser(request);
		if(user != null){
			String downloadDir = getfilePathByType(type);
			String realPathtoDownload =  request.getServletContext().getRealPath(downloadDir);
			System.out.println("Real Path to Downloads =>"+realPathtoDownload);
			if(! new File(realPathtoDownload).exists()){
	            new File(realPathtoDownload).mkdirs();
	            System.out.println("Real Path not found, now created but file can't found...");
	        }else{
	        	System.out.println("Real Path found, now try to get file...");
	        	if(fileName != ""){
	        		File file = new File(realPathtoDownload+fileName);
	        		Path path = Paths.get(realPathtoDownload+fileName);
	        		System.out.println("File physical address : "+realPathtoDownload+fileName+".jpg");
	        		if(file.exists()){
	        			return Files.readAllBytes(path);
	        		}else{
	        			System.out.println("File not exist...");
	        		}
	        	}else{
	        		System.out.println("File name is unreadable...");
	        	}
	        }
		}else{
			System.out.println("User not found...");
			return Files.readAllBytes(Paths.get(request.getServletContext().getRealPath("resources/images/system/img.jpg")));
		}
		return null;
	}
	
	public boolean saveFile(HttpServletRequest request, String type, MultipartFile file,String newFileName){
		if (!file.isEmpty()) {
            try {
            	String uploadsDir = getfilePathByType(type);
                String realPathtoUploads =  request.getServletContext().getRealPath(uploadsDir);
                
                System.out.println("Real Path to Uploads =>"+realPathtoUploads);
                
                if(! new File(realPathtoUploads).exists())
                {
                    new File(realPathtoUploads).mkdirs();
                }else{
                	System.out.println("Another same name file already exist...try to overwrite");
                }
                
                String orgName = null;
                
                if(newFileName != ""){
                	orgName = newFileName;
                }else{
                	orgName = file.getOriginalFilename();
                }
                
                String filePath = realPathtoUploads + orgName;
                File dest = new File(filePath);
                file.transferTo(dest);
                System.out.println("File saved successfully => "+uploadsDir+orgName);
            }catch(Exception e){
            	e.printStackTrace();
            	return false;
            }
            return true;
		}else{
			System.out.println("Sorry, File is empty...");
			return false;
		}
	}
}
