<template>
  <div id="experience" class="main">
    <h2 class="sticky-title">
      ... <span class="h2 accented-heading">among other things</span>.
    </h2>

    <div
      v-for="(experience, index) in experiences"
      :key="`experience-${index}`"
      class="experience-card"
    >
      <h6 class="exp-title">{{ experience.title }}</h6>
      <p class="exp-details">
        {{ experience.company }} &bull; {{ experience.date }}
      </p>

      <p class="exp-description">{{ experience.desc }}</p>
    </div>
  </div>
</template>

<script>
export default {
  name: "ExperienceSection",
  data() {
    return {
      experiences: [
        {
          title: "Digital Development Staffer, Developer",
          company: "The GUIDON",
          date: "Since October 2021",
          desc: "Creates interactive articles under the organization using modern frameworks.",
        },
        {
          title: "Associate Vice President for Development Projects",
          company: "Computer Society of the Ateneo",
          date: "Since August 2021",
          desc: "Manages and oversees the teams who are assigned to client projects, and manages the website of the organization",
        },
        {
          title: "Senior Developer",
          company: "Google Developer Student Clubs Loyola",
          date: "Since August 2020",
          desc: "Created a mobile application to help students in their overall productivity needs.",
        },
      ],
    };
  },
};
</script>

<style scoped>
#experience {
  max-width: 1440px;

  padding: 0 0 128px;
}

.sticky-title {
  position: sticky;
  top: 0;

  margin: 0 0 128px 64px;
}

.experience-card {
  border-left: 8px solid var(--darker-blue);

  width: 896px;

  padding: 8px 72px 24px 32px;
  margin: 0 auto 32px;

  background-color: var(--lighter-blue);
}

.experience-card:last-child {
  margin-bottom: 0;
}

.experience-card .exp-title {
  margin: 0 0 8px;
}

.experience-card .exp-details {
  margin: 0 0 24px;

  font-weight: 500;
}

.experience-card .exp-description {
  margin: 0;
}
</style>
