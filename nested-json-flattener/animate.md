use website https://animate-code.com with some colors changing:

Chrome DevTools → Sources tab → Snippets

Create a Snippet:

Click "Snippets" > right-click > "New".

Add below code,

```js
const style = document.createElement('style');
style.innerHTML = `
.relative {
    background: rgb(40, 42, 54);
    color: white;
}

span.token.property-access {
    color: white !important;
}

span.token.maybe-class-name {
    color: white !important;
}

span.token.constant {
    color: white !important;
}

span.token.string {
    color: white !important;
}
`;
document.head.appendChild(style);
```

Right-click the snippet and choose "Run" to apply it.
