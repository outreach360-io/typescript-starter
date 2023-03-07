import { envWaring } from "./const";

export function helloGenerator(world: string | undefined) {
  if (world) return `Hello ${world} 😁`;
  else return envWaring;
}
