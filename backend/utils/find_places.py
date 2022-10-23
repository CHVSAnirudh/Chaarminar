
from urllib import response
import requests
import math
import h3
import os 
import json

THIS_FILE = os.path.dirname(os.path.abspath(__file__))
PROJ_FILE = os.path.abspath(os.path.join(THIS_FILE,"../"))

class FindPlaces:
    def __init__(self, start_latitude, start_longitude, dest_latitude, dest_longitude) -> None:
        self.start_latitude = start_latitude
        self.start_longitude = start_longitude
        self.dest_latitude = dest_latitude
        self.dest_longitude = dest_longitude
        self.config = self._read_config()
    def _get_route(self) -> dict:
        url = f"https://maps.googleapis.com/maps/api/directions/json?origin={self.start_latitude}%2C{self.start_longitude}&destination={self.dest_latitude}%2C{self.dest_longitude}&key=AIzaSyBRCBv1g2bhMCxviR1JYWYicWIfHyQMVCQ"
        response = requests.request("GET", url=url, headers={}, data={})
        return response.json()

    def _read_config(self):
        path = PROJ_FILE + "/config/search.json"
        with open(path,"rb") as f:
            return json.load(f)

    def _distance(self, coords_1, coords_2):
        return h3.point_dist(coords_1, coords_2, unit='m')
    
    def _recursion(self, start_location, end_location):
        location = self._midpoint(start_location, end_location)
        if self._distance(start_location, location) < self._threshold:
            self.store.append(start_location)
        else:
            self._recursion(start_location, location)
        if self._distance(location, end_location) < self._threshold:
            self.store.append(location)
        else:
            self._recursion(location, end_location)

    def _traverse_route(self, route):
        _buffer_distance = 0
        _steps = route["routes"][0]["legs"][0]["steps"]
        self._threshold = route["routes"][0]["legs"][0]["distance"]["value"] * 0.1
        for idx,_step in enumerate(_steps):
            if idx == 0:
                self.store.append((_step["end_location"]["lat"], _step["end_location"]["lng"]))
            if _buffer_distance > self._threshold:
                _buffer_distance = 0
                self.store.append((_step["start_location"]["lat"], _step["start_location"]["lng"]))
            if _step["distance"]["value"] < self._threshold/2:
                _buffer_distance += _step["distance"]["value"]
            if _step["distance"]["value"] > self._threshold/2 and _step["distance"]["value"] < self._threshold:
                _buffer_distance = 0
                self.store.append((_step["end_location"]["lat"], _step["end_location"]["lng"]))
            if _step["distance"]["value"] > self._threshold:
                _buffer_distance = 0
                self._recursion(start_location=(_step["start_location"]["lat"],_step["start_location"]["lng"]), end_location=(_step["end_location"]["lat"],_step["end_location"]["lng"]))
                self.store.append((_step["end_location"]["lat"], _step["end_location"]["lng"]))
        # checking for the end point 
        if not self.store[-1] == (route["routes"][0]["legs"][0]["end_location"]["lat"], route["routes"][0]["legs"][0]["end_location"]["lng"]):
            self.store.append((route["routes"][0]["legs"][0]["end_location"]["lat"], route["routes"][0]["legs"][0]["end_location"]["lng"]))
        if not self.store[0] == (route["routes"][0]["legs"][0]["start_location"]["lat"], route["routes"][0]["legs"][0]["start_location"]["lng"]):
            self.store.insert(0, (route["routes"][0]["legs"][0]["start_location"]["lat"], route["routes"][0]["legs"][0]["start_location"]["lng"]))

    def _points_in_between(self):
        self.store = []
        route = self._get_route()
        self._traverse_route(route=route)
        print(self.store)

    def _midpoint(self, start_location, end_location):
        x1,y1 = start_location
        x2,y2 = end_location
        return round((x1+x2)/2,6), round((y1+y2)/2,6)

    def search(self, location, keywords) -> list:
        x,y = location
        total_filtered_results = []
        for keyword in keywords:
            filtered_results = []
            # TODO: calling the caching function
            # results should have the data anyways
            url = f"https://maps.googleapis.com/maps/api/place/nearbysearch/json?location={x}%2C{y}&radius={self.config['radius']}&type=&keyword={keyword}&key=AIzaSyBRCBv1g2bhMCxviR1JYWYicWIfHyQMVCQ"
            response = requests.request("GET", url, headers={}, data={})
            results = response.json()
            print(results)
            self._save_in_cache(results=results, location=location, keyword=keyword)
            
            # filtering the results < 1000 m 
            for result in results["results"]:
                if int(self._distance(location, (result["geometry"]["location"]["lat"],result["geometry"]["location"]["lng"]))) < self.config["filteration_radius"]:
                    filtered_results.append(result)
            
            # sorting on the basis of rating keyword
            filtered_results = sorted(filtered_results, key = lambda x: x["rating"], reverse=True)
            total_filtered_results.extend(filtered_results)
        
        # sorting the final result as well 
        total_filtered_results = sorted(total_filtered_results, key=lambda x: x['rating'], reverse=True)
        
        return total_filtered_results

    def _get_keywords(self, age_range,  sentiment_selected) -> list:
        path1 = PROJ_FILE + "/config/place_age.json"
        path2 = PROJ_FILE + "/config/places_sentiment.json"
        with open(path1,"rb") as f:
            age = json.load(f)
        with open(path2,"rb") as f:
            sentiment = json.load(f)
        age_list = age[age_range]
        sentiment_list = sentiment[sentiment_selected]
        return list(set(age_list) & set(age_list))
    
    def _save_in_cache(self, results, location, keyword):
        filename = f"/cache_location_results/{location[0]}_{location[1]}_{keyword}.json"
        json_object = json.dumps(results, indent=4)
        with open(PROJ_FILE+filename, "w") as outfile:
            outfile.write(json_object)

if __name__ == "__main__":
    obj = FindPlaces(17.446146, 78.349206, 28.704100, 77.102500)
    # obj._points_in_between()
    print(obj.search((obj.start_latitude, obj.start_longitude), ["temple", "college", "pub"]))
