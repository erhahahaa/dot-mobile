# Flutter-related ProGuard rules
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugins.** { *; }
-keep class io.flutter.embedding.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.** { *; }
-dontwarn io.flutter.**

# Firebase-related ProGuard rules
-keep class com.google.firebase.** { *; }
-dontwarn com.google.firebase.**
-keep class com.google.android.gms.** { *; }
-dontwarn com.google.android.gms.**

# Dio library rules
-keep class okhttp3.** { *; }
-dontwarn okhttp3.**
-keep class retrofit2.** { *; }
-dontwarn retrofit2.**
-keep class javax.annotation.** { *; }
-dontwarn javax.annotation.**

# JSON serialization and annotation rules
-keepclassmembers class **.datamodels.** {
    *;
}
-keepclassmembers class **.model.** {
    *;
}
-keep class * implements com.google.gson.JsonSerializer { *; }
-keep class * implements com.google.gson.JsonDeserializer { *; }
-keep class com.google.gson.** { *; }
-dontwarn com.google.gson.**

# Freezed and Json Serializable rules
-keep class **.freezed.** { *; }
-keep class **.freezed.annotation.** { *; }
-keep class **.freezed.models.** { *; }
-keep @freezed class ** { *; }
-keep @JsonSerializable class ** { *; }
-dontwarn **.freezed.**

# Rules for Flutter Localizations
-keep class * extends androidx.lifecycle.ViewModel {
    *;
}

# Isar rules
-keep class dev.isar.** { *; }
-dontwarn dev.isar.**

# Rules for image libraries (e.g., CachedNetworkImage, ImagePicker, etc.)
-keep class com.bumptech.glide.** { *; }
-dontwarn com.bumptech.glide.**
-keep class com.squareup.picasso.** { *; }
-dontwarn com.squareup.picasso.**

# Rules for other common libraries
-keep class io.reactivex.** { *; }
-dontwarn io.reactivex.**
-keep class dagger.** { *; }
-dontwarn dagger.**
-keep class javax.inject.** { *; }
-dontwarn javax.inject.**

# Logger rules
-keep class **.Logger { *; }
-dontwarn **.Logger

# AutoRoute rules
-keep class **.AutoRoute { *; }
-keepclassmembers class ** {
    @com.example.AutoRoute *;
}

# General rules to keep classes and methods
-keepattributes Signature
-keepattributes *Annotation*

# Prevent obfuscation of classes used in reflection or by external libraries
-keep class ** { *; }
-dontwarn **

# Ensure that ProGuard does not strip out unused classes and methods that might be used by reflection or libraries.
-keepclassmembers class * {
    *;
}

# Obfuscation related configurations
-repackageclasses ''
-allowaccessmodification
-dontpreverify
