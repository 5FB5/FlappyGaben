var fileOpenWrite, fileWrite;

if (file_exists("playerMoney.txt")) {
}
 else {
     fileOpenWrite = file_text_open_write("playerMoney.txt");
     file_text_write_real(fileOpenWrite, 0);
     file_text_close(fileOpenWrite);
 }
