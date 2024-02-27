export const loader = async () => {
    throw new Response("not found", { status: 404 });
  };