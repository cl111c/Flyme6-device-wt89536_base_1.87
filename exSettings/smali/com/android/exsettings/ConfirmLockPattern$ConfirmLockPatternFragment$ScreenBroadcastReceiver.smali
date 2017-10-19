.class Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$ScreenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenBroadcastReceiver"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 1

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$ScreenBroadcastReceiver;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/exsettings/ConfirmLockPattern$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;
    .param p2, "x1"    # Lcom/android/exsettings/ConfirmLockPattern$1;

    .prologue
    .line 549
    invoke-direct {p0, p1}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$ScreenBroadcastReceiver;-><init>(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 555
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    .line 556
    const-string v0, "android.intent.action.SCREEN_OFF"

    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$ScreenBroadcastReceiver;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;
    invoke-static {v0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$600(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/exsettings/CredentialCheckResultTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exsettings/CredentialCheckResultTracker;->clearResult()V

    .line 559
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$ScreenBroadcastReceiver;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mErrorTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$900(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    :cond_0
    return-void
.end method
