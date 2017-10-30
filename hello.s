section .text
global _start
_syscall:
  int    0x80
  ret
_start:
  push   dword     len
  push   dword     msg
  push   dword     0x01
  mov    eax,      0x04
  call   _syscall
  add    esp,      0x0c
  push   dword     0x00
  mov    eax,      0x01
  call   _syscall

section .data
  msg    db        "Hello World!",0x0a
  len    equ       $ - msg
