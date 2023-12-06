/** @type {import('tailwindcss').Config} */
export default {
  content: ["./index.html", "./src/**/*.{js,ts,jsx,tsx}"],
  theme: {
    colors: {
      gray: {
        50: "#e9e9e9",
        100: "#bbbbbb",
        200: "#9a9a9a",
        300: "#6c6c6c",
        400: "#505050",
        500: "#242424",
        600: "#212121",
        700: "#1a1a1a",
        800: "#141414",
        900: "#0f0f0f",
      },
      grey1: {
        50: "#eaeaea",
        100: "#bcbcbc",
        200: "#9c9c9c",
        300: "#6f6f6f",
        400: "#535353",
        500: "#282828",
        600: "#242424",
        700: "#1c1c1c",
        800: "#161616",
        900: "#111111",
      },
      brown: {
        50: "#ebeae9",
        100: "#bfbfba",
        200: "#a1a099",
        300: "#76746a",
        400: "#5b594d",
        500: "#323021",
        600: "#2e2c1e",
        700: "#242217",
        800: "#1c1a12",
        900: "#15140e",
      },
      brown1: {
        50: "#f0efee",
        100: "#d0ccca",
        200: "#b9b4b0",
        300: "#98928c",
        400: "#857d76",
        500: "#665c54",
        600: "#5d544c",
        700: "#48413c",
        800: "#38332e",
        900: "#2b2723",
      },
      brown2: {
        50: "#eeedec",
        100: "#c9c7c5",
        200: "#afaba9",
        300: "#8a8582",
        400: "#736d6a",
        500: "#504945",
        600: "#49423f",
        700: "#393431",
        800: "#2c2826",
        900: "#221f1d",
      },
      white: {
        50: "#fcfcfc",
        100: "#f5f5f5",
        200: "#f0f0f0",
        300: "#e9e9e9",
        400: "#e5e5e5",
        500: "#dedede",
        600: "#cacaca",
        700: "#9e9e9e",
        800: "#7a7a7a",
        900: "#5d5d5d",
      },
      yellow: {
        50: "#fdf8eb",
        100: "#faebc0",
        200: "#f7e1a2",
        300: "#f4d378",
        400: "#f1ca5d",
        500: "#eebd35",
        600: "#d9ac30",
        700: "#a98626",
        800: "#83681d",
        900: "#644f16",
      },
      yellow1: {
        50: "#fff8ea",
        100: "#fdebbf",
        200: "#fde19f",
        300: "#fcd374",
        400: "#fbca59",
        500: "#fabd2f",
        600: "#e4ac2b",
        700: "#b28621",
        800: "#8a681a",
        900: "#694f14",
      },
      yellow2: {
        50: "#fdfbf7",
        100: "#f8f3e6",
        200: "#f4edd9",
        300: "#efe4c8",
        400: "#ecdfbd",
        500: "#e7d7ad",
        600: "#d2c49d",
        700: "#a4997b",
        800: "#7f765f",
        900: "#615a49",
      },
      yellow3: {
        50: "#fdfbf7",
        100: "#f9f4e7",
        200: "#f6eedc",
        300: "#f2e7cb",
        400: "#efe2c1",
        500: "#ebdbb2",
        600: "#d6c7a2",
        700: "#a79b7e",
        800: "#817862",
        900: "#635c4b",
      },
      green: {
        50: "#f5f5e8",
        100: "#dfdfb8",
        200: "#d0cf96",
        300: "#bab966",
        400: "#adac48",
        500: "#98971a",
        600: "#8a8918",
        700: "#6c6b12",
        800: "#54530e",
        900: "#403f0b",
      },
      green1: {
        50: "#f0f5f0",
        100: "#d0e1d1",
        200: "#bad2ba",
        300: "#9abd9b",
        400: "#86b188",
        500: "#689d6a",
        600: "#5f8f60",
        700: "#4a6f4b",
        800: "#39563a",
        900: "#2c422d",
      },
      green2: {
        50: "#f4f9f2",
        100: "#dcebd6",
        200: "#cbe2c3",
        300: "#b3d4a7",
        400: "#a4cc96",
        500: "#8dbf7c",
        600: "#80ae71",
        700: "#648858",
        800: "#4e6944",
        900: "#3b5034",
      },
      green3: {
        50: "#f3f6f5",
        100: "#d9e3df",
        200: "#c6d6d0",
        300: "#acc3ba",
        400: "#9cb7ad",
        500: "#83a598",
        600: "#77968a",
        700: "#5d756c",
        800: "#485b54",
        900: "#374540",
      },
      orange: {
        50: "#fbefe7",
        100: "#f2cdb4",
        200: "#ecb490",
        300: "#e4925e",
        400: "#de7d3e",
        500: "#d65d0e",
        600: "#c3550d",
        700: "#98420a",
        800: "#763308",
        900: "#5a2706",
      },
      orange1: {
        50: "#ffedeb",
        100: "#fec7c0",
        200: "#fdaba2",
        300: "#fc8577",
        400: "#fc6d5d",
        500: "#fb4934",
        600: "#e4422f",
        700: "#b23425",
        800: "#8a281d",
        900: "#691f16",
      },
      red: {
        50: "#fae9e8",
        100: "#efbbb9",
        200: "#e89a97",
        300: "#dd6c68",
        400: "#d6504a",
        500: "#cc241d",
        600: "#ba211a",
        700: "#911a15",
        800: "#701410",
        900: "#560f0c",
      },
      red1: {
        50: "#fce6e9",
        100: "#f4b1bc",
        200: "#ef8c9b",
        300: "#e8576e",
        400: "#e43651",
        500: "#dd0426",
        600: "#c90423",
        700: "#9d031b",
        800: "#7a0215",
        900: "#5d0210",
      },
      purple: {
        50: "#f7eff3",
        100: "#e7ced9",
        200: "#dbb7c7",
        300: "#cb96ae",
        400: "#c1819e",
        500: "#b16286",
        600: "#a1597a",
        700: "#7e465f",
        800: "#61364a",
        900: "#4a2938",
      },
      pink: {
        50: "#fbf3f5",
        100: "#f2dae0",
        200: "#ebc8d1",
        300: "#e2afbd",
        400: "#dd9fb0",
        500: "#d4879c",
        600: "#c17b8e",
        700: "#97606f",
        800: "#754a56",
        900: "#593942",
      },
      blue: {
        blue: {
          50: "#f2f6f7",
          100: "#d7e2e5",
          200: "#c4d4d9",
          300: "#a9c1c7",
          400: "#99b5bd",
          500: "#7fa2ac",
          600: "#74939d",
          700: "#5a737a",
          800: "#46595f",
          900: "#354448",
        },
      },
      blue1: {
        50: "#ecf3f3",
        100: "#c5d9da",
        200: "#a9c7c8",
        300: "#82adaf",
        400: "#6a9da0",
        500: "#458588",
        600: "#3f797c",
        700: "#315e61",
        800: "#26494b",
        900: "#1d3839",
      },
    },
    extend: {},
  },
  plugins: [],
};