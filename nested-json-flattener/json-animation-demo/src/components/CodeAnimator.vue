<script setup>
import { createHighlighter } from 'shiki'
import { ShikiMagicMove } from 'shiki-magic-move/vue'
import { ref } from 'vue'

import 'shiki-magic-move/dist/style.css'

const highlighter = await createHighlighter({
  themes: ['nord'],
  langs: ['javascript', 'typescript', 'json'],
})

const code = ref(`{
  "hello": {
    "date": 2025,
    "name": "loo"
  }
}`)

function animate() {
  code.value = `
hello.date=2025
hello.name=loo
`
}
</script>

<template>
  <div class="code-animator">
    <ShikiMagicMove
      lang="json"
      theme="nord"
      :highlighter="highlighter"
      :code="code"
      :options="{ duration: 800, stagger: 0.3, lineNumbers: false }"
    />
    <button @click="animate">
      Animate
    </button>
  </div>
</template>

<style scoped>
</style>
