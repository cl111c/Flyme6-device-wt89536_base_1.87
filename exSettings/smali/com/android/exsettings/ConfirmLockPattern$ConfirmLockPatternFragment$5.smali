.class Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$5;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    sget-object v1, Lcom/android/exsettings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/exsettings/ConfirmLockPattern$Stage;

    # invokes: Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/exsettings/ConfirmLockPattern$Stage;)V
    invoke-static {v0, v1}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1000(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/exsettings/ConfirmLockPattern$Stage;)V

    .line 526
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 517
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 518
    .local v0, "secondsCountdown":I
    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mErrorTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$900(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    const v3, 0x7f0c053e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    return-void
.end method
