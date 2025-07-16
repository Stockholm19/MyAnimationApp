# MyAnimationApp

Учебное iOS-приложение на основе **UIKit**, демонстрирующее анимации с помощью библиотеки [SpringAnimation](https://github.com/LexDeBash/SpringAnimation).

## Описание

**MyAnimationApp** — это простой проект, в котором пользователь может запускать случайные анимации с разными параметрами:

- тип анимации (`preset`)
- кривая (`curve`)
- сила (`force`)
- длительность (`duration`)
- задержка (`delay`)

Каждое нажатие на кнопку генерирует новую случайную анимацию и запускает её на экране.

Проект построен с использованием архитектурных подходов:
- Разделение на модули: `Models`, `Services`, `ViewControllers`, `Resources`, `Storyboard`
- Использование паттерна Singleton для хранения данных (DataStore)

## Используемые технологии

- `UIKit`
- `Storyboard`
- [`SpringAnimation`](https://github.com/LexDeBash/SpringAnimation)
- Swift 5.6+
- Xcode 13+

## Скриншоты

<p float="left">
  <img src="https://i.imgur.com/LNmDwcu.jpeg" width="200">
  <img src="https://i.imgur.com/RSWEVlR.jpeg" width="200">
  <img src="https://i.imgur.com/MR0Hl9k.jpeg" width="200">
</p>
