int sum (int n) {
    return n + sum(n-1);
}
int main (void) {
    sum(10);
}