<template>
  <form id="contact-form">
    <label for="cf-email" class="captionText">Email</label>
    <input type="text" id="cf-email" required />

    <label for="cf-name" class="captionText">Full Name</label>
    <input type="text" id="cf-name" required />

    <label for="cf-subject" class="captionText">Subject</label>
    <input type="text" id="cf-subject" required />

    <label for="cf-message" class="captionText">Message</label>
    <textarea id="cf-message" required />

    <button type="button" class="captionText" @click="onSubmit()">
      Submit
    </button>
  </form>
</template>

<script>
export default {
  name: "ContactForm",
  methods: {
    onSubmit() {
      //
    },
  },
};
</script>

<style scoped>
#contact-form {
  width: 100%;
  max-width: 768px; /* 896px */

  background-color: var(--lighter-blue);
  border-radius: 16px;

  padding: 64px;
}

#contact-form > * {
  display: block;
}

label {
  margin-bottom: 4px;
}

input,
textarea {
  width: 100%;

  margin-bottom: 32px;
  padding: 8px 16px;

  border: 1px solid var(--navy-blue);
  border-radius: 4px;
}

textarea {
  height: 256px;
  resize: none;
}

button {
  color: white;
  font-weight: bold;

  background-color: var(--dark-blue);

  padding: 16px 32px;
  margin: 0 0 0 auto;

  border: none;
  border-radius: 4px;

  cursor: pointer;
}
</style>
