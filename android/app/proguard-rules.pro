# --- Stripe Push Provisioning ---
-keep class com.stripe.android.pushProvisioning.** { *; }
-dontwarn com.stripe.android.pushProvisioning.**

# --- CardinalCommerce (used by Stripe 3DS) ---
-keep class com.cardinalcommerce.** { *; }
-dontwarn com.cardinalcommerce.**
-keep class com.cardinalcommerce.dependencies.internal.minidev.asm.** { *; }
-dontwarn com.cardinalcommerce.dependencies.internal.minidev.asm.**

# --- Razorpay SDK ---
-keep class com.razorpay.** { *; }
-dontwarn com.razorpay.**

# Flutter PayPal Native
-keep class com.piccmaq.flutter_paypal_native.** { *; }
-dontwarn com.piccmaq.flutter_paypal_native.**

# --- ProGuard Annotations (some libraries require them) ---
-keep @interface proguard.annotation.Keep
-keep @interface proguard.annotation.KeepClassMembers
