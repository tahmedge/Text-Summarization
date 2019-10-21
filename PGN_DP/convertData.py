f1=open("17_09_2019_21:08:18_decoded_file.txt","r")
f2=open("17_09_2019_21:08:18_reference_file.txt","r")
f3=open("decoded_C_file.txt","w+")
f4=open("reference_C_file.txt","w+")

for i in f1:
    #x=i.split()
    x=i
    x=x.replace('.','')
    x=x.replace('[UNK]','')
    x=x.strip()
    x=x+" . <ended>"
    f3.write(x+"\n")

for i in f2:
    #x=i.split()
    x=i
    x=x.replace('.','')
    #x=x.replace('[UNK]','')
    x=x.strip()
    x=x+" . <ended>"
    f4.write(x+"\n")