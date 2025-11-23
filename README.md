🎮 2D Action-Adventure Game (Godot Engine)

A 2D action-adventure game developed as part of a collaborative software engineering project. Built using the Godot Engine, this project focuses on gameplay mechanics, character controls, combat, enemy AI, and engaging level design.

📌 Project Overview

This game was created to explore the fundamentals of game development, including gameplay systems, player control, combat mechanics, and enemy behavior.
The project emphasizes modular design, maintainability, and user experience.

Key Features

Smooth player movement, jumping, and combat attacks

Multiple enemies with basic AI behaviors

Level design using TileSets and scenes

Inventory, health system, and in-game interactions

Main menu and in-game UI elements

Scalable, maintainable subsystem design

Collaboration using Git & GitHub

🧩 Gameplay Systems
✔ Player Controls

Walking, running, jumping, double jumping

Combat actions and animations

Responsive input handling

Hitbox and collision detection

✔ Combat Mechanics

Player and enemy attack logic

Damage calculation

Combat animations

Knockback and hit detection

✔ Enemy AI

Movement patterns

Basic decision-making

Health and damage states

Interaction with combat system

✔ Level & UI Design

Tile-based levels

Scene transitions

In-game UI (health bar, score display, menus)

Pause menu and settings menu

🏗️ System Architecture (High-Level)

This project follows a modular subsystem architecture:

Player Control Subsystem – input, traversal, animations

Combat Subsystem – attacks, collision, damage

Enemy AI Subsystem – behavior, movement, interaction

Menu System – title screen, settings, in-game menu

Game State Subsystem – camera, score, health, level state

This structure ensures flexibility, scalability, and maintainability.

🛠️ Tech Stack
Engine

Godot Engine

GDScript

Development

Git & GitHub

VS Code / Godot Editor

Game Systems

Player controller

Enemy AI

Level design

Combat + health system

Menu/UI

Scene management

🏃 How to Run the Game
1. Install Godot

Download the stable version:
https://godotengine.org/download

2. Clone the Repository
git clone https://github.com/anhDNla/2D-Action-Adventure-Game-.git

3. Open Project

Launch Godot

Click Import

Select the folder containing project.godot

Click Run Project

4. Play!

Use your keyboard to move, jump, and attack.

📁 Project Structure
/scenes          → Levels, enemies, player, UI
/scripts         → Player, enemy, and combat logic
/assets          → Sprites, TileSets, animations
project.godot    → Root Godot project file

🧪 Testing

Manual gameplay testing

Hitbox/collision checks

AI behavior tests

Scene transition testing

Debug logs via console

👥 Team Contributions

Developed by a 4-person team with roles including:

Gameplay programmer

Level designer

System architect

UI designer

Full design details are available in the Software Design Document (SDD).

🧠 Skills Demonstrated

Godot Engine · GDScript · Game Design · Level Design · AI Programming · Collision Systems · Combat Logic · Software Architecture · Git · GitHub · Team Collaboration · Game Testing · Software Engineering Practices

📜 License

This project is for educational and demonstration purposes.
