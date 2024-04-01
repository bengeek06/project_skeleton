enable_language(C)
include(CheckIncludeFile)

# C89 includes
check_include_file(assert.h HAVE_ASSERT_H)
check_include_file(ctype.h HAVE_CTYPE_H)
check_include_file(errno.h HAVE_ERRNO_H)
check_include_file(float.h HAVE_FLOAT_H)
check_include_file(limits.h HAVE_LIMITS_H)
check_include_file(locale.h HAVE_LOCALE_H)
check_include_file(math.h HAVE_MATH_H)
check_include_file(setjmp.h HAVE_SETJMP_H)
check_include_file(signal.h HAVE_SIGNAL_H)
check_include_file(stdarg.h HAVE_STDARG_H)
check_include_file(stddef.h HAVE_STDDEF_H)
check_include_file(stdio.h HAVE_STDIO_H)
check_include_file(stdlib.h HAVE_STDLIB_H)
check_include_file(string.h HAVE_STRING_H)
check_include_file(time.h HAVE_TIME_H)

# C95 includes
check_include_file(iso646.h HAVE_ISO646_H)
check_include_file(wctype.h HAVE_WCTYPE_H)
check_include_file(wchar.h HAVE_WCHAR_H)

# C99 includes
check_include_file(complex.h HAVE_COMPLEX_H)
check_include_file(fenv.h HAVE_FENV_H)
check_include_file(inttypes.h HAVE_INTTYPES_H)
check_include_file(stdbool.h HAVE_STDBOOL_H)
check_include_file(stdint.h HAVE_STDINT_H)
check_include_file(tgmath.h HAVE_TGMATH_H)

# C11 includes
check_include_file(stdalign.h HAVE_STDALIGN_H)
check_include_file(stdatomic.h HAVE_STDATOMIC_H)
check_include_file(stdnoreturn.h HAVE_STDNORETURN_H)
check_include_file(threads.h HAVE_THREADS_H)
check_include_file(uchar.h HAVE_UCHAR_H)

# C23 includes
check_include_file(stdbit.h HAVE_STDBIT_H)
check_include_file(stdckint.h HAVE_STDCKINT_H)


include(CheckFunctionExists)

# assert.h
check_function_exists(assert HAVE_assert)
check_function_exists(static_assert HAVE_static_assert)

# complex.h
check_function_exists(CMPLX HAVE_CMPLX)
check_function_exists(CMPLXF HAVE_CMPLXF)
check_function_exists(CMPLXL HAVE_CMPLXL)
check_function_exists(creal HAVE_creal)
check_function_exists(crealf HAVE_crealf)
check_function_exists(creall HAVE_creall)
check_function_exists(cimag HAVE_cimag)
check_function_exists(cimagf HAVE_cimagf)
check_function_exists(cimagl HAVE_cimagl)
check_function_exists(cabs HAVE_cabs)
check_function_exists(cabsf HAVE_cabsf)
check_function_exists(cabsl HAVE_cabsl)
check_function_exists(carg HAVE_carg)
check_function_exists(cargf HAVE_cargf)
check_function_exists(cargl HAVE_cargl)
check_function_exists(conj HAVE_conj)
check_function_exists(conjf HAVE_conjf)
check_function_exists(conjl HAVE_conjl)
check_function_exists(proj HAVE_proj)
check_function_exists(projf HAVE_projf)
check_function_exists(projl HAVE_projl)

# ctype.h
check_function_exists(isalnum HAVE_isalnum)
check_function_exists(isalpha HAVE_isalpha)
check_function_exists(islower HAVE_islower)
check_function_exists(isupper HAVE_isupper)
check_function_exists(isdigit HAVE_isdigit)
check_function_exists(isxdigit HAVE_isxdigit)
check_function_exists(iscntrl HAVE_iscntrl)
check_function_exists(isgraph HAVE_isgraph)
check_function_exists(isspace HAVE_isspace)
check_function_exists(isblank HAVE_isblank)
check_function_exists(isprint HAVE_isprint)
check_function_exists(ispunct HAVE_ispunct)
check_function_exists(tolower HAVE_tolower)
check_function_exists(toupper HAVE_toupper)

# fenv.h


# stdlib.h
check_function_exists(atof HAVE_atof)
