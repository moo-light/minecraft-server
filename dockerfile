# Use a prebuilt Minecraft server image
FROM itzg/minecraft-server

# Accept the EULA
ENV EULA=TRUE

# Copy server.properties to the correct location
COPY server.properties /data/server.properties

# Ensure the correct permissions
RUN chmod +rw /data/server.properties

# Expose the Minecraft port
EXPOSE 25565

# Start the Minecraft server
CMD ["bash", "/start"]
