#include <stdio.h>
#ifdef _OPENMP
    #include <omp.h>
#else
    #define omp_get_thread_num() 0
    #define omp_get_num_threads() 1
#endif

void funcA(){
    printf("En funcA: esta seccion la ejecuta el thread %d\n",
            omp_get_thread_num());
}

void funcB(){
    printf("En funcB: esta seccion la ejecuta el thread %d\n",
            omp_get_thread_num());
}

void main(){
    #pragma omp sections
    {
        #pragma omp section
            (void)funcA();
        #pragma omp section
            (void)funcB();
    }
}
