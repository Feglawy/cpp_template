#pragma once
#include <bits/stdc++.h>

const static std::string INPUT_FILE_PATH = "../input.txt";
const static std::string OUTPUT_FILE_PATH = "../output.txt";

#define fast std::ios_base::sync_with_stdio(false), std::cin.tie(0), std::cout.tie(0);

#define read (void)freopen(INPUT_FILE_PATH, "r", stdin);
#define write (void)freopen(OUTPUT_FILE_PATH, "w", stdout);

#define clearConsole system("cls");
#define pauseConsole system("pause>nul");

#define makeConsoleUTF8 system("chcp 65001");

#define all(v) (v).begin(), (v).end()

typedef long long ll;
typedef double long dl;
typedef unsigned long long ull;