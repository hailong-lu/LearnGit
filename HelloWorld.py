# Author : Hailong.lu
# Date   : 2020/1/4
# Version: 0.1

# variable xiaotuofeng
# function datuofeng
# class datuofeng

class Hello:
    def say():
        print("Hello")

class HelloWorld(Hello):
    def say():
        __super__().hello():
        print(" World ")

class My(HelloWorld):
    def say(name):
        _super__().say()
        print(" ", name)
        
if __name__ == "__main__":
    hw = My()
    hw.say("Hailong")
    hw.say("Hailong1")
    hw.say("Hailong2")
