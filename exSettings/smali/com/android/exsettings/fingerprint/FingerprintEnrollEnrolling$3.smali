.class Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->animateFlash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;

.field final synthetic val$listener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method constructor <init>(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$3;->this$0:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;

    iput-object p2, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$3;->val$listener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 205
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$3;->this$0:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;

    # getter for: Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundActivatedColor:I
    invoke-static {v3}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->access$400(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$3;->this$0:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;

    # getter for: Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundRestingColor:I
    invoke-static {v3}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->access$500(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)I

    move-result v3

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 207
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$3;->val$listener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 208
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 209
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$3;->this$0:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;

    # getter for: Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->access$600(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 210
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 211
    return-void
.end method
