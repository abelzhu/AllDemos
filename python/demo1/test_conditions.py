# condition control: if; while; 

import time

# x = '123456'
ex = 'exit'
# # print(ex)
# while True:

#     input_1 = input('Please input:')

#     if input_1 == ex:
#         # print(input_1)
#         break
#     elif input_1 == x:
#         print('Exactly the same string!')
#     elif input_1 in x:
#         print('Is part of the string!')
#     else:
#         print('Not in the string!')

# using time
# for i in range(1,12):
#     print(i)
#     time.sleep(1)
i = int(input('input num:'))
while i < 13:
    if i == 5:
        i += 1
        continue
    print(i)
    i += 1
else:
    print('else print %s' %(i))

