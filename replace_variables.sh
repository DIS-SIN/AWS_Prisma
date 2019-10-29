[ -z "${PRISMA_ADMIN_SECRET}" ] && echo "Not set: PRISMA_ADMIN_SECRET";
[ -z "${PRISMA_DB_HOST}" ] && echo "Not set: DATABASE_HOST";
[ -z "${PRISMA_DB_USER}" ] && echo "Not set: DATABASE_USER";
[ -z "${PRISMA_DB_PASSWORD}" ] && echo "Not set: DATABASE_PASSWORD";

sed -ri 's/managementApiSecret: PRISMA_ADMIN_SECRET/managementApiSecret: '$PRISMA_ADMIN_SECRET'/g' prisma.yml
sed -ri 's/host: PRISMA_DB_HOST/host: '$PRISMA_DB_HOST'/g' prisma.yml
sed -ri 's/user: PRISMA_DB_USER/user: '$PRISMA_DB_USER'/g' prisma.yml
sed -ri 's/password: PRISMA_DB_PASSWORD/password: '$PRISMA_DB_PASSWORD'/g' prisma.yml