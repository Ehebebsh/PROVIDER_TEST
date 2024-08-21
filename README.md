# 🗂️ Provider 상태관리 실습 앱

이 프로젝트는 **Provider**를 이용한 상태관리(State Management)를 실습하기 위한 간단한 Flutter 앱입니다. Provider는 Flutter에서 상태 관리를 쉽게 할 수 있도록 도와주는 패키지로, 앱의 상태를 효율적으로 관리하고, 상태 변경에 따라 UI를 업데이트하는 방법을 배우는 데 중점을 둡니다.

## 🛠️ 1. 실행 과정

### 1.1 패키지 설치
<details>
<summary>Provider 패키지 설치</summary>
<div markdown="1">

Provider를 사용하여 상태관리를 구현하기 위해 **provider** 패키지를 사용합니다. 패키지 설치는 아래 링크를 통해 가능합니다:

- **패키지 링크**: [provider](https://pub.dev/packages/provider)

```yaml
dependencies:
  provider: ^6.0.0
```

</div>
</details>

### 1.2 상태관리 구현
<details>
<summary>Provider를 이용한 상태관리 구현 예시</summary>
<div markdown="1">
아래 예제는 사용자가 텍스트 필드에 입력한 이름을 기반으로 `User` 객체의 상태를 업데이트하는 방법을 보여줍니다. 여기서 중요한 점은 `listen: false`를 통해 `Provider`가 상태 변화를 자동으로 감지하지 않도록 설정했다는 것입니다.
  
  ```dart
  Provider.of<UserProvider>(context, listen: false)
                    .updateUser(User(name: value, email: 'example@email.com'));
              },
  ```
</div>
</details>

<details>
<summary>참고 블로그</summary>
<div markdown="1">
https://velog.io/@gwi060722/Flutter-provider-%EC%83%81%ED%83%9C%EA%B4%80%EB%A6%AC
</div>
</details>
🎥 2. 실행 화면
아래는 앱 실행 화면의 예시입니다. 카운터를 증가시키는 간단한 상태관리 기능이 어떻게 작동하는지 확인할 수 있습니다.

<p align="center">
  <img src="https://github.com/user-attachments/assets/your-image-here" alt="Provider Demo" width="300">
</p>
