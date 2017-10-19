.class Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$6;
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
    .line 365
    iput-object p1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$6;->this$0:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$6;->this$0:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;

    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$6;->this$0:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;

    iget-object v1, v1, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mToken:[B

    # invokes: Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->launchFinish([B)V
    invoke-static {v0, v1}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->access$1000(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;[B)V

    .line 369
    return-void
.end method
