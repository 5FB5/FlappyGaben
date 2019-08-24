var fileCreate, fileWrite, fileWWrite;

if (file_exists("options.sav")) {

}
 else {
      fileCreate = file_text_open_write("options.sav");
      fileWrite = file_text_write_real(fileCreate, 0);
      file_text_close(fileCreate);      
 }
 
