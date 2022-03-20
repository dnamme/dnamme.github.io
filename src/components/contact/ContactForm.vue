<template>
  <form id="contact-form">
    <label for="cf-email" class="captionText">Email</label>
    <input
      type="text"
      id="cf-email"
      v-model="email"
      required
      :readonly="submitting || submitted"
    />

    <label for="cf-name" class="captionText">Full Name</label>
    <input
      type="text"
      id="cf-name"
      v-model="name"
      required
      :readonly="submitting || submitted"
    />

    <label for="cf-subject" class="captionText">Subject</label>
    <input
      type="text"
      id="cf-subject"
      v-model="subject"
      required
      :readonly="submitting || submitted"
    />

    <label for="cf-message" class="captionText">Message</label>
    <textarea
      id="cf-message"
      v-model="message"
      required
      :readonly="submitting || submitted"
    />

    <button
      type="button"
      class="captionText"
      :disabled="submitting || submitted"
      @click="onSubmit()"
    >
      {{ submitted ? "Submitted" : submitting ? "Submitting..." : "Submit" }}
    </button>
  </form>
</template>

<script>
export default {
  name: "ContactForm",
  data() {
    return {
      submitting: false,
      submitted: false,
      email: "",
      name: "",
      subject: "",
      message: "",
    };
  },
  methods: {
    checkFields() {
      if (
        !this.email.trim() ||
        !this.name.trim() ||
        !this.subject.trim() ||
        !this.message.trim()
      ) {
        alert("Please make sure that all fields are filled in correctly.");
        return false;
      }

      return true;
    },
    onSubmit() {
      if (!this.checkFields()) return;

      const formdata = new FormData();

      formdata.append("email", this.email);
      formdata.append("name", this.name);
      formdata.append("subject", this.subject);
      formdata.append("message", this.message);

      this.submitting = true;
      fetch(
        "https://script.google.com/macros/s/AKfycbyGr6HPpM9AKQ8bp7tAY3DjkftLj-Iy174nIYzbRDJNKF2FirZ3Eh0jHyQT0KGYbxws/exec",
        { method: "POST", body: formdata }
      )
        .then(() => {
          this.submitted = true;
        })
        .catch(() => {
          alert("An unexpected error has occurred. Please try again later!");
        })
        .finally(() => {
          this.submitting = false;
        });
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

input[type="text"][readonly],
textarea[readonly] {
  color: #888888;
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

button[disabled] {
  color: #888888;
  background-color: #d8d8d8;
}

@media screen and (max-width: 1200px) {
}

@media screen and (max-width: 992px) {
  #contact-form {
    padding: 48px;
  }
}

@media screen and (max-width: 768px) {
  #contact-form {
    padding: 32px;
  }
}

@media screen and (max-width: 576px) {
}
</style>
