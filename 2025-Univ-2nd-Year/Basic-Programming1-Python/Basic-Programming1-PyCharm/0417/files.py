nameHandle = open('kids', 'w')
for i in range(2):
    name = input('Enter name: ')
    nameHandle.write(name + '\n')
nameHandle.close()

nameHandle = open('kids', 'r')
for line in nameHandle:
    print(line[:-1])
nameHandle.close()

# 역슬래쉬 n 은 특수문ㄴ자 하나 임을 기억
# 역슬래쉬 n 프린트 시 한줄이 더 생김
