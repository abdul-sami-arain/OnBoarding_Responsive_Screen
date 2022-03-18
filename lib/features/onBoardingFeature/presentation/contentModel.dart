class ContentModel {
 final String image;
 final String title;
 final String description;

  ContentModel({required this.image,required this.title,required this.description});
}

List<ContentModel> contents = [
  ContentModel(  
    image: "assets/images/screen1.png",
    title:  "Welcome to Butler app",
    description:  "The ultimate app where we prioritise your convenience over anything else. Free up your time and do what matters most."
  ),
  ContentModel(  
    image: "assets/images/screen2.png",
    title:  "Find and book services",
    description:  "From housekeeping to property management and more. Each service is designed specifically to your every needs"
  ),
  ContentModel(  
    image: "assets/images/screen3.png",
    title:  "Personal concierge assistant",
    description:  "Cant find what youre looking for? Speak to your personal concierge and leave the heavy lifting to us."
  ),
  ContentModel(  
    image: "assets/images/screen4.png",
    title:  "Services at your fingertips",
    description:  "With just a few simple taps, we will accomplish any tasks for you. No task too big, no task too difficult"
  ),
];
