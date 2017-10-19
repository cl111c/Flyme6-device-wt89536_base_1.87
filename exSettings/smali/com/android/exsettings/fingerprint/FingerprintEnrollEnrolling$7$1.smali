.class Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$7$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$7;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$7;


# direct methods
.method constructor <init>(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$7;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$7$1;->this$1:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$7$1;->this$1:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$7;

    iget-object v0, v0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$7;->this$0:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;

    # invokes: Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V
    invoke-static {v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->access$1200(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)V

    .line 385
    return-void
.end method
