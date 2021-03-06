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
    auto t1 = tuple("A", 1);
    writeln(t1);

    auto t2 = tuple("B", 2, 5.6);
    writeln(t2);

    t2[0] = "A";
    writeln(t2[0]);

    void printTuple(string s, int i) {
        writeln(s, " ", i);
    }
    printTuple(t1.expand);

    Tuple!(int, string) returnTuple() {
        return tuple(5, "Hello");
    }
    auto t3 = returnTuple();
    writeln(t3);
}