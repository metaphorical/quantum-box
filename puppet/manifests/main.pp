# I need all the submanifests
# if you don't justload ones you do
import 'submanifests/*.pp'



# Running the tasks (classes) in needed order
include apt_update

include tools
