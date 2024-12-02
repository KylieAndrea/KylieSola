abstract class Dialog {
  void render();
  Button createButton();
}

class WindowsDialog implements Dialog {
  @override
  Button createButton() {
    return WindowsButton();
  }

  @override
  void render() {
    print('render Windows Dialog');
  }
}

class WebDialog implements Dialog {
  @override
  Button createButton() {
    return HTMLButton();
  }

  @override
  void render() {
    print('render Web Dialog');
  }
}

abstract class Button {
  void render();
  void onClick();
}

class WindowsButton extends Button {
  void render() {
    print('render Windows Button');
  }

  void onClick() {
    print('onClick Windows Button');
  }
}

class HTMLButton extends Button {
  void render() {
    print('render HTML Button');
  }

  void onClick() {
    print('onClick HTML Button');
  }
}

class MyApp {
  Dialog? dialog;

  MyApp(int num) {
    if (num == 1) {
      this.dialog = WindowsDialog();
    } else {
      this.dialog = WebDialog();
    }

    void funciona() {
      Button button = dialog!.createButton();
      button.render();
      button.onClick();
    }
  }
}

void main() {
  MyApp myApp = MyApp(1);
  myApp.funciona();
}
