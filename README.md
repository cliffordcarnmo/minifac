# minifac

A solution to a short exercise started on 2022-06-05 where me and some friends try to come up with the smallest (not necessarily the most elegant) solution to a standard factorial in plain C.

## Highscore
|#|Date|Name|LOC|Elegance|Comment|Solution|
|-|----|----|---|--------|-------|--------|
|1|2022-06-05|Clifford Carnmo|2|3/5|Quite chatty but it gets the job done.|https://github.com/cliffordcarnmo/minifac/blob/main/minifac.c|

## Rules

* The solution __must__ be confined to a single method with the signature `void factorial(unsigned int number)`.
* `factorial()` __must__ be called __exactly once__ from the `main()` method that pass a single command line argument forward.
* No custom entrypoints.
* The result __must__ be printed __once__ from within the `factorial()` method.
* You can __only__ use plain C and the C standard library, no inline assembly or third party libraries.
* The code __must__ be preprocessed, compiled, assembled and linked with standard `cpp`, `gcc`, `as` and `ld`.
* The binary __must__ be a standalone and runnable executable.
* You may __not__ hack the binary file format, headers or similar.
* The binary __must not__ crash if you feed it with weird arguments.
* The following warning options __must__ be passed to GCC: `-Wall -Wextra -Werror`

## Line number counting

Lines of code is not everything since you theoretically could have everything on a single line, but let's try to keep them down and count them just for fun.

```c
void factorial(unsigned int number){
// This counts as line #1
// This counts as line #2 
// This counts as line #3
}
```

## Sample execution of a valid solution

```
$ ./minifac 16
2004189184
$ ./minifac 8
40320
$ ./minifac 4
24
$ ./minifac picard
$ ./minifac #%&*
$ ./minifac
$
```
