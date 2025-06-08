<script setup>
import { createHighlighter } from 'shiki'
import { ShikiMagicMove } from 'shiki-magic-move/vue'
import { ref } from 'vue'

import 'shiki-magic-move/dist/style.css'

const highlighter = await createHighlighter({
  themes: ['dracula'],
  langs: ['rust'],
})

const initialCode = `
pub struct User {
    id: u64,
    firstName: String,
    lastName: String,
    age: u32,
    phoneNumber: String,
    address: String,
    postalCode: String,
    occupation: String,
    company: String,
    isActive: bool,
    registrationDate: chrono::NativeDateTime,
    lastLoginDate: chrono::NativeDateTime,
    preferences: HashMap<String, String>,
}
`;

const code = ref(initialCode);

function animate() {
  code.value = `
pub struct User {
    id: u64,
    first_name: String,
    last_name: String,
    age: u32,
    phone_number: String,
    address: String,
    postal_code: String,
    occupation: String,
    company: String,
    is_active: bool,
    registration_date: chrono::NativeDateTime,
    last_login_date: chrono::NativeDateTime,
    preferences: HashMap<String, String>,
}
`
}
function reset() {
  code.value = initialCode;
}
</script>

<template>
  <div class="code-animator">
    <ShikiMagicMove
      lang="rust"
      theme="dracula"
      :highlighter="highlighter"
      :code="code"
      :options="{ splitTokens: true, enhanceMatching: true, duration: 500, stagger: 5, lineNumbers: false }"
    />
    <button @click="animate">
      Animate
    </button>
    <button @click="reset">
      Reset
    </button>
  </div>
</template>

<style scoped>
</style>
