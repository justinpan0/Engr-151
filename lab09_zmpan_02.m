function dec_num = lab09_zmpan_02(bi_num)
    dec_num = 0;
    len = length(bi_num);
    for index = len-1:-1:0
        dec_num = dec_num + 2^(index) * bi_num(len - index);
    end