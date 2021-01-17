import flatpickr from "flatpickr";

const initFlatpickr = () => {
  const datePicker = document.querySelector(".datepicker")
  if (!datePicker) return ;

  flatpickr(".datepicker", { dateFormat: "d/m/Y" });
}


export { initFlatpickr };
