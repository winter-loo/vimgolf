<script setup>
import CodeAnimator from './components/CodeAnimator.vue'
import JsonAnimator from './components/JsonAnimator.vue'
</script>

<template>
  <div class="container">
    <h1>Shiki Magic Move Demo</h1>
    
    <Suspense>
      <template #default>
        <div>
          <div class="demo-section">
            <h2>Basic Code Animation</h2>
            <CodeAnimator />
          </div>
        </div>
      </template>
      <template #fallback>
        <div>Loading code highlighter...</div>
      </template>
    </Suspense>
  </div>
</template>

<style scoped>
.container {
  display: flex;
  flex-direction: column;
  gap: 2rem;
}

h1 {
  margin-bottom: 2rem;
}

h2 {
  margin-bottom: 1rem;
}
</style>
