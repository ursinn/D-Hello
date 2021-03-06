import std.stdio;
import std.conv;
import std.math;
import std.random;
import std.datetime;
import std.algorithm;
import std.array;
import std.string;
import std.format;
import std.typecons : No;
import std.typecons;
import std.range : chain;
import std.file;
import core.thread;
import std.parallelism;
import std.concurrency;
import std.range;

void main() {
    // int var1 = 10;
    mixin MakeType!(int, 10);

    mixin GetSum!(double);
    writeln("1.2 + 2.3 = ",
    add(1.2, 2.3));
}

mixin template MakeType(T, T x) {
    T var1 = x; 
}

mixin template GetSum(T) {
    T add(T x, T y) {
        return x + y;
    }
}