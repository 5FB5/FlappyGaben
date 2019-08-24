var fileVOpen, fileVWrite, fileVRead;

switch (mpos) {
       case 0: {
            switch(language) {
                case 0 : {
                    var file = file_text_open_write("lang.txt");
                    file_text_write_real(file, 1);
                    file_text_close(file);
                    
                    language = 1;
                    
                    optionButton [0] = "Русский";
                }
                break;
                
                case 1 : {
                    var file = file_text_open_write("lang.txt");
                    file_text_write_real(file, 0);
                    file_text_close(file);
                    
                    language = 0;
                    
                    optionButton[0] = "English";
                }
                break;

            }
            
            break;
       }

       case 1: { 
           main_menu_active = 0;
           second_menu_active = 0;
           instance_create(display_get_width() / 2, display_get_height() / 2, oAudioController);
           audio_window_active = 1;

          break;
       }
       default: break;
 }
