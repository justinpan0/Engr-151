function fibo = lab09_zmpan_03(x)
    if x == 1 | x == 2
        fibo = 1;
    else
        fibo = lab09_zmpan_03(x-1) + lab09_zmpan_03(x-2);
    end