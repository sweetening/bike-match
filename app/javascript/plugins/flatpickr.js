import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";
import "flatpickr/dist/flatpickr.min.css";

require("flatpickr/dist/themes/dark.css");

flatpickr(".datepicker", {
  minDate: "today",
  dateFormat: "d-m-Y",
  "plugins": [new rangePlugin({ input: "#secondRangeInput"})]
})
