.class Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->startDisappearAnimation(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    iput-object p2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 361
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 362
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, 0x7f050000

    const v2, 0x7f050001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method