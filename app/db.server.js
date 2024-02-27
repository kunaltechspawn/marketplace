import { PrismaClient } from "@prisma/client";

const prisma = global.prisma || new PrismaClient({log: ['query', 'info', 'error'],});

if (process.env.NODE_ENV !== "production") {
  if (!global.prisma) {
    global.prisma = new PrismaClient();
  }
}

export default prisma;
