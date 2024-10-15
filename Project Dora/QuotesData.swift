//
//  QuotesData.swift
//  Project Dora
//
//  Created by Dayan Abdulla on 10/10/24.
//
//
import Foundation

// Arrays for each category of quotes
let happyQuotes = [
    "Stay positive, and let your optimism light up the day.",
    "Happiness is a choice, so choose to focus on the good.",
    "Smile more, for it brings joy to both you and those around you.",
    "Find joy in the little things, and happiness will always be near.",
    "Your happiness is in your hands, take control and embrace it.",
    "Gratitude unlocks the door to lasting happiness.",
    "A joyful heart brightens even the darkest moments.",
    "Happiness grows when shared with others.",
    "Choose happiness every morning and carry it throughout the day.",
    "Let laughter be your daily companion and watch happiness grow."
]
let motivatedQuotes = [
    "Strive for progress, not perfection.",
    "Dream big and dare to fail.",
    "I am strong, confident, and motivated.",
    "I trust in my ability to overcome obstacles.",
    "I persevere, no matter how challenging.",
    "I am capable and will take action today.",
    "Every challenge is an opportunity for growth.",
    "I uplift others with my positivity and energy.",
    "I find joy in everything I do.",
    "I choose positivity, strength, and resilience."
]

let mellowQuotes = [
    "Take it easy and let go of what's beyond control.",
    "Stay calm, for peace is found in stillness.",
    "Breathe deeply, allowing tension to melt away.",
    "Let your mind settle, and clarity will follow.",
    "Serenity comes from within, embrace the quiet.",
    "Slow down, and appreciate the beauty of the present moment.",
    "In silence, the mind finds its true balance.",
    "Peace flows in when you release the need to rush.",
    "Pause, reflect, and let tranquility guide your thoughts.",
    "In the midst of chaos, find your inner calm."
]

let upsetQuotes = [
    "It’s okay to feel upset; emotions are part of the healing process.",
    "Take your time, and don't rush through your feelings.",
    "Feel what you need to feel, and allow yourself space to process.",
    "This too shall pass; tough moments never last forever.",
    "Storms make trees take deeper roots, and challenges strengthen you.",
    "Healing takes time, be patient with yourself.",
    "Embrace the storm, for calm always follows.",
    "Allow yourself to grieve; it's a step toward healing.",
    "Sometimes it's okay to just breathe and let things be.",
    "Even in darkness, know that light is waiting to break through."
]

let allQuotes = happyQuotes + motivatedQuotes + mellowQuotes + upsetQuotes

func getRandomQuote() -> String {
    return allQuotes.randomElement()!
}

let randomQuote = getRandomQuote()

