.class Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$7;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "FingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$7;->this$0:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$7;->this$0:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;

    # getter for: Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z
    invoke-static {v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->access$1100(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$7;->this$0:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;

    # getter for: Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mFingerprintAnimator:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->access$300(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$7$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$7$1;-><init>(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$7;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
