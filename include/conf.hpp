#pragma once
#include <bits/stdc++.h>

// Enables fast I/O
#define fast std::ios_base::sync_with_stdio(false), std::cin.tie(0), std::cout.tie(0);

// Redirects the standard input to a file
#define read(INPUT_FILE_PATH) (void)freopen(INPUT_FILE_PATH, "r", stdin);

// Redirects the standard output to a file
#define write(OUTPUT_FILE_PATH) (void)freopen(OUTPUT_FILE_PATH, "w", stdout);

#define clearConsole system("cls");
#define pauseConsole system("pause>nul");

// Make windows terminal utf-8
#define makeConsoleUTF8 system("chcp 65001");

#define all(v) (v).begin(), (v).end()

typedef long long ll;
typedef double long dl;
typedef unsigned long long ull;
