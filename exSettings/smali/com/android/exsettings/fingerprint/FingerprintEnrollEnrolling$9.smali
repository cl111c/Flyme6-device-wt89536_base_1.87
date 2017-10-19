.class Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$9;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 397
    iput-object p1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$9;->this$0:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$9;->this$0:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;

    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$9;->this$0:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;

    const v2, 0x7f0c01b0

    invoke-virtual {v1, v2}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->access$1300(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;Ljava/lang/CharSequence;)V

    .line 401
    return-void
.end method
