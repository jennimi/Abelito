//
//  ProfileViewModel.swift
//  Abelito
//
//  Created by Karyna Budi Sanjaya on 09/05/25.
//

import Foundation

class ProfileViewModel: ObservableObject {
    @Published var characters: [Character] = [
        Character(
            skin: Skin(name: "Abel Uzumaki", image: "AbelNaruto", thumbnail: "ThumbnailNaruto", background: "BackgroundNaruto"),
            name: "Abel Uzumaki",
            title: "Troubel Maker",
            subtitle: "Loves Watching",
            level: 6,
            stats: [
                Stat(label: "Intelligence", value: 1.0),
                Stat(label: "Stamina", value: 0.8),
                Stat(label: "Charisma", value: 1.0),
                Stat(label: "Something", value: 0.2)
            ],
            skills: [
                Skill(
                    name: "Algorithm Rasengan",
                    image: "SkillNaruto1",
                    description: "Abel condenses raw logic and data structures into a swirling sphere of algorithmic energy. Once released, it breaks down even the toughest coding bugs and architectural flaws with surgical precision. Mastered through years of problem-solving and an obsession with clean algorithm design.",
                    stats: [
                        Stat(label: "Intelligence", value: 1.0),
                        Stat(label: "Stamina", value: 0.8)
                    ]
                ),
                Skill(
                    name: "Procrastination Shadow Clone",
                    image: "SkillNaruto2",
                    description: "Abel summons multiple shadow clones of himself, all pretending to be productive—watching YouTube tutorials, scrolling TikTok, and making mood boards. While the real Abel quietly regenerates mental energy, these clones distract enemies and deadlines alike.",
                    stats: [
                        Stat(label: "Intelligence", value: 0.9),
                        Stat(label: "Stamina", value: 0.6)
                    ]
                ),
                Skill(
                    name: "Hashmap Genjutsu",
                    image: "SkillNaruto3",
                    description: "Using his deep understanding of data structures, Abel traps his opponents in a genjutsu maze built from key-value pairs. Every wrong access attempt resets the illusion, making escape nearly impossible unless you understand how hash collisions work.",
                    stats: [
                        Stat(label: "Intelligence", value: 1.0),
                        Stat(label: "Stamina", value: 0.7)
                    ]
                ),
                Skill(
                    name: "Sage Mode: Self-Development Form",
                    image: "SkillNaruto4",
                    description: "Abel enters a heightened state of mental clarity where he consumes 3 books at once, organizes his life goals, and even re-downloads Notion. In this mode, he gains temporary immunity to distractions, laziness, and the TikTok algorithm.",
                    stats: [
                        Stat(label: "Intelligence", value: 1.0),
                        Stat(label: "Stamina", value: 0.9)
                    ]
                ),
                Skill(
                    name: "Interstellar Teleportation",
                    image: "SkillNaruto5",
                    description: "Drawing inspiration from his favorite movie *Interstellar*, Abel bends time and space to escape unproductive environments. Whether it's warping to a café for deep work or hopping timelines to avoid group projects, he always lands where his potential is maximized.",
                    stats: [
                        Stat(label: "Intelligence", value: 1.0),
                        Stat(label: "Stamina", value: 0.8)
                    ]
                )
            ],
            accentColor: .colorNaruto,
            highlight1: .yellow,
            highlight2: .red,
            era: Era(
                title: "The Naruto Era",
                backstory: "At age 6, Abel imagined himself as a hidden leaf shinobi. Every day was a mission—dodging homework like kunai, drawing Rasengan spirals in his math notebook, and sneaking 'ninja training' during recess. This was when his creativity exploded and the foundation of his imaginative mind was laid.",
                coreMemories: [
                    CoreMemory(
                        emoji: "🏀",
                        title: "A Failed Crossover",
                        description: "Abel's dad showed him how to dribble. It was hard. That made it cool."
                    ),
                    CoreMemory(
                        emoji: "🕷️",
                        title: "The Spidey Phase",
                        description: "He wore the mask. He had the pillow. He *was* Spider-Man."
                    ),
                    CoreMemory(
                        emoji: "🚴‍♂️",
                        title: "The Weekend Ride",
                        description: "Taught himself how to bike. Wanted to ride to school — rejected. Settled for conquering the big roads with friends every weekend."
                    )
                ]
            )
        ),
        Character(
            skin: Skin(name: "BasketAbel", image: "AbelBasket", thumbnail: "ThumbnailBasket", background: "BackgroundBasket"),
            name: "Abel Basket",
            title: "The Court Strategist",
            subtitle: "9 to 15, the grind was real",
            level: 15,
            stats: [
                Stat(label: "Intelligence", value: 0.9),
                Stat(label: "Stamina", value: 1.0),
                Stat(label: "Charisma", value: 0.8),
                Stat(label: "Leadership", value: 1.0)
            ],
            skills: [
                Skill(
                    name: "Fast Break Execution",
                    image: "SkillBasket1",
                    description: "Abel sprints the court in transition, identifying openings like a tactician. His speed, court awareness, and anticipation turn defense into instant offense.",
                    stats: [
                        Stat(label: "Stamina", value: 1.0),
                        Stat(label: "Intelligence", value: 0.8)
                    ]
                ),
                Skill(
                    name: "Zone Breaker",
                    image: "SkillBasket2",
                    description: "Trained against tough defenses, Abel learned to collapse zones with well-timed cuts and passes. His experience reading gaps makes him a reliable playmaker.",
                    stats: [
                        Stat(label: "Intelligence", value: 0.9),
                        Stat(label: "Charisma", value: 0.7)
                    ]
                ),
                Skill(
                    name: "Rebound Instinct",
                    image: "SkillBasket3",
                    description: "Though not the tallest, Abel reads the arc of missed shots like muscle memory. Positioning, timing, and hustle define his rebounding skill.",
                    stats: [
                        Stat(label: "Stamina", value: 0.9),
                        Stat(label: "Leadership", value: 0.8)
                    ]
                ),
                Skill(
                    name: "Locker Room Glue",
                    image: "SkillBasket4",
                    description: "He doesn't just play. He leads. Whether rallying the team after a loss or pushing during drills, Abel's presence holds teams together.",
                    stats: [
                        Stat(label: "Charisma", value: 1.0),
                        Stat(label: "Leadership", value: 1.0)
                    ]
                ),
                Skill(
                    name: "Iron Will Recovery",
                    image: "SkillBasket5",
                    description: "After suffering an injury, Abel didn’t quit—he adapted. His mindset shifted from chasing wins to preserving the love of the game. He trains smarter, plays wiser, and lifts others who face setbacks.",
                    stats: [
                        Stat(label: "Leadership", value: 0.9),
                        Stat(label: "Stamina", value: 0.7)
                    ]
                )
                
            ],
            accentColor: .colorBasket,
            highlight1: .orange,
            highlight2: .red,
            era: Era(
                title: "The Basketball Era",
                backstory: "From 9 to 15, basketball wasn’t just a game—it was Abel’s daily grind. After transferring to IPH, he began training three times a week. At first, he struggled to keep up, but with time, he caught up—and surpassed expectations. In 4th grade, he joined his first tournament: Cita Hati Cup. They lost. But the hunger stuck. He competed with friends, played harder each year. In 6th grade, Abel played JRBL and placed runner-up. Though they lost the final by just a few points, the image of teammates crying remains with him. Now, even with an old injury limiting his mobility, Abel still plays. Not for trophies, but for the love.",
                coreMemories: [
                    CoreMemory(
                        emoji: "🏆",
                        title: "Cita Hati Cup Debut",
                        description: "His first basketball tournament—class 4. They lost, but it lit the fire."
                    ),
                    CoreMemory(
                        emoji: "🥈",
                        title: "JRBL Runner-Up",
                        description: "Class 6, his team placed second. A big win for the underdogs."
                    ),
                    CoreMemory(
                        emoji: "😭",
                        title: "The Final Loss",
                        description: "Lost by a small margin. The locker room was filled with tears. A memory etched forever."
                    ),
                ]
            )
        ),
        Character(
            skin: Skin(name: "Abel the Creator", image: "AbelCreator", thumbnail: "ThumbnailCreator", background: "BackgroundCreator"),
            name: "Koko Abel",
            title: "Curious Individual",
            subtitle: "Exploring Data & Media",
            level: 11,
            stats: [
                Stat(label: "Intelligence", value: 1.0),
                Stat(label: "Charisma", value: 0.9),
                Stat(label: "Creativity", value: 1.0),
                Stat(label: "Focus", value: 0.6)
            ],
            skills: [
                Skill(
                    name: "Algorithm Artisan",
                    image: "SkillCreator1",
                    description: "Abel builds data structures and algorithms from scratch—not out of necessity, but joy. A lover of pure logic, he sees each function like a puzzle waiting to be cracked.",
                    stats: [
                        Stat(label: "Intelligence", value: 1.0),
                        Stat(label: "Focus", value: 0.8)
                    ]
                ),
                Skill(
                    name: "Studio Split Personality",
                    image: "SkillCreator2",
                    description: "From TikToks to podcasts, Abel juggled editing timelines, writing scripts, and running shoots. Whether it's shortform content or student-led drama series, he made it all feel personal.",
                    stats: [
                        Stat(label: "Creativity", value: 1.0),
                        Stat(label: "Charisma", value: 0.8)
                    ]
                ),
                Skill(
                    name: "Council Content Captain",
                    image: "SkillCreator3",
                    description: "As part of the Student Council media team, he introduced students to the creative industry—bridging tech with storytelling across reels, events, and digital presence.",
                    stats: [
                        Stat(label: "Charisma", value: 0.9),
                        Stat(label: "Creativity", value: 0.9)
                    ]
                ),
                Skill(
                    name: "Verbal Dismantler",
                    image: "SkillCreator5",
                    description: "Trained in national-level debate, Abel could break down arguments with logic and sharp delivery. He mastered rhetoric—but preferred to use it to explain, not to win.",
                    stats: [
                        Stat(label: "Intelligence", value: 0.9),
                        Stat(label: "Charisma", value: 1.0)
                    ]
                ),
                Skill(
                    name: "Debugging Aversion",
                    image: "SkillCreator4",
                    description: "UI bugs? Console logs? No thanks. Abel prefers math over markup and Python over pixels. You’ll find him deep in NumPy—far from HTML hell.",
                    stats: [
                        Stat(label: "Intelligence", value: 1.0),
                        Stat(label: "Focus", value: 0.6)
                    ]
                )
            ],
            accentColor: .colorCreator,
            highlight1: .green,
            highlight2: .blue,
            era: Era(
                title: "The Content Creator Era",
                backstory: "In his early days as a Data Science student at Petra, Abel explored far beyond the classroom. With a love for business and math, he found joy in solving algorithmic puzzles—coding structures from scratch just for the thrill. Though he joined a competitive programming club and even debated at a national level, he quickly learned that he valued collaborative, creative spaces over cutthroat competition. Instead, he dove into content creation. From running TikTok and podcast studios to introducing students to the creative industry through reels and drama series, Abel merged logic with storytelling—and discovered the kind of work that truly energized him.",
                coreMemories: [
                    CoreMemory(
                        emoji: "🎙️",
                        title: "Podcast Producer",
                        description: "Hosted and edited student-led podcasts introducing big ideas to campus audiences."
                    ),
                    CoreMemory(
                        emoji: "🎬",
                        title: "Drama Series Director",
                        description: "Led a mini drama series project to spark student interest in the creative industry."
                    ),
                    CoreMemory(
                        emoji: "🧠",
                        title: "Algorithm Deep Dive",
                        description: "Coded A* search and custom data structures for fun—just to see if he could."
                    ),
                    CoreMemory(
                        emoji: "🎤",
                        title: "Debate Nationals",
                        description: "Joined debate up to national level. While he excelled at it, he realized he disliked the aggressive competitive energy it brought."
                    )
                    
                ]
            )
        ),
        Character(
            skin: Skin(name: "Abelito", image: "AbelNormal", thumbnail: "ThumbnailNormal", background: "BackgroundNormal"),
            name: "Abelito",
            title: "Abelito Faleyrio",
            subtitle: "In His Prime Era",
            level: 21,
            stats: [
                Stat(label: "Intelligence", value: 1.0),
                Stat(label: "Stamina", value: 0.8),
                Stat(label: "Charisma", value: 0.9),
                Stat(label: "Wisdom", value: 1.0)
            ],
            skills: [
                Skill(
                    name: "A* Ascension",
                    image: "SkillNormal1",
                    description: "From theory to code, Abel deconstructs complex algorithms like A* into elegant Swift or Python. A puzzle-solver at heart, he treats logic as a playground.",
                    stats: [
                        Stat(label: "Intelligence", value: 1.0),
                        Stat(label: "Focus", value: 0.8)
                    ]
                ),
                Skill(
                    name: "Hackathon Monster",
                    image: "SkillNormal2",
                    description: "Won 1st place at Hackfest with his team. Though he's sworn off the chaos of hackathons, the crown remains—and so does the insight.",
                    stats: [
                        Stat(label: "Intelligence", value: 0.9),
                        Stat(label: "Charisma", value: 0.7)
                    ]
                ),
                Skill(
                    name: "Time Mastery (WIP)",
                    image: "SkillNormal3",
                    description: "Abel’s greatest enemy is time—and he’s learning to master it. From thesis to workouts to Netflix binges, his journey is one of balance, not perfection.",
                    stats: [
                        Stat(label: "Wisdom", value: 1.0),
                        Stat(label: "Stamina", value: 0.6)
                    ]
                ),
                Skill(
                    name: "Obito's Code",
                    image: "SkillNormal4",
                    description: "Inspired by Obito Uchiha, Abel lives by the rule: never abandon your people. He may forget to reply to DMs, but his loyalty runs deep.",
                    stats: [
                        Stat(label: "Charisma", value: 1.0),
                        Stat(label: "Wisdom", value: 0.9)
                    ]
                ),
                Skill(
                    name: "Narrative Architect",
                    image: "SkillNormal5",
                    description: "From SwiftUI layouts to philosophical rants in the shower, Abel sees structure in everything. He loves timelines, story arcs, and the meaning behind the mess.",
                    stats: [
                        Stat(label: "Creativity", value: 0.9),
                        Stat(label: "Intelligence", value: 0.8)
                    ]
                )
                
                
            ],
            accentColor: .colorNormal,
            highlight1: .green,
            highlight2: .cyan,
            era: Era(
                title: "The Prime Era",
                backstory: "As a final-year Data Science student at Petra Christian University, Abel has become a paradox in motion—chaotic but intentional, driven yet self-aware. He interned at Apple, explored Swift development, and won 1st place in Hackfest. He lifts weights to recover from an old injury and codes A* search from scratch in his free time—not for class, but because he enjoys the logic. He's reestablishing his reading habit, learning through Brilliant, and reflecting on everything from time control to storytelling structure. Abel balances thesis, TikTok, self-discovery, and dreams of being a dad someday. He's the kind of person who quotes Obito Uchiha unironically and recommends 'Atomic Habits' in the same breath.",
                coreMemories: [
                    CoreMemory(
                        emoji: "🍎",
                        title: "Apple Intern",
                        description: "Interned at Apple while balancing final semester projects. A milestone in both growth and confidence."
                    ),
                    CoreMemory(
                        emoji: "🏆",
                        title: "Hackfest Victory",
                        description: "Won 1st place in a national-level hackathon. It was fun—but chaotic. Never again (probably)."
                    ),
                    CoreMemory(
                        emoji: "🕰️",
                        title: "7:15 AM Reset",
                        description: "Started his days with Apple Fitness. Rediscovered discipline, one leg day at a time."
                    ),
                    CoreMemory(
                        emoji: "🎧",
                        title: "LANY & Late Nights",
                        description: "Sometimes healing looks like blasting Wave to Earth or NIKI while reading 'The Three-Body Problem.'"
                    )
                ]
            )
        )
        
        
        
        
    ]
    //
    //    @Published var profile: Profile = Profile(
    //        name: "Abelito Faleyrio",
    //        title: "The Algorithm Sage",
    //        subtitle: "The Thinker Who Codes From",
    //        level: 21,
    //        stats: [
    //            Stat(label: "Intelligence", value: 1.0),
    //            Stat(label: "Stamina", value: 0.8),
    //            Stat(label: "Charisma", value: 1.0),
    //            Stat(label: "Something", value: 0.2)
    //        ],
    //        skills: [
    //            Skill(
    //                name: "Algorithm Rasengan",
    //                image: "Glasses",
    //                description: "Abel condenses raw logic and data structures into a swirling sphere of algorithmic energy. Once released, it breaks down even the toughest coding bugs and architectural flaws with surgical precision. Mastered through years of problem-solving and an obsession with clean algorithm design.",
    //                stats: [
    //                    Stat(label: "Intelligence", value: 1.0),
    //                    Stat(label: "Stamina", value: 0.8)
    //                ]
    //            ),
    //            Skill(
    //                name: "Procrastination Shadow Clone",
    //                image: "Glasses",
    //                description: "Abel summons multiple shadow clones of himself, all pretending to be productive—watching YouTube tutorials, scrolling TikTok, and making mood boards. While the real Abel quietly regenerates mental energy, these clones distract enemies and deadlines alike.",
    //                stats: [
    //                    Stat(label: "Intelligence", value: 0.9),
    //                    Stat(label: "Stamina", value: 0.6)
    //                ]
    //            ),
    //            Skill(
    //                name: "Hashmap Genjutsu",
    //                image: "Glasses",
    //                description: "Using his deep understanding of data structures, Abel traps his opponents in a genjutsu maze built from key-value pairs. Every wrong access attempt resets the illusion, making escape nearly impossible unless you understand how hash collisions work.",
    //                stats: [
    //                    Stat(label: "Intelligence", value: 1.0),
    //                    Stat(label: "Stamina", value: 0.7)
    //                ]
    //            ),
    //            Skill(
    //                name: "Sage Mode: Self-Development Form",
    //                image: "Glasses",
    //                description: "Abel enters a heightened state of mental clarity where he consumes 3 books at once, organizes his life goals, and even re-downloads Notion. In this mode, he gains temporary immunity to distractions, laziness, and the TikTok algorithm.",
    //                stats: [
    //                    Stat(label: "Intelligence", value: 1.0),
    //                    Stat(label: "Stamina", value: 0.9)
    //                ]
    //            ),
    //            Skill(
    //                name: "Interstellar Teleportation",
    //                image: "Glasses",
    //                description: "Drawing inspiration from his favorite movie *Interstellar*, Abel bends time and space to escape unproductive environments. Whether it's warping to a café for deep work or hopping timelines to avoid group projects, he always lands where his potential is maximized.",
    //                stats: [
    //                    Stat(label: "Intelligence", value: 1.0),
    //                    Stat(label: "Stamina", value: 0.8)
    //                ]
    //            )
    //        ],
    //        skins: [
    //            Skin(name: "Abel Uzumaki", image: "AbelNaruto", thumbnail: "ThumbnailNaruto", background: "BackgroundNaruto"),
    //            Skin(name: "Normal Abel", image: "AbelNormal", thumbnail: "ThumbnailNormal", background: "BackgroundNormal"),
    ////            Skin(name: "Game of Thrones", image: "AbelGOT", thumbnail: "ThumbnailGOT", background: "BackgroundGOT"),
    //            Skin(name: "Basket Abel", image: "AbelBasket", thumbnail: "ThumbnailBasket", background: "BackgroundBasket"),
    //            Skin(name: "Billiard Abel", image: "AbelBilliard", thumbnail: "ThumbnailBilliard", background: "BackgroundBilliard"),
    //            Skin(name: "Chess Strategist", image: "AbelChess", thumbnail: "ThumbnailChess", background: "BackgroundChess")
    //        ]
    //    )
}
