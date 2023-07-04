#python $SUMO_HOME/tools/randomTrips.py  -n net.net.xml.gz --seed 42 --fringe-factor 2 -p .1  -r osm.passenger.rou.xml -b 50400 -e 54000 --vehicle-class passenger --vclass passenger --prefix veh  --trip-attributes "departLane=\"best\"" --fringe-start-attributes "departSpeed=\"max\"" --allow-fringe.min-length 1000 --lanes  -L -l --validate --min-distance 300 --remove-loops
#python $SUMO_HOME/tools/routeSampler.py -r osm.passenger.rou.xml --edgedata-files edge_data_cars.xml --turn-ratio-files turn_ratio.xml -o samplertrips.rou.xml --turn-ratio-attribute ratio --mismatch-output mismatch.xml --attributes "departLane=\"best\""
python $SUMO_HOME/tools/randomTrips.py  -n net.net.xml.gz --seed 42 --fringe-factor 10 -p 5  -r osm.bicycle.rou.xml -b 50400 -e 54000 --vehicle-class bicycle --vclass bicycle --prefix  bike --prefix "b"  --trip-attributes "departLane=\"best\"" --fringe-start-attributes "departSpeed=\"max\"" --allow-fringe.min-length 1000 --lanes  -L -l --validate
python $SUMO_HOME/tools/routeSampler.py -r osm.bicycle.rou.xml --prefix "b" --edgedata-files edge_data_bike.xml -o samplertrips_bike.rou.xml  --attributes "type=\"bicycle\"" --mismatch-output mismatch_bike.xml --turn-ratio-files turn_ratio.xml --turn-ratio-attribute ratio
