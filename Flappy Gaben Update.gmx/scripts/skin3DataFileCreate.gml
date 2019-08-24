var file, fileWrite, i, iHaveThis;

if (file_exists("skinData3.txt")) {
}
 else {
    file = file_text_open_write("skinData3.txt");
    iHaveThis = file_text_write_real(file, 0);
    file_text_close(file);
}
