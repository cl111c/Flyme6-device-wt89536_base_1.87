.class Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I


# direct methods
.method constructor <init>(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$1:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iput-object p2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 4
    .param p1, "token"    # [B
    .param p2, "timeoutMs"    # I

    .prologue
    .line 442
    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$1:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v1, v1, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v2, 0x0

    # setter for: Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v1, v2}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$302(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, "matched":Z
    if-eqz p1, :cond_0

    .line 445
    const/4 v0, 0x1

    .line 446
    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$intent:Landroid/content/Intent;

    const-string v2, "hw_auth_token"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$1:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v1, v1, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;
    invoke-static {v1}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$600(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/exsettings/CredentialCheckResultTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$localEffectiveUserId:I

    invoke-virtual {v1, v0, v2, p2, v3}, Lcom/android/exsettings/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 452
    return-void
.end method
