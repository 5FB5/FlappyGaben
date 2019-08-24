var fileOpen, money;
if (file_exists("playerMoney.txt")) {
    fileOpen = file_text_open_read("playerMoney.txt");
    money = file_text_read_real(fileOpen);
    file_text_close(fileOpen);
    
    fileOpen = file_text_open_write("playerMoney.txt");
    fileResult_money = money + global._coinNumber;
    file_text_write_real(fileOpen, fileResult_money);
    file_text_close(fileOpen);
}
