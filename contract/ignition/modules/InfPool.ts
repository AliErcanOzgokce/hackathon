import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const InfPoolModule = buildModule("InfPoolModule", (m) => {

  const inf_pool = m.contract("InfPool");

  return { inf_pool };
});

export default InfPoolModule;
