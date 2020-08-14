import curses

def main(stdscr):

    win = curses.newwin(5, 20, 10, 20);

    win.box()
    win.move(0, 1)
    win.addstr('Public IP')
    win.move(1, 1)
    win.addstr('123123-123-123-123')

    win.getch()

    win.mvwin(15, 30)
    stdscr.refresh()

    win.getch()


if __name__ == '__main__':
    curses.wrapper(main)