<script setup>
import { createHighlighter } from 'shiki'
import { ShikiMagicMove } from 'shiki-magic-move/vue'
import { ref } from 'vue'

import 'shiki-magic-move/dist/style.css'

const highlighter = await createHighlighter({
  themes: ['nord'],
  langs: ['javascript', 'typescript', 'json'],
})

const code = ref(`
{
  "company": {
    "details": {
      "name": "TechCorp",
      "founded": 1995,
      "isPublic": true
    },
    "locations": {
      "headquarters": {
        "address": {
          "street": "123 Innovation Way",
          "unit": "4B",
          "city": "San Francisco",
          "state": "CA",
          "zip": "94105"
        },
        "coordinates": {
          "lat": 37.7749,
          "lng": -122.4194
        }
      },
      "branches": {
        "europe": {
          "primary": {
            "city": "London",
            "employees": 250,
            "opened": "2020-01-15"
          },
          "secondary": {
            "city": "Berlin",
            "employees": 120,
            "opened": "2021-03-01"
          }
        },
        "asia": {
          "primary": {
            "city": "Tokyo",
            "employees": 180,
            "opened": "2019-11-30"
          }
        }
      }
    },
  }
}
`)

function animate() {
  code.value = `
company.details.name=TechCorp
company.details.founded=1995
company.details.isPublic=true
company.locations.headquarters.address.street=123 Innovation Way
company.locations.headquarters.address.unit=4B
company.locations.headquarters.address.city=San Francisco
company.locations.headquarters.address.state=CA
company.locations.headquarters.address.zip=94105
company.locations.headquarters.coordinates.lat=37.7749
company.locations.headquarters.coordinates.lng=-122.4194
company.locations.branches.europe.primary.city=London
company.locations.branches.europe.primary.employees=250
company.locations.branches.europe.primary.opened=2020-01-15
company.locations.branches.europe.secondary.city=Berlin
company.locations.branches.europe.secondary.employees=120
company.locations.branches.europe.secondary.opened=2021-03-01
company.locations.branches.asia.primary.city=Tokyo
company.locations.branches.asia.primary.employees=180
company.locations.branches.asia.primary.opened=2019-11-30
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
