# # This file should ensure the existence of records required to run the application in every environment (production,
# # development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Example:
# #
# #   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
# #     MovieGenre.find_or_create_by!(name: genre_name)
# #   end
# #
puts "destroying everything"
  Log.destroy_all
  Workout.destroy_all
  SplitExercise.destroy_all
  Split.destroy_all
  Programme.destroy_all
  Exercise.destroy_all
  User.destroy_all


puts "creating exercises"
  exercises = [
    {
      "name": "Barbell Bench Press",
      "description": "The barbell bench press is a fundamental push exercise that targets the chest, shoulders, and triceps. It is performed lying on a bench while pressing a barbell upward.",
      "category_array": ["push", "upperbody"],
      "image_url": "https://assets.gqindia.com/photos/5e54b97ee1cde5000859f2d6/16:9/w_2240,c_limit/This%20is%20how%20you%20should%20actually%20bench-press.jpg"
    },
    {
      "name": "Dumbbell Chest Press",
      "description": "The dumbbell chest press strengthens the chest, shoulders, and triceps. Using dumbbells allows for a greater range of motion compared to a barbell.",
      "category_array": ["push", "upperbody"],
      "image_url": "https://cdn.shopify.com/s/files/1/1497/9682/files/Incline_Press.jpg?v=1672493170"
    },
    {
      "name": "Overhead Shoulder Press",
      "description": "The overhead shoulder press works the shoulders and triceps, focusing on building strength and size in the upper body. It can be done standing or seated with a barbell or dumbbells.",
      "category_array": ["push", "upperbody"],
      "image_url": "https://mirafit.co.uk/wp/wp-content/uploads/2024/03/shoulder-press-using-Mirafit-Black-Olympic-Rubber-Bumper-Plates-1024x683.jpg"
    },
    {
      "name": "Push-Ups",
      "description": "Push-ups are a bodyweight exercise targeting the chest, shoulders, and triceps. It also engages the core and helps build overall upper body strength.",
      "category_array": ["push", "upperbody"],
      "image_url": "https://images.pexels.com/photos/4720291/pexels-photo-4720291.jpeg"
    },
    {
      "name": "Incline Bench Press",
      "description": "The incline bench press emphasizes the upper portion of the chest and shoulders. It's performed with a barbell or dumbbells on a bench set at an incline.",
      "category_array": ["push", "upperbody"],
      "image_url": "https://storage.googleapis.com/flex-web-media-prod/content/images/wp-content/uploads/2024/05/best-incline-bench-angle.jpg"
    },
    {
      "name": "Dumbbell Lateral Raises",
      "description": "Dumbbell lateral raises primarily target the lateral deltoids, helping to build wider shoulders and improve shoulder definition.",
      "category_array": ["push", "upperbody"],
      "image_url": "https://www.bodybuilding.com/images/2017/october/the-only-dumbbell-lateral-raise-article-you-need-header-v2-830x467.jpg"
    },
    {
      "name": "Tricep Dips",
      "description": "Tricep dips are a bodyweight exercise that focus on strengthening the triceps, shoulders, and chest. They can be performed using parallel bars or a bench.",
      "category_array": ["push", "upperbody"],
      "image_url": "https://www.dmoose.com/cdn/shop/articles/1_2505ceb9-03f9-4543-a376-547c903565a0.jpg?v=1647856436"
    },
    {
      "name": "Cable Chest Fly",
      "description": "The cable chest fly isolates the chest muscles and helps in developing pectoral definition and strength. It is performed using a cable machine.",
      "category_array": ["push", "upperbody"],
      "image_url": "https://uk.gymreapers.com/cdn/shop/articles/header-image-01_Cable-chest-workout---maximizing-your-muscle-growth.jpg?v=1721671171&width=1400"
    },
    {
      "name": "Dumbbell Front Raises",
      "description": "Dumbbell front raises target the front deltoid muscles, improving shoulder strength and definition. It can be performed with dumbbells or a barbell.",
      "category_array": ["push", "upperbody"],
      "image_url": "https://www.puregym.com/media/tkfphmle/dumbbell-front-raises.jpg?quality=80"
    },
    {
      "name": "Tricep Pushdowns",
      "description": "Tricep pushdowns target the triceps, helping to increase arm size and strength. It's typically performed using a cable machine with a straight or rope attachment.",
      "category_array": ["push", "upperbody"],
      "image_url": "https://cdn.shopify.com/s/files/1/0618/9462/3460/files/Ending-Postion-800x451.jpg"
    },
    {
      "name": "Pull-Ups",
      "description": "Pull-ups are a bodyweight exercise that primarily targets the back, biceps, and shoulders. It helps build pulling strength and upper body muscle mass.",
      "category_array": ["pull", "upperbody"],
      "image_url": "https://www.mystrengthtraining.com/wp-content/uploads/2024/04/pull-ups-gym-front.jpg"
    },
    {
      "name": "Lat Pulldown",
      "description": "The lat pulldown targets the latissimus dorsi and helps develop back width and pulling strength. It's performed on a cable machine.",
      "category_array": ["pull", "upperbody"],
      "image_url": "https://www.trainheroic.com/wp-content/uploads/2023/03/AdobeStock_423445223-TH-jpg.webp"
    },
    {
      "name": "Barbell Row",
      "description": "The barbell row is a compound movement that targets the back, shoulders, and biceps. It strengthens the pulling muscles of the upper body.",
      "category_array": ["pull", "upperbody"],
      "image_url": "https://thefitnessmaverick.com/wp-content/uploads/2020/10/F265CF38-5010-4DBF-BE3A-68C68A2A7E02_1_201_a-e1602589179813.jpeg"
    },
    {
      "name": "Dumbbell Row",
      "description": "The dumbbell row works the back, particularly the lats, as well as the biceps and shoulders. It is typically performed one arm at a time.",
      "category_array": ["pull", "upperbody"],
      "image_url": "https://i0.wp.com/ericrobertsfitness.com/wp-content/uploads/2023/05/alora-griffiths-LOnMc8Rp1Qs-unsplash-1-scaled.jpg?resize=1024%2C683&ssl=1"
    },
    {
      "name": "Face Pulls",
      "description": "Face pulls target the rear deltoids and upper back muscles, helping improve posture and shoulder health. It is performed using a cable machine with a rope attachment.",
      "category_array": ["pull", "upperbody"],
      "image_url": "https://storage.googleapis.com/flex-web-media-prod/content/images/wp-content/uploads/2024/02/what-muscle-does-face-pulls-work-768x512-1.webp"
    },
    {
      "name": "Seated Cable Row",
      "description": "The seated cable row targets the muscles of the upper and lower back, improving pulling strength and back thickness.",
      "category_array": ["pull", "upperbody"],
      "image_url": "https://swolverine.com/cdn/shop/articles/Single_Arm_Cable_Row_-_Swolverine_1200x.jpg?v=1635722226"
    },
    {
      "name": "Dumbbell Bicep Curl",
      "description": "Dumbbell bicep curls isolate the biceps, helping to build arm size and strength. They can be performed standing or seated.",
      "category_array": ["pull", "upperbody"],
      "image_url": "https://images.squarespace-cdn.com/content/v1/57fd0bd537c5817117c2ac09/1574286883298-4PCUCRNP6D4VFTUXW9GX/Grace+Brown+Fitness+Dumbbell+Bicep+Curl+Supinated.jpg"
    },
    {
      "name": "Barbell Bicep Curl",
      "description": "The barbell bicep curl is a classic exercise that isolates the biceps, promoting growth and strength in the upper arms.",
      "category_array": ["pull", "upperbody"],
      "image_url": "https://steelsupplements.com/cdn/shop/articles/shutterstock_1330227065_1000x.jpg?v=1636217410"
    },
    {
      "name": "Hammer Curls",
      "description": "Hammer curls target both the biceps and the brachialis, helping to build strength and size in the upper arms. It's performed using dumbbells with a neutral grip.",
      "category_array": ["pull", "upperbody"],
      "image_url": "https://www.trainheroic.com/wp-content/uploads/2023/02/AdobeStock_417412809-TH-jpg.webp"
    },
    {
      "name": "T-Bar Row",
      "description": "The T-bar row is a compound exercise that targets the back, particularly the lats and middle back. It's great for developing pulling strength and back thickness.",
      "category_array": ["pull", "upperbody"],
      "image_url": "https://cdn.muscleandstrength.com/sites/default/files/t-bar-row.jpg"
    },
    {
      "name": "Barbell Squat",
      "description": "The barbell squat is a foundational leg exercise that targets the quads, glutes, and hamstrings. It also engages the core for stability.",
      "category_array": ["legs", "lowerbody"],
      "image_url": "https://res.cloudinary.com/peloton-cycle/image/fetch/f_auto,c_limit,w_3840,q_90/https://downloads.ctfassets.net/6ilvqec50fal/1EHc7nNZ4VqgTjyKoNnyvd/08a03edafa59cf2f74b591765cc68c62/Barbell-squat.jpg"
    },
    {
      "name": "Leg Press",
      "description": "The leg press targets the quads, hamstrings, and glutes, providing an effective way to build leg strength while placing less stress on the lower back.",
      "category_array": ["legs", "lowerbody"],
      "image_url": "https://ironbullstrength.com/cdn/shop/articles/leg_press_knee_pain.webp?v=1695829075"
    },
    {
      "name": "Lunges",
      "description": "Lunges are a unilateral leg exercise that works the quads, hamstrings, glutes, and calves. It helps improve balance, coordination, and leg strength.",
      "category_array": ["legs", "lowerbody"],
      "image_url": "https://www.trainheroic.com/wp-content/uploads/2022/09/AdobeStock_244171985-TH.jpg"
    },
    {
      "name": "Romanian Deadlift",
      "description": "The Romanian deadlift targets the hamstrings, glutes, and lower back. It helps improve posterior chain strength and flexibility.",
      "category_array": ["legs", "lowerbody"],
      "image_url": "https://mirafit.co.uk/wp/wp-content/uploads/2023/02/woman-doing-a-Romanian-deadlift-with-Mirafit-Orange-Camo-Bumper-Plates.jpg"
    },
    {
      "name": "Leg Extension",
      "description": "The leg extension isolates the quadriceps, helping to build strength and muscle mass in the front of the thighs.",
      "category_array": ["legs", "lowerbody"],
      "image_url": "https://hips.hearstapps.com/hmg-prod/images/young-adult-man-doing-leg-extension-exercise-in-gym-royalty-free-image-1678280881.jpg"
    },
    {
      "name": "Leg Curl",
      "description": "Leg curls isolate the hamstrings, helping to strengthen the muscles in the back of the thigh and improve overall leg stability.",
      "category_array": ["legs", "lowerbody"],
      "image_url": "https://blogscdn.thehut.net/app/uploads/sites/449/2021/12/shutterstock_1471492208-1-ftt-min_1639667937.jpg"
    },
    {
      "name": "Bulgarian Split Squat",
      "description": "The Bulgarian split squat is a unilateral leg exercise that targets the quads, glutes, and hamstrings while also improving balance and stability.",
      "category_array": ["legs", "lowerbody"],
      "image_url": "https://swolverine.com/cdn/shop/articles/Bulgarian_Split_Squats_800x.jpg?v=1630455282"
    },
    {
      "name": "Calf Raises",
      "description": "Calf raises focus on the calves, specifically the gastrocnemius and soleus muscles, helping to improve lower leg strength and definition.",
      "category_array": ["legs", "lowerbody"],
      "image_url": "https://atlantisstrength.com/app/uploads/2022/01/calf-raise-scaled-1248x924.jpg"
    },
    {
      "name": "Deadlifts",
      "description": "The deadlift is a compound movement that targets the entire posterior chain, including the back, glutes, hamstrings, and core. It's a full-body strength-building exercise.",
      "category_array": ["legs", "lowerbody", "pull"],
      "image_url": "https://gunsmithfitness.com/cdn/shop/articles/should-i-do-deadlift-or-squats-first-839450.jpg?v=1703061566&width=2048"
    },
    {
      "name": "Goblet Squat",
      "description": "The goblet squat is a squat variation where a dumbbell or kettlebell is held at chest level, targeting the quads, glutes, and core for improved lower body strength.",
      "category_array": ["legs", "lowerbody"],
      "image_url": "https://www.themanual.com/wp-content/uploads/sites/9/2019/10/kettlebell-squat.jpg?fit=1500%2C1000&p=1"
    }
  ]
  exercises.each do |exercise|
    Exercise.create!(exercise)
  end

  puts "create a user"
  user = User.create!(email: "abc@abc.com", password: "123456", username: "Moana", weight: 70, height: 180, date_of_birth: "1990-01-01")

  puts "create a programme"
  programme = Programme.create!(name: "Strongman", user: user, weeks: 12, splits_per_week: 2)

  puts "create 3 splits"
  split1 = Split.create!(programme: programme, category: "Upperbody")
  split2 = Split.create!(programme: programme, category: "Fullbody")

  puts "create 3 split exercises for each split"
  # create 2 exercises for each split
  SplitExercise.create!(exercise: Exercise.first, split: split1)
  SplitExercise.create!(exercise: Exercise.second, split: split1)
  SplitExercise.create!(exercise: Exercise.third, split: split1)
  SplitExercise.create!(exercise: Exercise.last, split: split2)
  SplitExercise.create!(exercise: Exercise.find_by(name:"Barbell Squat"), split: split2)
  SplitExercise.create!(exercise: Exercise.first, split: split2)


  puts "create 4 workouts for each split"
  workoutu_1 = Workout.create!(split: split1, date: "2024-09-01", done: true)
  workoutu_2 = Workout.create!(split: split1, date: "2024-09-08", done: true)
  workoutu_3 = Workout.create!(split: split1, date: "2024-09-15", done: true)
  workoutu_4 = Workout.create!(split: split1, date: "2024-09-22", done: true)

  # full body split workouts testing squat logs across multiple workouts
  workoutf_1 = Workout.create!(split: split2, date: "2024-09-05", done: true)
  workoutf_2 = Workout.create!(split: split2, date: "2024-09-10", done: true)
  workoutf_3 = Workout.create!(split: split2, date: "2024-09-18", done: true)
  workoutf_4 = Workout.create!(split: split2, date: "2024-09-30", done: true)
  workoutf_5 = Workout.create!(split: split2, date: "2024-10-05", done: true)
  workoutf_6 = Workout.create!(split: split2, date: "2024-10-10", done: true)
  workoutf_7 = Workout.create!(split: split2, date: "2024-10-15", done: true)
  workoutf_8 = Workout.create!(split: split2, date: "2024-10-20", done: true)
  workoutf_9 = Workout.create!(split: split2, date: "2024-10-23", done: true)


  puts "create 1 log for each split exercise"
  # Fetching exercises by name (assuming Exercise model exists)
bench_press_exercise = Exercise.find_by(name: "Barbell Bench Press")
dumbbell_chest_press_exercise = Exercise.find_by(name: "Dumbbell Chest Press")
overhead_shoulder_press_exercise = Exercise.find_by(name: "Overhead Shoulder Press")
goblet_squat_exercise = Exercise.find_by(name: "Goblet Squat")
squat_exercise = Exercise.find_by(name: "Barbell Squat")

# Fetching split-specific SplitExercise instances
split1_bench_press = SplitExercise.find_by(exercise: bench_press_exercise, split: split1)
split2_bench_press = SplitExercise.find_by(exercise: bench_press_exercise, split: split2)
split1_dumbbell_chest_press = SplitExercise.find_by(exercise: dumbbell_chest_press_exercise, split: split1)
split1_overhead_shoulder_press = SplitExercise.find_by(exercise: overhead_shoulder_press_exercise, split: split1)
split2_goblet_squat = SplitExercise.find_by(exercise: goblet_squat_exercise, split: split2)
split2_squat = SplitExercise.find_by(exercise: squat_exercise, split: split2)

# Logs for Split 1 (workoutu_1 - workoutu_4)

# Barbell Bench Press progress (continuous progression across both splits)
Log.create!(workout: workoutu_1, split_exercise: split1_bench_press, weight: 40, repetitions: 8)  # 2024-09-01
Log.create!(workout: workoutu_1, split_exercise: split1_bench_press, weight: 40, repetitions: 8)
Log.create!(workout: workoutu_1, split_exercise: split1_bench_press, weight: 40, repetitions: 8)
Log.create!(workout: workoutu_2, split_exercise: split1_bench_press, weight: 42.5, repetitions: 8)  # 2024-09-08
Log.create!(workout: workoutu_2, split_exercise: split1_bench_press, weight: 42.5, repetitions: 8)
Log.create!(workout: workoutu_2, split_exercise: split1_bench_press, weight: 42.5, repetitions: 7)
Log.create!(workout: workoutu_3, split_exercise: split1_bench_press, weight: 45, repetitions: 9)  # 2024-09-15
Log.create!(workout: workoutu_4, split_exercise: split1_bench_press, weight: 47.5, repetitions: 9)  # 2024-09-22

# Dumbbell Chest Press progress
Log.create!(workout: workoutu_1, split_exercise: split1_dumbbell_chest_press, weight: 20, repetitions: 10)
Log.create!(workout: workoutu_1, split_exercise: split1_dumbbell_chest_press, weight: 20, repetitions: 10)
Log.create!(workout: workoutu_1, split_exercise: split1_dumbbell_chest_press, weight: 20, repetitions: 8)
Log.create!(workout: workoutu_2, split_exercise: split1_dumbbell_chest_press, weight: 20, repetitions: 12)
Log.create!(workout: workoutu_2, split_exercise: split1_dumbbell_chest_press, weight: 20, repetitions: 12)
Log.create!(workout: workoutu_2, split_exercise: split1_dumbbell_chest_press, weight: 20, repetitions: 10)
Log.create!(workout: workoutu_3, split_exercise: split1_dumbbell_chest_press, weight: 22.5, repetitions: 8)
Log.create!(workout: workoutu_3, split_exercise: split1_dumbbell_chest_press, weight: 22.5, repetitions: 8)
Log.create!(workout: workoutu_3, split_exercise: split1_dumbbell_chest_press, weight: 22.5, repetitions: 6)
Log.create!(workout: workoutu_4, split_exercise: split1_dumbbell_chest_press, weight: 22.5, repetitions: 11)
Log.create!(workout: workoutu_4, split_exercise: split1_dumbbell_chest_press, weight: 22.5, repetitions: 12)
Log.create!(workout: workoutu_4, split_exercise: split1_dumbbell_chest_press, weight: 22.5, repetitions: 11)

# Overhead Shoulder Press progress
Log.create!(workout: workoutu_1, split_exercise: split1_overhead_shoulder_press, weight: 30, repetitions: 8)
Log.create!(workout: workoutu_2, split_exercise: split1_overhead_shoulder_press, weight: 32.5, repetitions: 8)
Log.create!(workout: workoutu_3, split_exercise: split1_overhead_shoulder_press, weight: 35, repetitions: 9)
Log.create!(workout: workoutu_4, split_exercise: split1_overhead_shoulder_press, weight: 37.5, repetitions: 9)

# Logs for Split 2 (workoutf_1 - workoutf_4)

# Barbell Bench Press progress in Split 2 (continuation from Split 1)
Log.create!(workout: workoutf_1, split_exercise: split2_bench_press, weight: 20, repetitions: 12)  # 2024-09-05
Log.create!(workout: workoutf_1, split_exercise: split2_bench_press, weight: 25, repetitions: 10)
Log.create!(workout: workoutf_1, split_exercise: split2_bench_press, weight: 30, repetitions: 8)
Log.create!(workout: workoutf_2, split_exercise: split2_bench_press, weight: 35, repetitions: 3)  # 2024-09-10
Log.create!(workout: workoutf_2, split_exercise: split2_bench_press, weight: 35, repetitions: 3)
Log.create!(workout: workoutf_2, split_exercise: split2_bench_press, weight: 38, repetitions: 2)
Log.create!(workout: workoutf_3, split_exercise: split2_bench_press, weight: 40, repetitions: 1)  # 2024-09-18
Log.create!(workout: workoutf_4, split_exercise: split2_bench_press, weight: 45, repetitions: 1)  # 2024-09-30
Log.create!(workout: workoutf_5, split_exercise: split2_bench_press, weight: 45, repetitions: 1)
Log.create!(workout: workoutf_6, split_exercise: split2_bench_press, weight: 48, repetitions: 1)
Log.create!(workout: workoutf_7, split_exercise: split2_bench_press, weight: 50, repetitions: 1)
Log.create!(workout: workoutf_1, split_exercise: split2_bench_press, weight: 51, repetitions: 1)
Log.create!(workout: workoutf_9, split_exercise: split2_bench_press, weight: 52, repetitions: 1)

# Goblet Squat progress
Log.create!(workout: workoutf_1, split_exercise: split2_goblet_squat, weight: 25, repetitions: 10)
Log.create!(workout: workoutf_2, split_exercise: split2_goblet_squat, weight: 27.5, repetitions: 10)
Log.create!(workout: workoutf_3, split_exercise: split2_goblet_squat, weight: 30, repetitions: 11)
Log.create!(workout: workoutf_4, split_exercise: split2_goblet_squat, weight: 32.5, repetitions: 11)
Log.create!(workout: workoutf_5, split_exercise: split2_goblet_squat, weight: 35, repetitions: 12)
Log.create!(workout: workoutf_6, split_exercise: split2_goblet_squat, weight: 37.5, repetitions: 12)
Log.create!(workout: workoutf_7, split_exercise: split2_goblet_squat, weight: 40, repetitions: 12)
Log.create!(workout: workoutf_8, split_exercise: split2_goblet_squat, weight: 42.5, repetitions: 12)
Log.create!(workout: workoutf_9, split_exercise: split2_goblet_squat, weight: 45, repetitions: 12)

# Squat progress
Log.create!(workout: workoutf_1, split_exercise: split2_squat, weight: 63.5, repetitions: 5)
Log.create!(workout: workoutf_1, split_exercise: split2_squat, weight: 60, repetitions: 5)
Log.create!(workout: workoutf_1, split_exercise: split2_squat, weight: 60, repetitions: 5)
Log.create!(workout: workoutf_1, split_exercise: split2_squat, weight: 60, repetitions: 5)
Log.create!(workout: workoutf_1, split_exercise: split2_squat, weight: 60, repetitions: 5)
Log.create!(workout: workoutf_2, split_exercise: split2_squat, weight: 48, repetitions: 10)
Log.create!(workout: workoutf_2, split_exercise: split2_squat, weight: 58, repetitions: 3)
Log.create!(workout: workoutf_2, split_exercise: split2_squat, weight: 63, repetitions: 3)
Log.create!(workout: workoutf_2, split_exercise: split2_squat, weight: 70, repetitions: 3)
Log.create!(workout: workoutf_3, split_exercise: split2_squat, weight: 55, repetitions: 10)
Log.create!(workout: workoutf_3, split_exercise: split2_squat, weight: 63, repetitions: 5)
Log.create!(workout: workoutf_3, split_exercise: split2_squat, weight: 65, repetitions: 3)
Log.create!(workout: workoutf_3, split_exercise: split2_squat, weight: 73, repetitions: 1)
Log.create!(workout: workoutf_4, split_exercise: split2_squat, weight: 40, repetitions: 5)
Log.create!(workout: workoutf_4, split_exercise: split2_squat, weight: 50, repetitions: 5)
Log.create!(workout: workoutf_4, split_exercise: split2_squat, weight: 60, repetitions: 5)
Log.create!(workout: workoutf_5, split_exercise: split2_squat, weight: 74, repetitions: 1)
Log.create!(workout: workoutf_6, split_exercise: split2_squat, weight: 63, repetitions: 2)
Log.create!(workout: workoutf_7, split_exercise: split2_squat, weight: 60, repetitions: 4)
Log.create!(workout: workoutf_7, split_exercise: split2_squat, weight: 62, repetitions: 4)
Log.create!(workout: workoutf_8, split_exercise: split2_squat, weight: 55, repetitions: 6)
Log.create!(workout: workoutf_9, split_exercise: split2_squat, weight: 60, repetitions: 5)
Log.create!(workout: workoutf_9, split_exercise: split2_squat, weight: 60, repetitions: 5)
Log.create!(workout: workoutf_9, split_exercise: split2_squat, weight: 60, repetitions: 5)
Log.create!(workout: workoutf_9, split_exercise: split2_squat, weight: 60, repetitions: 5)
Log.create!(workout: workoutf_9, split_exercise: split2_squat, weight: 60, repetitions: 5)


puts "done"
puts "Dummy Account Email: abc@abc.com Password: 123456"
