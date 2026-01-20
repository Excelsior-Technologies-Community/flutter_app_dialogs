# 🧩 AppDialog – Flutter Custom Dialog Library

`AppDialog` is a simple, reusable Flutter dialog widget designed for **custom UI dialogs** with configurable background colors and fully customizable content.

This widget can be used as a base dialog in apps or extracted into a reusable Flutter package/library.

---

## ✨ Features

* ✅ Custom background color
* ✅ Custom surface tint color (Material 3)
* ✅ Fully customizable dialog content
* ✅ Default fallback UI if no custom widget is provided
* ✅ Uses Flutter `Dialog` widget
* ✅ Clean & lightweight

---
## Preview

![shared image (5)](https://github.com/user-attachments/assets/2e55fbe7-8019-47f5-a548-f0b34f42d2f7)

---
## 📦 Installation

### Local usage

Simply copy `app_dialog.dart` into your project:

```
lib/widgets/app_dialog.dart
```

### Package usage (if using as library)

```yaml
dependencies:
  flutter_image_compression:
    git:
      url: https://github.com/Excelsior-Technologies-Communitye/flutter_app_dialogs.git
```

Then run:

```
flutter pub get
```

---

## 📁 File Structure

```
lib/
 ├─ app_dialog.dart
```

---

## 🚀 Basic Usage

```dart
showDialog(
  context: context,
  builder: (context) {
    return AppDialog(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
    );
  },
);
```

---

## 🧩 Custom Content Usage

```dart
showDialog(
  context: context,
  builder: (context) {
    return AppDialog(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      widget: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Custom Dialog Title'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Close'),
            ),
          ],
        ),
      ),
    );
  },
);
```

---

## 📊 Properties Table

| Property           | Type      | Required | Description                                    |
| ------------------ | --------- | -------- | ---------------------------------------------- |
| `backgroundColor`  | `Color`   | ✅ Yes    | Background color of the dialog                 |
| `surfaceTintColor` | `Color`   | ✅ Yes    | Surface tint color (Material 3 effect)         |
| `widget`           | `Widget?` | ❌ No     | Custom widget to replace the default dialog UI |

---

## 🧠 Default Dialog Behavior

If `widget` is **not provided**, the dialog shows:

* Close icon (top-right)
* Title placeholder text
* Two action buttons

This makes `AppDialog` usable out-of-the-box and also fully customizable when needed.

---

## 🎨 Customization Tips

* Wrap your custom widget with `Padding` for spacing
* Use `Column(mainAxisSize: MainAxisSize.min)` to avoid full-height dialogs
* Control dismissal using `Navigator.pop(context)`

---

## 📄 License
```
Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy
of this Flutter Image Compression library and associated documentation files
(the “Software”), to deal in the Software without restriction, including without
limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE, AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES, OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT, OR OTHERWISE, ARISING FROM,
OUT OF, OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
