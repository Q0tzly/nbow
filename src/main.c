#include <ncurses.h>

int main() {
  //init conf
  initscr();
  curs_set(0);
  cbreak();
  noecho();

  int key;

  while (key != 'q') {   
    printw("press 'q'");
    key = getch();
    refresh();
  }

  endwin();

  return 0;
}
