var file, fileWrite, fileRead, playerMoney, fileBonus1Data, bonus1Have, fileBonus2Data, bonus2Have, fileBonus3Data, bonus3Have, fileBonus4Data, bonus4Have;

switch (mpos) {
       case 0: { //bonus1
   
    if (file_exists("bonusData1.txt")) { 
       bonusButton[0] = "Bought";
       
       fileRead = file_text_open_read("playerMoney.txt");
       playerMoney = file_text_read_real(fileRead);
       file_text_close(fileRead);
       
       fileBonus1Data = file_text_open_read("bonusData1.txt");
       bonus1Have = file_text_read_real(fileBonus1Data);
       file_text_close(fileBonus1Data);
       
       if (playerMoney >= 20 && bonus1Have == 0) {
           playerMoney = playerMoney - 20;
           
           fileWrite = file_text_open_write("playerMoney.txt");
           file_text_write_real(fileWrite, playerMoney);
           file_text_close(fileWrite);
           
           fileWrite = file_text_open_write("bonusData1.txt");
           file_text_write_real(fileWrite, 1);
           file_text_close(fileWrite);
        }
         else {
             audio_play_sound(snd_error, 0, false); //типа что отказ в покупке
         }
       }
            break;
    }

       case 1: { //bonus2
     
    if (file_exists("bonusData2.txt")) { 
       bonusButton[1] = "Bought";
       
       fileRead = file_text_open_read("playerMoney.txt");
       playerMoney = file_text_read_real(fileRead);
       file_text_close(fileRead);
       
       fileBonus2Data = file_text_open_read("bonusData2.txt");
       bonus2Have = file_text_read_real(fileBonus2Data);
       file_text_close(fileBonus2Data);
       
       if (playerMoney >= 20 && bonus2Have == 0) {
           playerMoney = playerMoney - 20;
           
           fileWrite = file_text_open_write("playerMoney.txt");
           file_text_write_real(fileWrite, playerMoney);
           file_text_close(fileWrite);
           
           fileWrite = file_text_open_write("bonusData2.txt");
           file_text_write_real(fileWrite, 1);
           file_text_close(fileWrite);
        }
         else {
             audio_play_sound(snd_error, 0, false); //типа что отказ в покупке
         }
       }
            break;
    }
       
       case 2: { //bonus3
    
    if (file_exists("bonusData3.txt")) { 
       bonusButton[2] = "Bought";
       
       fileRead = file_text_open_read("playerMoney.txt");
       playerMoney = file_text_read_real(fileRead);
       file_text_close(fileRead);
       
       fileBonus3Data = file_text_open_read("bonusData3.txt");
       bonus3Have = file_text_read_real(fileBonus3Data);
       file_text_close(fileBonus3Data);
       
       if (playerMoney >= 20 && bonus3Have == 0) {
           playerMoney = playerMoney - 20;
           
           fileWrite = file_text_open_write("playerMoney.txt");
           file_text_write_real(fileWrite, playerMoney);
           file_text_close(fileWrite);
           
           fileWrite = file_text_open_write("bonusData3.txt");
           file_text_write_real(fileWrite, 1);
           file_text_close(fileWrite);
        }
         else {
             audio_play_sound(snd_error, 0, false); //типа что отказ в покупке
         }
       }
            break;
    }
       
       case 3: { //prev
         room_goto(r_shop);
       }
            break;
       
       case 4: { //next
    
            break;
    }
       
       case 5: {
            room_goto(r_menu);
            break;
       }
       
       default: break;
 }
