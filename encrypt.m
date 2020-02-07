
function encrypt_message = encrypt(e,L, message)
   if e==1
       al = 'a':'z';
       encrypt_message = message(1);
       for i = 2:length(message)
       encrypt_message = strcat(encrypt_message,al(randi([1 26],1,L)),message(i));
       end
       return ;
   else
       if e ==2
           char_arr = convertStringsToChars(message);
           letter2number = @(c)1+lower(c)-'a';
           number2letter = @(n)char(n-1+'a');
           int_arr = letter2number(char_arr)+L;
           enc_char_arr= number2letter(rem(int_arr,26));
           encrypt_message = convertCharsToStrings(enc_char_arr);
       end
   end
end