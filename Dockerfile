FROM python:3.9-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 환경 변수 설정
ENV ROBOFLOW_API_KEY="865VuGn7RK8dUaByjfwa"
ENV FIREBASE_CREDENTIALS="ewogICJ0eXBlIjogInNlcn--ZpY2VfYWNjb3VudCIsCiAgInByb2plY3RfaWQiOiAibmFtZXBpbGwtMjJ1YWdjIiwKICAicHJpdmF0ZV9rZXlfaWQiOiAiZGM1YWNjYjg1Mjc5NTYxZjhjYWYxNGY2YTRhMjgyMGZmODlkOTk4YyIsCiAgInByaXZhdGVfa2V5IjogIi0tLS0tQkVHSU4gUFJJVkFURSBLRVktLS0tLVxuTUlJRXZnSUJBREFOQmdrcWhraUc5dzBCQVFFRkFBU0NCS2d3Z2dTa0FnRUFBb0lCQVFEVGRoWE0vWU1OTjBqWVxuQUl2a1JBR2RKUUd3eEtvaFFoa3ZxTEhNOC90RGZzam5MaVVNVzV6a0lleUpWM0RnYmNYMWVnZC85d21UcUhGSFxueG5GMVRGNWp0U3E3RkVBTXR0dHh4SnlrYnRDckk4WExVVmIvQ2xheWk4YWR3RGduRVlzSDNER2tVWW5saGx4elxuSUk1QVJEYjNZWGljSnhramlOVVVLa0FtMG9mT1ZUSDNhdE84VkFpNW95aVVIQkh5UGpxT2EvYVdFS1hkMThSUFxuZm1CWXBFRTY4QTNhcXFQSnVrNjZUMGRhUkl2N3BSdjJ5cnEzdkN6YlA4d3VsdzU5MFNLQ0pmVWxhUGhBa1NtTVxuQWpTaWcveStqL2ZnUGp4VnQwZlAzK1BBRi9nZHRvczVCYndSdVZqZktwV0dqSVU0YW1UajhGTkFzczdkZVNXU1xuQjJGNGlOeWhBZ01CQUFFQ2dnRUFCV1g5SVkyT1o2Yy80UHFPMTdVR0grWDlyWWF3UjVNRWdjWlFJM1R1TnYxdVxuNVdLODJiUmlLSU51a28wbXc3Wit0bjBUQVdENEM4YlIzVWJSVDBEajB4NmhMcHRxUlE3VEltdnVJaThsYk95UFxuNW1oYk9NMnBxK05JVHM4OUtiOXJqOC9XN1RpVERUN2JWK215b3Z5dzFPcitRMW1Held6SElJMmhjNUpGNnZvdlxuUC9SeXUxZFlMOWVFRXprZzhwQTNQMjNTcDV3RVBRL2tVYytacmdDSy96RlptdHBHYW52eGMvTHBON25Wb0UwVVxuMDdPaHZqTkFibUtwdFVwZnpuYU9wMmZiazJhY0NuaDVVQmQwekJ3cTN1c3E5YWdRYkxzUjIwcGIwb2o5N1Nxd1xudkhHOWFBeVRhNzFvRXFrUy9LSXJNQWJOZTVxZzVpMWhQTnV2ZzNYZFFRS0JnUURyT0tZcDFseHRYWVpEWmlHZlxubU00WjRmdFhyMjVLdExvcUZlMzJITmNEWnR0SmdkcVRDamtuZ1NYYVdPTjJFMzhkYnRSQ0VOWHQvOGNiZzRPY1xuSjJ2dzY0Z0lEUDQ0ZGdjclRJOGFmaUt3NnNkQmY2NkZ3b2lrUkZRWlpYVXBMaWNoM1BTMDExMHY2RFNDQWhEelxuMXo1OXhCUnA4SUZWNy81MTZHWWErYzlCUVFLQmdRRG1KQjhSbXJhQWFuZzFBbXB4WnVScEh1czNlTVZRUGVqcFxuMUtxVGlra2h4YjJoVFBCN1I2TlNnMCtwa1JyZ2F5M2pYZVZvMndBRzJDRUxTNmdvVDNIU3NjS1I4WFBQUWI3eFxubm9tZ1BGSnJQa21UTW90MjI4bEh3WGZmVUVPMWYxeTBJSjc4cDUzWlVwQnBJRHFtWnFrc2MzdzRxY2NqdUtTeVxuRlh3cnhJVmpZUUtCZ0ZHSTBHZytLc21xR29rd1ZNVmFsVTU1ZThNNFJ6WFVFWmZYQkNaRWR1OXg3dDg3Q01YaFxuVEZCNlB1SEI0QTZrMFhJbFlhUUk2KzdVczNMQkVwVEZRWEJBWkdYT0F5MFZGSVVZdzUzK1RRNGdRN05iaStaSFxudVUrZmM3dGQ1TS9DZE1RVE1DdWpYMlRreTVhcEdyRTdVaWtNRjd0bEo1L2ZVY2dUSjVtQU1DeEJBb0dCQUxZQVxuRXVIbExEYlovRDVQcnNZSHpOS2xOUGNsZDBWQjhKUWJMdHFISGRhcmZvKzFQT2tCZWxPaXJMazRtN3ltaGgrc1xuL2VPeWJZNzhGUVhOeXlvMXlab0tJZ2t3blpsbU1RNzdoWE5Hd1JjMnB4RFZoQjEzS3ZLb09aaE03WDczUGVUbFxuZDFYdmFKR1pEY05WVFl5UzIyN2YxWGtxS3VaQSsxNHFSNHlGV2NlQkFvR0JBTDY5c01BMytSN1BVdDFBclU5OVxuYm9aeUk1cDMwSk5TTkVXS1hNaEdGdGREVlE3enVyMjIrcmRiMkJNWVN1b3FpSDhyd2syQkhTL0xuSXlIYUJxT1xuRVYzZlM0VkdZaHd2RDdsWDNyRmd6RzlCZGVZQ0VLQnpMaTVCdmY2VlN3TURMQWZaVG9NVytROVlKaUtTZ2FPVlxuRkpacldXNzkvM28wNWFjSEdnQ0VmQ0t3XG4tLS0tLUVORCBQUklWQVRFIEtFWS0tLS0tXG4iLAogICJjbGllbnRfZW1haWwiOiAiZmlyZWJhc2UtYWRtaW5zZGstZmJzdmNAbmFtZXBpbGwtMjJ1YWdjLmlhbS5nc2VydmljZWFjY291bnQuY29tIiwKICAiY2xpZW50X2lkIjogIjExMDgzMTk5MTk5MzQ1Mjg5MTkyMiIsCiAgImF1dGhfdXJpIjogImh0dHBzOi8vYWNjb3VudHMuZ29vZ2xlLmNvbS9vL29hdXRoMi9hdXRoIiwKICAidG9rZW5fdXJpIjogImh0dHBzOi8vb2F1dGgyLmdvb2dsZWFwaXMuY29tL3Rva2VuIiwKICAiYXV0aF9wcm92aWRlcl94NTA5X2NlcnRfdXJsIjogImh0dHBzOi8vd3d3Lmdvb2dsZWFwaXMuY29tL29hdXRoMi92MS9jZXJ0cyIsCiAgImNsaWVudF94NTA5X2NlcnRfdXJsIjogImh0dHBzOi8vd3d3Lmdvb2dsZWFwaXMuY29tL3JvYm90L3YxL21ldGFkYXRhL3g1MDkvZmlyZWJhc2UtYWRtaW5zZGstZmJzdmMlNDBuYW1lcGlsbC0yMnVhZ2MuaWFtLmdzZXJ2aWNlYWNjb3VudC5jb20iLAogICJ1bml2ZXJzZV9kb21haW4iOiAiZ29vZ2xlYXBpcy5jb20iCn0K"

EXPOSE 8080

CMD ["python", "app.py"]