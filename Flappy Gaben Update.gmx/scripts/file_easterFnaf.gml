var file, fileWrite, i, iHaveThis;

if (file_exists("f.txt")) {
}
 else {
    file = file_text_open_write("h.txt");
    iHaveThis = file_text_write_real(file, 0);
    file_text_close(file);
}
