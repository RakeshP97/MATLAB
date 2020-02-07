
function decr_msg = decrypt(e, L, message)
decr_msg = '';
if e ==1 
    for i = 1:L+1:length(message)
        decr_msg = strcat(decr_msg,message(i));
    end
    return
else
    if e ==2 
        char_arr = convertStringsToChars(message);
           letter2number = @(c)1+lower(c)-'a';
           number2letter = @(n)char(n-1+'a');
           int_arr = letter2number(char_arr)-L;
           disp(int_arr)
           int_arr(int_arr < 1) = 26 + int_arr(int_arr < 1);
           enc_char_arr= number2letter(int_arr);
           decr_msg = convertCharsToStrings(enc_char_arr);
    end
end
end
        
        