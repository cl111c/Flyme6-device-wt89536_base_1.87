.class Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$8;
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
    .line 390
    iput-object p1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$8;->this$0:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$8;->this$0:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;

    # invokes: Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->showIconTouchDialog()V
    invoke-static {v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->access$100(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)V

    .line 394
    return-void
.end method
