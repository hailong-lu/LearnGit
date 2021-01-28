Base::Base() [base object constructor]:
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-8], rdi
        nop
        pop     rbp
        ret
Base::Base(Base const&):
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-8], rdi
        mov     QWORD PTR [rbp-16], rsi
        nop
        pop     rbp
        ret
Base::operator=(Base const&):
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-8], rdi
        mov     QWORD PTR [rbp-16], rsi
        mov     rax, QWORD PTR [rbp-8]
        pop     rbp
        ret
Base::~Base() [base object destructor]:
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-8], rdi
        nop
        pop     rbp
        ret
Test1::Test1() [base object constructor]:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], rdi
        mov     rax, QWORD PTR [rbp-8]
        mov     rdi, rax
        call    Base::Base() [base object constructor]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 16
        mov     rdi, rax
        call    std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string() [complete object constructor]
        nop
        leave
        ret
Test1::Test1(Test1 const&):
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 24
        mov     QWORD PTR [rbp-24], rdi
        mov     QWORD PTR [rbp-32], rsi
        mov     rdx, QWORD PTR [rbp-32]
        mov     rax, QWORD PTR [rbp-24]
        mov     rsi, rdx
        mov     rdi, rax
        call    Base::Base(Base const&)
        mov     rax, QWORD PTR [rbp-32]
        mov     edx, DWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-24]
        mov     DWORD PTR [rax], edx
        mov     rax, QWORD PTR [rbp-32]
        mov     rdx, QWORD PTR [rax+8]
        mov     rax, QWORD PTR [rbp-24]
        mov     QWORD PTR [rax+8], rdx
        mov     rax, QWORD PTR [rbp-24]
        add     rax, 16
        mov     rdx, QWORD PTR [rbp-32]
        add     rdx, 16
        mov     rsi, rdx
        mov     rdi, rax
        call    std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
        jmp     .L10
        mov     rbx, rax
        mov     rax, QWORD PTR [rbp-24]
        mov     rdi, rax
        call    Base::~Base() [base object destructor]
        mov     rax, rbx
        mov     rdi, rax
        call    _Unwind_Resume
.L10:
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
Test1::operator=(Test1 const&):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], rdi
        mov     QWORD PTR [rbp-16], rsi
        mov     rdx, QWORD PTR [rbp-16]
        mov     rax, QWORD PTR [rbp-8]
        mov     rsi, rdx
        mov     rdi, rax
        call    Base::operator=(Base const&)
        mov     rax, QWORD PTR [rbp-16]
        mov     edx, DWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-8]
        mov     DWORD PTR [rax], edx
        mov     rax, QWORD PTR [rbp-16]
        mov     rdx, QWORD PTR [rax+8]
        mov     rax, QWORD PTR [rbp-8]
        mov     QWORD PTR [rax+8], rdx
        mov     rax, QWORD PTR [rbp-16]
        lea     rdx, [rax+16]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 16
        mov     rsi, rdx
        mov     rdi, rax
        call    std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::operator=(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
        mov     rax, QWORD PTR [rbp-8]
        leave
        ret
Test1::~Test1() [base object destructor]:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], rdi
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 16
        mov     rdi, rax
        call    std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string() [complete object destructor]
        mov     rax, QWORD PTR [rbp-8]
        mov     rdi, rax
        call    Base::~Base() [base object destructor]
        nop
        leave
        ret


main:
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 200
        lea     rax, [rbp-64]
        mov     rdi, rax
        call    Test::Test() [complete object constructor]
        lea     rdx, [rbp-64]
        lea     rax, [rbp-112]
        mov     rsi, rdx
        mov     rdi, rax
        call    Test::Test(Test const&)
        lea     rdx, [rbp-64]
        lea     rax, [rbp-112]
        mov     rsi, rdx
        mov     rdi, rax
        call    Test::operator=(Test const&)
        lea     rax, [rbp-160]
        mov     rdi, rax
        call    Test1::Test1() [complete object constructor]
        lea     rdx, [rbp-160]
        lea     rax, [rbp-208]
        mov     rsi, rdx
        mov     rdi, rax
        call    Test1::Test1(Test1 const&)
        lea     rdx, [rbp-160]
        lea     rax, [rbp-208]
        mov     rsi, rdx
        mov     rdi, rax
        call    Test1::operator=(Test1 const&)
        mov     ebx, 0
        lea     rax, [rbp-208]
        mov     rdi, rax
        call    Test1::~Test1() [complete object destructor]
        lea     rax, [rbp-160]
        mov     rdi, rax
        call    Test1::~Test1() [complete object destructor]
        lea     rax, [rbp-112]
        mov     rdi, rax
        call    Test::~Test() [complete object destructor]
        lea     rax, [rbp-64]
        mov     rdi, rax
        call    Test::~Test() [complete object destructor]
        mov     eax, ebx
        jmp     .L32
        mov     rbx, rax
        lea     rax, [rbp-208]
        mov     rdi, rax
        call    Test1::~Test1() [complete object destructor]
        jmp     .L25
        mov     rbx, rax
.L25:
        lea     rax, [rbp-160]
        mov     rdi, rax
        call    Test1::~Test1() [complete object destructor]
        jmp     .L26
        mov     rbx, rax
.L26:
        lea     rax, [rbp-112]
        mov     rdi, rax
        call    Test::~Test() [complete object destructor]
        jmp     .L27
        mov     rbx, rax
.L27:
        lea     rax, [rbp-64]
        mov     rdi, rax
        call    Test::~Test() [complete object destructor]
        mov     rax, rbx
        mov     rdi, rax
        call    _Unwind_Resume
.L32:
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret