<template>
  <svg
    v-if="size == 16"
    width="16"
    height="16"
    viewBox="0 0 16 16"
    fill="none"
    xmlns="http://www.w3.org/2000/svg"
  >
    <path
      d="M10.75 1.75H14.25V5.25M8.25 2.75H2.75V13.25H13.25V7.75L8.25 2.75ZM13.25 2.75L7.75 8.25L13.25 2.75Z"
      :stroke="`${color}`"
      stroke-width="1.5"
      stroke-linecap="round"
      stroke-linejoin="round"
    />
  </svg>
  <svg
    v-if="size == 24"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    xmlns="http://www.w3.org/2000/svg"
  >
    <path
      d="M16.125 2.625H21.375V7.875M12.375 4.125H4.125V19.875H19.875V11.625L12.375 4.125ZM19.875 4.125L11.625 12.375L19.875 4.125Z"
      :stroke="`${color}`"
      stroke-width="2.25"
      stroke-linecap="round"
      stroke-linejoin="round"
    />
  </svg>

  <svg
    v-if="size == 32"
    width="32"
    height="32"
    viewBox="0 0 32 32"
    fill="none"
    xmlns="http://www.w3.org/2000/svg"
  >
    <path
      d="M21.5 3.5H28.5V10.5M16.5 5.5H5.5V26.5H26.5V15.5L16.5 5.5ZM26.5 5.5L15.5 16.5L26.5 5.5Z"
      :stroke="`${color}`"
      stroke-width="3"
      stroke-linecap="round"
      stroke-linejoin="round"
    />
  </svg>
</template>

<script>
export default {
  name: "ExternalLink",
  props: {
    color: {
      type: String,
      default: "black",
    },
    size: {
      type: Number,
      default: 16,
    },
  },
};
</script>
