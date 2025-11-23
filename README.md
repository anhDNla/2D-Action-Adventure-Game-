**🎮 2D Action-Adventure Game (Godot Engine)**

A 2D action-adventure game developed as part of a collaborative software engineering project. Built using the Godot Engine, this project focuses on core gameplay mechanics, character controls, combat, enemy AI, and engaging level design.
This game demonstrates structured software design, clean architecture, and teamwork throughout development.

**📌 Project Overview**

This game was created to explore the fundamentals of game development, including gameplay systems, player control, combat mechanics, and enemy behavior. The project emphasizes modular design, maintainability, and user experience.

**Key Features**

Smooth player movement, jumping, and combat attacks

Multiple enemies with basic AI behaviors

Level design using TileSets and scenes

Inventory, health system, and in-game interactions

Main menu and in-game UI elements

Scalable, maintainable subsystem design

Collaboration through GitHub and structured development practices

**🧩 Gameplay Systems**

✔ Player Controls

Movement (walk, run, jump, double jump)

Combat actions and animations

Responsive input handling

Collision and hitbox detection

✔ Combat Mechanics

Player and enemy attack logic

Damage application

Attack animations

Hit detection & knockback

✔ Enemy AI

Movement patterns

Basic decision-making

Health & damage states

Interaction with combat system

✔ Level & UI Design

Tile-based levels

Scene management

In-game UI (health, score, menus)

Pause menu, settings menu, and navigation

**🏗️ System Architecture (High-Level)**

The project is designed using modular subsystems: 

SDD Template (1)

Player Control Subsystem – input, movement, traversal, animations

Combat Subsystem – attack logic, damage, collision

Enemy AI Subsystem – behavior and movement patterns

Menu System – title screen, in-game menus, settings

Game State Subsystem – camera follow, health, score, level state

This structure ensures flexibility, scalability, and maintainability.

**🛠️ Tech Stack**

Engine:

Godot Engine

GDScript

Development:

Git & GitHub

VS Code / Godot Editor

Game Systems:

Player controller

Enemy AI

Level design

Combat + health

Menu/UI

Scene management

**🏃 How to Run the Game**

1. Install Godot

Download Godot (stable version):
https://godotengine.org/download

2. Clone the Repository
git clone https://github.com/anhDNla/2D-Action-Adventure-Game-.git

3. Open in Godot

Launch Godot

Click Import

Select the folder containing project.godot

Click Run Project

4. Play the Game

Use your keyboard to move, jump, and attack!

**📁 Project Structure**

/scenes               → Levels, enemies, player, UI  
/scripts              → Gameplay logic (player, enemy, combat)  
/assets               → Sprites, TileSets, animations  
project.godot         → Godot root project file  

**🧪 Testing**

Manual gameplay testing

Hitbox/collision verification

AI behavior testing

Level transitions and UI flow testing

Debug logging through Godot console

**👥 Team Contributions**

This project was built collaboratively by a 4-person team.
Roles included: gameplay programmer, level designer, system architect, and UI designer.

The SDD document contains full design details and rationale. 

SDD Template (1)

**🧠 Skills Demonstrated**

Godot Engine · GDScript · Game Design · Level Design · AI Programming · Collision Systems · Combat Logic · Software Architecture · Git · GitHub · Team Collaboration · Game Testing · Software Engineering Practices

**📜 License**

This project is for educational use and demonstration purposes.
