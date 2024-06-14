# Dokumentation für die Warehouse-App

## Überblick

Die Warehouse-App ist eine robuste, Java-basierte Webanwendung, die mit dem Spring Boot Framework und SQL entwickelt wurde. Sie bietet eine Plattform für Benutzer, um Dokumente in verschiedenen Ordnern zu verwalten und zu organisieren.

## Multiuser-Aspekt

Die Anwendung unterstützt mehrere Benutzer mit unterschiedlichen Rollen und Berechtigungen. Jeder Benutzer hat ein individuelles Profil, das mit einer oder mehreren Rollen verknüpft ist. Diese Rollen bestimmen, welche Aktionen ein Benutzer in der Anwendung ausführen kann und welche Ressourcen er zugreifen kann.

### Rollen und Berechtigungen

Es gibt mehrere Rollen in der Anwendung, darunter `USER`, `DEVELOPER`, `MANAGER`, `ADMIN`, `STAFF_MEMBER`, `OFFICE`, `ACCOUNT_MANAGER` und `CLIENT`. Jede Rolle hat spezifische Berechtigungen:

- `USER`: Benutzer mit dieser Rolle können auf ihre eigenen Dokumente zugreifen und diese verwalten.
- `DEVELOPER`: Benutzer mit dieser Rolle haben zusätzlich zu den `USER`-Berechtigkeiten auch Zugriff auf die Swagger-UI.
- `MANAGER`, `ADMIN`, `STAFF_MEMBER`, `OFFICE`, `ACCOUNT_MANAGER`, `CLIENT`: Diese Rollen haben spezifische Berechtigungen, die auf die Anforderungen ihrer jeweiligen Aufgaben abgestimmt sind.

### Ressourcenzugriff

Der Zugriff auf Ressourcen wird durch die Rollen des Benutzers bestimmt. Die Anwendung verwendet Spring Security, um den Zugriff auf Ressourcen basierend auf den Rollen des Benutzers zu steuern. Dies stellt sicher, dass Benutzer nur auf die Ressourcen zugreifen können, die für ihre Rolle zugelassen sind.

## Hervorzuhebende Merkmale

- **Sicherheit**: Die Anwendung verwendet Spring Security, um den Zugriff auf Ressourcen zu steuern und sicherzustellen, dass Benutzer nur auf die für ihre Rolle zugelassenen Ressourcen zugreifen können.
- **Dokumentenverwaltung**: Benutzer können Dokumente in verschiedenen Ordnern verwalten. Jedes Dokument hat eine Größe und ist einem bestimmten Ordner zugeordnet. Dies ermöglicht eine effiziente Organisation und Verwaltung von Dokumenten.
- **Swagger-UI**: Die Anwendung enthält eine Swagger-UI, die eine visuelle Darstellung der API der Anwendung bietet. Der Zugriff auf die Swagger-UI ist auf Benutzer mit der Rolle `DEVELOPER` beschränkt. Dies ermöglicht es Entwicklern, die API der Anwendung leicht zu verstehen und zu nutzen.

## Fazit

Die Warehouse-App ist eine sichere und effiziente Lösung für die Verwaltung von Dokumenten. Mit Rollen und Berechtigungen können Benutzer auf eine Weise interagieren, die ihren spezifischen Bedürfnissen entspricht. Die Anwendung bietet eine robuste Sicherheitsarchitektur und eine intuitive Benutzeroberfläche, die die Verwaltung von Dokumenten vereinfacht.