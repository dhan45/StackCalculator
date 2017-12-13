# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "myLib.h" 1



typedef unsigned short u16;
# 31 "myLib.h"
extern unsigned short *videoBuffer;



void setPixel(int row, int col, unsigned short color);
void setPixel4(int row, int col, unsigned char color);
void drawRect3(int row, int col, int height, int width, unsigned short color);
void drawRect4(int row, int col, int height, int width, volatile unsigned char colorIndex);
void drawRectInBounds3(int row, int col, int height, int width, unsigned short color);
void waitForVBlank();
void fillScreen(unsigned short color);
void fillScreen4(unsigned char color);
void drawBackgroundImage3(volatile const unsigned short*);
void drawBackgroundImage4(volatile const unsigned short*);
void drawImage3(volatile const unsigned short* image, int row, int col, int height, int width);
void drawImage4(volatile const unsigned short* image, int row, int col, int height, int width);
void loadPalette(volatile const unsigned short* palette);
char *short2bin(short x, char arr[]);

void flipPage();
# 68 "myLib.h"
extern unsigned int oldButtons;
extern unsigned int buttons;
# 78 "myLib.h"
void DMANow(int channel, volatile const void* source, volatile const void* destination, unsigned int control);






typedef struct
{
        const volatile void *src;
        const volatile void *dst;
        unsigned int cnt;
} DMA_CONTROLLER;
# 2 "main.c" 2
# 1 "text.h" 1
extern const unsigned char fontdata_6x8[12288];
void drawChar4(int row, int col, char ch, unsigned char color);
void drawString4(int row, int col, char *str, unsigned char color);
# 3 "main.c" 2
# 1 "main.h" 1
void initialize();
void decimal();
void binary();
void octal();
void hexadecimal();
void addition();
void subtraction();
void multiplication();
void division();
void And();
void Or();
void Not();
void bitAnd();
void bitOr();
void complement();
void XOr();
void bitLeft();
void bitRight();
void clear();
void update();
void roll();
void converter();

typedef struct {
 int row;
 int col;
 int oldAfRow;
 int oldAfCol;
 int oldRow;
 int oldCol;
 int height;
 int width;
 unsigned char color;
} CURSOR;

void updateCursor(CURSOR* c);
void drawCursor(CURSOR* c);
# 4 "main.c" 2
# 1 "/opt/devkitARM/arm-none-eabi/include/stdio.h" 1 3
# 29 "/opt/devkitARM/arm-none-eabi/include/stdio.h" 3
# 1 "/opt/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 15 "/opt/devkitARM/arm-none-eabi/include/_ansi.h" 3
# 1 "/opt/devkitARM/arm-none-eabi/include/newlib.h" 1 3
# 16 "/opt/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/opt/devkitARM/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/opt/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/opt/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 1 "/opt/devkitARM/arm-none-eabi/include/sys/features.h" 1 3
# 6 "/opt/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 17 "/opt/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 30 "/opt/devkitARM/arm-none-eabi/include/stdio.h" 2 3





# 1 "/opt/devkitARM/arm-none-eabi/include/sys/cdefs.h" 1 3
# 43 "/opt/devkitARM/arm-none-eabi/include/sys/cdefs.h" 3
# 1 "/opt/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3
# 27 "/opt/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3

# 27 "/opt/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 41 "/opt/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 63 "/opt/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 89 "/opt/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 120 "/opt/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 146 "/opt/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 168 "/opt/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 186 "/opt/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 200 "/opt/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 44 "/opt/devkitARM/arm-none-eabi/include/sys/cdefs.h" 2 3

# 1 "/opt/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stddef.h" 1 3 4
# 216 "/opt/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 46 "/opt/devkitARM/arm-none-eabi/include/sys/cdefs.h" 2 3
# 36 "/opt/devkitARM/arm-none-eabi/include/stdio.h" 2 3
# 1 "/opt/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stddef.h" 1 3 4
# 149 "/opt/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 328 "/opt/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 37 "/opt/devkitARM/arm-none-eabi/include/stdio.h" 2 3


# 1 "/opt/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stdarg.h" 1 3 4
# 40 "/opt/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 40 "/opt/devkitARM/arm-none-eabi/include/stdio.h" 2 3







# 1 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 3
# 1 "/opt/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 14 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/opt/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stddef.h" 1 3 4
# 15 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/opt/devkitARM/arm-none-eabi/include/sys/_types.h" 1 3
# 12 "/opt/devkitARM/arm-none-eabi/include/sys/_types.h" 3
# 1 "/opt/devkitARM/arm-none-eabi/include/machine/_types.h" 1 3
# 13 "/opt/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3
# 1 "/opt/devkitARM/arm-none-eabi/include/sys/lock.h" 1 3




# 1 "/opt/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stdint.h" 3 4
# 1 "/opt/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 13 "/opt/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 14 "/opt/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int8_t int8_t ;
typedef __uint8_t uint8_t ;




typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int16_t int16_t ;
typedef __uint16_t uint16_t ;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int32_t int32_t ;
typedef __uint32_t uint32_t ;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int64_t int64_t ;
typedef __uint64_t uint64_t ;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 74 "/opt/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 84 "/opt/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 94 "/opt/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 104 "/opt/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 153 "/opt/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int intmax_t;
# 162 "/opt/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long unsigned int uintmax_t;






typedef __intptr_t intptr_t;
typedef __uintptr_t uintptr_t;
# 10 "/opt/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stdint.h" 2 3 4
# 6 "/opt/devkitARM/arm-none-eabi/include/sys/lock.h" 2 3

typedef int32_t _LOCK_T;

struct __lock_t {
 _LOCK_T lock;
 uint32_t thread_tag;
 uint32_t counter;
};

typedef struct __lock_t _LOCK_RECURSIVE_T;

extern void __libc_lock_init(_LOCK_T *lock);
extern void __libc_lock_init_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_close(_LOCK_T *lock);
extern void __libc_lock_close_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_acquire(_LOCK_T *lock);
extern void __libc_lock_acquire_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_release(_LOCK_T *lock);
extern void __libc_lock_release_recursive(_LOCK_RECURSIVE_T *lock);


extern int __libc_lock_try_acquire(_LOCK_T *lock);
extern int __libc_lock_try_acquire_recursive(_LOCK_RECURSIVE_T *lock);
# 14 "/opt/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3


typedef long _off_t;



typedef int __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 55 "/opt/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 67 "/opt/devkitARM/arm-none-eabi/include/sys/_types.h" 3
# 1 "/opt/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stddef.h" 1 3 4
# 357 "/opt/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 68 "/opt/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 16 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 38 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 91 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 115 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 179 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                                          ;
  int (* _write) (struct _reent *, void *, const char *, int)

                                   ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 285 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 317 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 569 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (* __cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
};
# 762 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 48 "/opt/devkitARM/arm-none-eabi/include/stdio.h" 2 3
# 1 "/opt/devkitARM/arm-none-eabi/include/sys/types.h" 1 3
# 69 "/opt/devkitARM/arm-none-eabi/include/sys/types.h" 3
# 1 "/opt/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stddef.h" 1 3 4
# 70 "/opt/devkitARM/arm-none-eabi/include/sys/types.h" 2 3
# 1 "/opt/devkitARM/arm-none-eabi/include/machine/types.h" 1 3
# 19 "/opt/devkitARM/arm-none-eabi/include/machine/types.h" 3
typedef long int __off_t;
typedef int __pid_t;

__extension__ typedef long long int __loff_t;
# 71 "/opt/devkitARM/arm-none-eabi/include/sys/types.h" 2 3
# 93 "/opt/devkitARM/arm-none-eabi/include/sys/types.h" 3
typedef unsigned char u_char;



typedef unsigned short u_short;



typedef unsigned int u_int;



typedef unsigned long u_long;





typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;



typedef unsigned long clock_t;




typedef long time_t;







struct timespec {
  time_t tv_sec;
  long tv_nsec;
};


struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};


typedef long daddr_t;



typedef char * caddr_t;
# 155 "/opt/devkitARM/arm-none-eabi/include/sys/types.h" 3
typedef unsigned int ino_t;
# 184 "/opt/devkitARM/arm-none-eabi/include/sys/types.h" 3
typedef _off_t off_t;
typedef __dev_t dev_t;
typedef __uid_t uid_t;
typedef __gid_t gid_t;





typedef int pid_t;







typedef long key_t;

typedef _ssize_t ssize_t;
# 217 "/opt/devkitARM/arm-none-eabi/include/sys/types.h" 3
typedef unsigned int mode_t __attribute__ ((__mode__ (__SI__)));




typedef unsigned short nlink_t;
# 244 "/opt/devkitARM/arm-none-eabi/include/sys/types.h" 3
typedef long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 275 "/opt/devkitARM/arm-none-eabi/include/sys/types.h" 3
typedef unsigned long clockid_t;




typedef unsigned long timer_t;



typedef unsigned long useconds_t;
typedef long suseconds_t;

typedef __uint32_t fsblkcnt_t;
typedef __uint32_t fsfilcnt_t;
# 49 "/opt/devkitARM/arm-none-eabi/include/stdio.h" 2 3



typedef __FILE FILE;




typedef _fpos_t fpos_t;





# 1 "/opt/devkitARM/arm-none-eabi/include/sys/stdio.h" 1 3
# 64 "/opt/devkitARM/arm-none-eabi/include/stdio.h" 2 3
# 164 "/opt/devkitARM/arm-none-eabi/include/stdio.h" 3
FILE * tmpfile (void);
char * tmpnam (char *);

char * tempnam (const char *, const char *);

int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *restrict, const char *restrict, FILE *restrict);
void setbuf (FILE *restrict, char *restrict);
int setvbuf (FILE *restrict, char *restrict, int, size_t);
int fprintf (FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fscanf (FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int printf (const char *restrict, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int scanf (const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int sscanf (const char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int vfprintf (FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int vsprintf (char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int fgetc (FILE *);
char * fgets (char *restrict, int, FILE *restrict);
int fputc (int, FILE *);
int fputs (const char *restrict, FILE *restrict);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite (const void * restrict , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *restrict, fpos_t *restrict);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *restrict _name, const char *restrict _type);
int sprintf (char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int remove (const char *);
int rename (const char *, const char *);
# 244 "/opt/devkitARM/arm-none-eabi/include/stdio.h" 3
int asiprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
char * asniprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * asnprintf (char *restrict, size_t *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int asprintf (char **restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int diprintf (int, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int fiprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fiscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int iprintf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int iscanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int siprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int siscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int snprintf (char *restrict, size_t, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int sniprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int vasiprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vasprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vdiprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vfscanf (FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int viprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int viscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vsiprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vsiscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vsniprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsnprintf (char *restrict, size_t, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsscanf (const char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
# 357 "/opt/devkitARM/arm-none-eabi/include/stdio.h" 3
int _asiprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
char * _asnprintf_r (struct _reent *, char *restrict, size_t *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _asprintf_r (struct _reent *, char **restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _diprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _dprintf_r (struct _reent *, int, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
int _fgetc_unlocked_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *restrict, int, FILE *restrict);
char * _fgets_unlocked_r (struct _reent *, char *restrict, int, FILE *restrict);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fiscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
FILE * _fmemopen_r (struct _reent *, void *restrict, size_t, const char *restrict);
FILE * _fopen_r (struct _reent *, const char *restrict, const char *restrict);
FILE * _freopen_r (struct _reent *, const char *restrict, const char *restrict, FILE *restrict);
int _fprintf_r (struct _reent *, FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputc_unlocked_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *restrict, FILE *restrict);
int _fputs_unlocked_r (struct _reent *, const char *restrict, FILE *restrict);
size_t _fread_r (struct _reent *, void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fread_unlocked_r (struct _reent *, void * restrict, size_t _size, size_t _n, FILE *restrict);
int _fscanf_r (struct _reent *, FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fwrite_unlocked_r (struct _reent *, const void * restrict, size_t _size, size_t _n, FILE *restrict);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _iscanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *, const char *_old, const char *_new)
                                          ;
int _scanf_r (struct _reent *, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int _siprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _siscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _snprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _sprintf_r (struct _reent *, char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _sscanf_r (struct _reent *, const char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdprintf_r (struct _reent *, int, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vfprintf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfscanf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vprintf_r (struct _reent *, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _vscanf_r (struct _reent *, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsnprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsprintf_r (struct _reent *, char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsscanf_r (struct _reent *, const char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);


void clearerr_unlocked (FILE *);
int feof_unlocked (FILE *);
int ferror_unlocked (FILE *);
int fileno_unlocked (FILE *);
int fflush_unlocked (FILE *);
int fgetc_unlocked (FILE *);
int fputc_unlocked (int, FILE *);
size_t fread_unlocked (void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite_unlocked (const void * restrict , size_t _size, size_t _n, FILE *);
# 538 "/opt/devkitARM/arm-none-eabi/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 725 "/opt/devkitARM/arm-none-eabi/include/stdio.h" 3

# 5 "main.c" 2


# 6 "main.c"
enum {DECIMAL, HEXADECIMAL, BINARY, OCTAL};
enum {ADDITION, SUBTRACTION, MULTIPLICATION, DIVISION, BOOLAND, BOOLOR, BOOLNOT, BITAND, BITOR, COMPLEMENT, XOR, LEFT, RIGHT};

unsigned int oldButtons, buttons;

CURSOR cursor;

int state;
int operation;
unsigned short stack[4];
short marker = 0;
short baseState;
short max;
short change = 0;



int main() {

 *(unsigned short *)0x4000000 = 4 | (1<<10) | (1<<4);

 initialize();
 initialize();
 while(1) {
  oldButtons = buttons;
  buttons = *(volatile unsigned int *)0x04000130;

  if (change == 1) {
   clear();
   change = 0;
  }

  switch(state) {
   case DECIMAL:
    decimal();
    break;
   case HEXADECIMAL:
    hexadecimal();
    break;
   case BINARY:
    binary();
    break;
   case OCTAL:
    octal();
    break;
  }
  switch(operation) {
   case ADDITION:
    addition();
    break;
   case SUBTRACTION:
    subtraction();
    break;
   case MULTIPLICATION:
    multiplication();
    break;
   case DIVISION:
    division();
    break;
   case BOOLAND:
    And();
    break;
   case BOOLOR:
    Or();
    break;
   case BOOLNOT:
    Not();
    break;
   case BITAND:
    bitAnd();
    break;
   case BITOR:
    bitOr();
    break;
   case COMPLEMENT:
    complement();
    break;
   case XOR:
    XOr();
    break;
   case LEFT:
    bitLeft();
    break;
   case RIGHT:
    bitRight();
    break;
  }
  waitForVBlank();
  flipPage();
 }

}

void initialize() {
 ((u16 *)0x5000000)[0] = 0;
 ((u16 *)0x5000000)[1] = ((31) | (31)<<5 | (31)<<10);
 ((u16 *)0x5000000)[2] = ((31) | (0)<<5 | (0)<<10);
 ((u16 *)0x5000000)[3] = ((0) | (31)<<5 | (0)<<10);

 cursor.oldAfRow = 149;
 cursor.oldAfCol = 217;
 cursor.oldRow = 149;
 cursor.oldCol = 217;
 cursor.row = 149;
 cursor.col = 217;
 cursor.height = 1;
 cursor.width = 5;
 cursor.color = 2;

 fillScreen4(0);
 drawString4(10, 30, "STACK CALCULATOR", 1);
 drawString4(20, 20, "B: operate A: change operation", 3);
 drawString4(30, 20, "Start: move up Select: move down", 3);
 drawString4(40, 20, "L: swap R: change base", 3);
 drawString4(110, 20, "BINARY", 3);
 drawString4(120, 20, "OCTAL", 3);
 drawString4(130, 20, "DECIMAL", 3);
 drawString4(140, 20, "HEXADECIMAL", 3);

 stack[3] = 0;
 stack[2] = 0;
 stack[1] = 0;
 stack[0] = 0;

 char buffer[41];

 sprintf(buffer, "%.16d", stack[3]);
 drawString4(110, 126, buffer, 3);
 sprintf(buffer, "%.16d", stack[2]);
 drawString4(120, 126, buffer, 3);
 sprintf(buffer, "%.16d", stack[1]);
 drawString4(130, 126, buffer, 3);
 sprintf(buffer, "%.16d", stack[0]);
 drawString4(140, 126, buffer, 3);

 state = DECIMAL;
 operation = ADDITION;
 flipPage();
}

void decimal() {
 baseState = 10;
 max = 4;

 updateCursor(&cursor);
 drawCursor(&cursor);
 roll();
 converter();
 drawRect4(130, 17, 7, 1, 2);

 char buffer[41];



 sprintf(buffer, "%.16d", stack[3]);
 drawString4(110, 126, buffer, 3);
 sprintf(buffer, "%.16d", stack[2]);
 drawString4(120, 126, buffer, 3);
 sprintf(buffer, "%.16d", stack[1]);
 drawString4(130, 126, buffer, 3);
 sprintf(buffer, "%.16d", stack[0]);
 drawString4(140, 126, buffer, 3);

 if ((!(~(oldButtons)&((1<<8))) && (~buttons & ((1<<8))))) {
  state = HEXADECIMAL;
  clear();
  change = 1;
 }
}
void hexadecimal() {
 baseState = 16;
 max = 3;

 updateCursor(&cursor);
 drawCursor(&cursor);
 roll();
 converter();
 drawRect4(140, 17, 7, 1, 2);

 char buffer[41];

 sprintf(buffer, "%.16X", stack[3]);
 drawString4(110, 126, buffer, 3);
 sprintf(buffer, "%.16X", stack[2]);
 drawString4(120, 126, buffer, 3);
 sprintf(buffer, "%.16X", stack[1]);
 drawString4(130, 126, buffer, 3);
 sprintf(buffer, "%.16X", stack[0]);
 drawString4(140, 126, buffer, 3);

 if ((!(~(oldButtons)&((1<<8))) && (~buttons & ((1<<8))))) {
  state = BINARY;
  clear();
  change = 1;
 }
}
void binary() {
 baseState = 2;
 max = 15;

 updateCursor(&cursor);
 drawCursor(&cursor);
 roll();
 converter();
 drawRect4(110, 17, 7, 1, 2);

 for (int i = 3; i > -1; i--) {
  char buffer[16];
  short2bin(stack[i], buffer);
  drawString4(140 - (i * 10),126, buffer, 3);
 }

 if ((!(~(oldButtons)&((1<<8))) && (~buttons & ((1<<8))))) {
  state = OCTAL;
  clear();
  change = 1;
 }
}
void octal() {
 baseState = 8;
 max = 5;

 updateCursor(&cursor);
 drawCursor(&cursor);
 roll();
 converter();
 drawRect4(120, 17, 7, 1, 2);

 char buffer[41];

 sprintf(buffer, "%.16o", stack[3]);
 drawString4(110, 126, buffer, 3);
 sprintf(buffer, "%.16o", stack[2]);
 drawString4(120, 126, buffer, 3);
 sprintf(buffer, "%.16o", stack[1]);
 drawString4(130, 126, buffer, 3);
 sprintf(buffer, "%.16o", stack[0]);
 drawString4(140, 126, buffer, 3);

 if ((!(~(oldButtons)&((1<<8))) && (~buttons & ((1<<8))))) {
  state = DECIMAL;
  clear();
  change = 1;
 }
}
void clear() {
 drawRect4(110, 17, 8, 1, 0);
 drawRect4(120, 17, 8, 1, 0);
 drawRect4(130, 17, 8, 1, 0);
 drawRect4(140, 17, 8, 1, 0);
 drawRect4(110, 126, 8, (16*6), 0);
 drawRect4(120, 126, 8, (16*6), 0);
 drawRect4(130, 126, 8, (16*6), 0);
 drawRect4(140, 126, 8, (16*6), 0);
 drawRect4(140, 114, 8, 12, 0);
}

void addition() {
 drawChar4(140, 120, '+', 2);
 if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))){
  stack[0] = stack[1] + stack[0];
  stack[1] = stack[2];
  stack[2] = stack[3];
  stack[3] = 0;
  clear();
  change = 1;
 }
 if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
  operation = SUBTRACTION;
  drawChar4(140, 120, '+', 0);
  change = 1;
 }
}
void subtraction() {
 drawChar4(140, 120, '-', 2);

 if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))){
  stack[0] = stack[1] - stack[0];
  stack[1] = stack[2];
  stack[2] = stack[3];
  stack[3] = 0;
  clear();
  change = 1;
 }
 if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
  operation = MULTIPLICATION;
  drawChar4(140, 120, '-', 0);
  change = 1;
 }
}
void multiplication() {
 drawChar4(140, 120, '*', 2);
 if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))){
  stack[0] = stack[1] * stack[0];
  stack[1] = stack[2];
  stack[2] = stack[3];
  stack[3] = 0;
  clear();
  change = 1;
 }
 if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
  operation = DIVISION;
  drawChar4(140, 120, '*', 0);
  change = 1;
 }
}
void division() {
 drawChar4(140, 120, '/', 2);
 if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))){
  stack[0] = stack[1] / stack[0];
  stack[1] = stack[2];
  stack[2] = stack[3];
  stack[3] = 0;
  clear();
  change = 1;
 }
 if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
  operation = BOOLAND;
  drawChar4(140, 120, '/', 0);
  change = 1;
 }
}
void And() {
 drawString4(140, 114, "&&", 2);
 if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))){
  stack[0] = stack[1] && stack[0];
  stack[1] = stack[2];
  stack[2] = stack[3];
  stack[3] = 0;
  clear();
  change = 1;
 }
 if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
  operation = BOOLOR;
  drawString4(140, 114, "&&", 0);
  change = 1;
 }
}
void Or() {
 drawString4(140, 114, "||", 2);
 if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))){
  stack[0] = stack[1] || stack[0];
  stack[1] = stack[2];
  stack[2] = stack[3];
  stack[3] = 0;
  clear();
  change = 1;
 }
 if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
  operation = BOOLNOT;
  drawString4(140, 114, "||", 0);
  change = 1;
 }
}
void Not() {
 drawChar4(140, 120, '!', 2);
 if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))){
  stack[0] = !stack[0];
  clear();
  change = 1;
 }
 if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
  operation = BITAND;
  drawChar4(140, 120, '!', 0);
  change = 1;
 }
}
void bitAnd() {
 drawChar4(140, 120, '&', 2);
 if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))){
  stack[0] = stack[1] & stack[0];
  stack[1] = stack[2];
  stack[2] = stack[3];
  stack[3] = 0;
  clear();
  change = 1;
 }
 if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
  operation = BITOR;
  drawChar4(140, 120, '&', 0);
  change = 1;
 }
}
void bitOr() {
 drawChar4(140, 120, '|', 2);
 if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))){
  stack[0] = stack[1] | stack[0];
  stack[1] = stack[2];
  stack[2] = stack[3];
  stack[3] = 0;
  clear();
  change = 1;
 }
 if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
  operation = COMPLEMENT;
  drawChar4(140, 120, '|', 0);
  change = 1;
 }
}
void complement() {
 drawChar4(140, 120, '~', 2);
 if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))){
  stack[0] = ~stack[0];
  clear();
  change = 1;
 }

 if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
  operation = XOR;
  drawChar4(140, 120, '~', 0);
  change = 1;
 }
}
void XOr() {
 drawChar4(140, 120, '^', 2);
 if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))){
  stack[0] = stack[1] ^ stack[0];
  stack[1] = stack[2];
  stack[2] = stack[3];
  stack[3] = 0;
  clear();
  change = 1;
 }
 if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
  operation = LEFT;
  drawChar4(140, 120, '^', 0);
  change = 1;
 }
}
void bitLeft() {
 drawString4(140, 114, "<<", 2);
 if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))){
  stack[0] = stack[1] << stack[0];
  stack[1] = stack[2];
  stack[2] = stack[3];
  stack[3] = 0;
  clear();
  change = 1;
 }
 if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
  operation = RIGHT;
  drawString4(140, 114, "<<", 0);
  change = 1;
 }
}
void bitRight() {
 drawString4(140, 114, ">>", 2);
 if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))){
  stack[0] = stack[1] >> stack[0];
  stack[1] = stack[2];
  stack[2] = stack[3];
  stack[3] = 0;
  clear();
  change = 1;
 }
 if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
  operation = ADDITION;
  drawString4(140, 114, ">>", 0);
  change = 1;
 }
}

void drawCursor(CURSOR* c) {
 drawRect4(c->oldAfRow, c->oldAfCol, c->height, c->width, 0);
 drawRect4(c->oldRow, c->oldCol, c->height, c->width, 0);
 drawRect4(c->row, c->col, c->height, c->width, c->color);
}

void updateCursor(CURSOR* c) {
 short temp = 217;
 c->oldAfCol = c->oldCol;
 c->oldCol = c->col;
 c->oldRow = c->row;

 if ((!(~(oldButtons)&((1<<5))) && (~buttons & ((1<<5))))) {
  if (marker >= max) {
   marker = max;
  } else {
  marker++;
  }
  c->col = temp - (6 * marker);
 }
 if ((!(~(oldButtons)&((1<<4))) && (~buttons & ((1<<4))))) {
  if (marker <= 0) {
   marker = 0;
  } else {
   marker--;
  }
  c->col = temp - (6 * marker);
 }

}

void roll() {
 if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
  stack[3] = stack[2];
  stack[2] = stack[1];
  stack[1] = stack[0];
  stack[0] = 0;
  clear();
  change = 1;
 } else if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
  stack[0] = stack[1];
  stack[1] = stack[2];
  stack[2] = stack[3];
  stack[3] = 0;

  clear();
  change = 1;
 } else if ((!(~(oldButtons)&((1<<9))) && (~buttons & ((1<<9))))) {
  short temp = stack[0];
  stack[0] = stack[1];
  stack[1] = temp;
  clear();
  change = 1;
 }
}

void converter() {
 short temp = 1;
 if ((!(~(oldButtons)&((1<<6))) && (~buttons & ((1<<6))))) {
  for (int i = marker; i > 0; i--) {
   temp *= baseState;
  }
  stack[0] += temp;
  change = 1;
  clear();
 }
 if ((!(~(oldButtons)&((1<<7))) && (~buttons & ((1<<7))))) {
  for (int i = marker; i > 0; i--) {
   temp *= baseState;
  }
  stack[0] -= temp;
  change = 1;
  clear();
 }
}
