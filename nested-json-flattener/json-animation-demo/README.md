# Shiki Magic Move Demo

This project demonstrates how to use the [Shiki Magic Move](https://github.com/shikijs/shiki-magic-move) library to create smooth animations between different code states.

## Features

- Basic code animation example
- JSON structure animation example
- Smooth transitions between different code states
- Syntax highlighting with Shiki

## Project Setup

```bash
# Install dependencies
npm install

# Start development server
npm run dev

# Build for production
npm run build
```

## How It Works

The project uses Vue 3 with the Shiki Magic Move library to create smooth animations between different code states. The animations are powered by the `ShikiMagicMove` component, which takes care of the transitions.

### Components

1. **CodeAnimator.vue**: A simple example that animates between two JavaScript code snippets.
2. **JsonAnimator.vue**: A more advanced example that cycles through different JSON states.

## Customization

You can customize the animations by modifying the following options:

- `duration`: Animation duration in milliseconds
- `stagger`: Delay between animating each line
- `lineNumbers`: Whether to show line numbers

For more options, check the [Shiki Magic Move documentation](https://github.com/shikijs/shiki-magic-move).
