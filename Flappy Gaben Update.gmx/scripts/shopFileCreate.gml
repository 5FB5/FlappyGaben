var fileOpenWrite, fileWrite;

if (file_exists("skinData.sav")) {
}
 else {
     fileOpenWrite = file_text_open_write("skinData.sav");
     fileWrite = file_text_write_real(fileOpenWrite, 0);
     file_text_close(fileOpenWrite);
 }
q