.class Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->isInternalActivity()Z

    move-result v0

    return v0
.end method

.method private isInternalActivity()Z
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/exsettings/ConfirmLockPattern$InternalActivity;

    return v0
.end method

.method private startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V
    .locals 4
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v3, 0x0

    .line 458
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 459
    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;
    invoke-static {v1}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$600(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/exsettings/CredentialCheckResultTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I
    invoke-static {v2}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$500(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)I

    move-result v2

    invoke-virtual {v1, v3, p2, v3, v2}, Lcom/android/exsettings/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 482
    :goto_0
    return-void

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I
    invoke-static {v1}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$500(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)I

    move-result v0

    .line 464
    .local v0, "localEffectiveUserId":I
    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$700(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    new-instance v3, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4$2;

    invoke-direct {v3, p0, p2, p1, v0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4$2;-><init>(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;Landroid/content/Intent;Ljava/util/List;I)V

    invoke-static {v2, p1, v0, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    # setter for: Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v1, v2}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$302(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V
    .locals 8
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 431
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I
    invoke-static {v0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$500(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)I

    move-result v4

    .line 432
    .local v4, "localEffectiveUserId":I
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "challenge"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 434
    .local v2, "challenge":J
    iget-object v6, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$700(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    new-instance v5, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;

    invoke-direct {v5, p0, p2, v4}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;-><init>(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;Landroid/content/Intent;I)V

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    # setter for: Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v6, v0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$302(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 454
    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$100(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$200(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 396
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v4, 0x0

    .line 403
    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v2}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$300(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/os/AsyncTask;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z
    invoke-static {v2}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$400(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v2}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$100(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 409
    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "has_challenge"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 411
    .local v1, "verifyChallenge":Z
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 412
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 413
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->isInternalActivity()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 414
    invoke-direct {p0, p1, v0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V

    goto :goto_0

    .line 418
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V

    goto :goto_0

    .line 422
    :cond_3
    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;
    invoke-static {v2}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$600(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/exsettings/CredentialCheckResultTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I
    invoke-static {v3}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$500(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)I

    move-result v3

    invoke-virtual {v2, v4, v0, v4, v3}, Lcom/android/exsettings/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$100(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$200(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 392
    return-void
.end method
