/* import L from "leaflet"; */

const locationInfo = {
  name: "Rodgers Auto Repair",
  url: "https://goo.gl/maps/Mr2qViGCXq3auc2k8",
  lat: 46.80661,
  lng: -123.06321,
};

const map = L.map("leafletMap", {
  center: [46.80677, -123.06341],
  minZoom: 6,
  zoom: 10,
});

L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", {
  attribution:
    '&copy; <a href="https://www.openstreetmap.org/copyright" target="_blank">OpenStreetMap</a>',
  subdomains: ["a", "b", "c"],
}).addTo(map);

const marker = L.marker([locationInfo.lat, locationInfo.lng]).addTo(map);

marker.bindPopup(`
  <b>${locationInfo.name}</b><br />
  <a href="${locationInfo.url}" target="_blank">Directions</a>
`);

marker.openPopup();
