# Project Context: PostStamp

## Overview

PostStamp is an iOS application that transforms personal photos into collectible postage stamps and postcards.

The app combines photography, travel journaling, collecting, and memory preservation. Instead of simply storing photos in a gallery, users build themed collections of memories represented as stamps.

The goal is to make photography feel like collecting meaningful artifacts rather than accumulating files.

---

## Target Platform

* iOS
* Swift
* SwiftUI
* MVVM architecture
* Modern Swift concurrency (async/await)
* SwiftData for local persistence
* Modular and scalable architecture
* Testable codebase

---

## Core User Experience

A user takes or imports a photo.

The application generates a stamp-like card containing:

* Photo
* Date
* Location
* Stamp style
* Optional note or description

The stamp is then added to one or more albums.

Users gradually build collections of memories, places, and experiences.

The experience should feel similar to collecting stamps, postcards, travel journals, and photo albums combined.

---

## Main Features

### Photo Capture

Users can:

* Take photos using the device camera
* Import photos from the photo library
* Edit basic metadata

### Stamp Generation

Every photo becomes a collectible stamp.

Each stamp contains:

* Unique identifier
* Photo
* Creation date
* Location
* Title
* Description
* Stamp design

### Albums

Users can organize stamps into albums.

Examples:

* Countries visited
* Cities visited
* Nature
* Food
* Family
* Events
* Personal custom albums

A stamp may belong to multiple albums.

### Collections

The app encourages collecting.

Examples:

* Visit 10 cities
* Complete a country album
* Create 100 stamps
* Collect memories from every season

### Search

Users can search by:

* Title
* Location
* Date
* Album
* Tags

### Favorites

Users can mark special stamps as favorites.

---

## Non-Functional Goals

The application should:

* Work offline
* Be responsive
* Support future cloud synchronization
* Support future AI features
* Follow SOLID principles
* Follow clean architecture concepts
* Remain easy to extend

---

## Architectural Goals

The project exists partly as a learning project.

The codebase should intentionally demonstrate:

### OOP Principles

* Encapsulation
* Abstraction
* Polymorphism
* Composition over inheritance
* Dependency inversion

### SOLID Principles

* SRP
* OCP
* LSP
* ISP
* DIP

### Design Patterns

The project should use design patterns only when they solve real problems.

Potential patterns:

* Repository Pattern
* Factory Pattern
* Builder Pattern
* Strategy Pattern
* Observer Pattern
* Coordinator Pattern
* Dependency Injection
* Command Pattern
* State Pattern

---

## Future AI Features

Potential future features:

* Automatic photo tagging
* Location-based categorization
* Memory summaries
* AI-generated postcard descriptions
* AI album recommendations
* AI travel journal generation

The architecture should remain flexible enough to support these features later.

---

## Development Philosophy

1. Start simple.
2. Avoid premature optimization.
3. Introduce patterns only when justified.
4. Prefer readability over cleverness.
5. Build features incrementally.
6. Keep business logic separate from UI.
7. Prioritize maintainability and testability.

Whenever proposing code, architecture, or features, explain:

* Why the solution is appropriate.
* Which design principles are being applied.
* Whether a design pattern is actually necessary.

