
const toggleTrash = () => {
  const button = document.querySelector(".toggle-trash");
  const cans = document.querySelectorAll(".throw");
  console.log(cans)
  button.addEventListener ('click', () => {
    cans.forEach = ((can) => {
      console.log(can)
      can.classList.toggle("d-none");
    });
  });
}

toggleTrash();
