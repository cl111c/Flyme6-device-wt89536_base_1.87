.class public Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;
.super Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/exsettings/CredentialCheckResultTracker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/ConfirmLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$ScreenBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mAppearAnimationUtils:Lcom/android/exsettingslib/animation/AppearAnimationUtils;

.field private mBlockImm:Z

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;

.field private mDetailsTextView:Landroid/widget/TextView;

.field private mDisappearAnimationUtils:Lcom/android/exsettingslib/animation/DisappearAnimationUtils;

.field private mDisappearing:Z

.field private mEffectiveUserId:I

.field private mErrorTextView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAlpha:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private final mResetErrorRunnable:Ljava/lang/Runnable;

.field private mScreenBroadcastReceiver:Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$ScreenBroadcastReceiver;

.field private mUsingFingerprint:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;-><init>()V

    .line 96
    iput-boolean v1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 104
    iput-boolean v1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUsingFingerprint:Z

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mScreenBroadcastReceiver:Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$ScreenBroadcastReceiver;

    .line 484
    new-instance v0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    invoke-direct {v0, p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;-><init>(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    .line 115
    return-void
.end method

.method static synthetic access$1000(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;Ljava/lang/CharSequence;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # J

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(Ljava/lang/CharSequence;J)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBlockImm:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->resetState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->shouldAutoShowSoftKeyboard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/exsettings/CredentialCheckResultTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->isInternalActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    return v0
.end method

.method private getActiveViews()[Landroid/view/View;
    .locals 2

    .prologue
    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/View;

    return-object v1
.end method

.method private getDefaultDetails()I
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c0522

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0c0521

    goto :goto_0
.end method

.method private getDefaultHeader()I
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c0517

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0c0519

    goto :goto_0
.end method

.method private getErrorMessage()I
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c0524

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0c0523

    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 445
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 446
    .local v6, "elapsedRealtime":J
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 447
    new-instance v0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$6;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$6;-><init>(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;JJ)V

    invoke-virtual {v0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 465
    return-void
.end method

.method private handleNext()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 318
    iget-object v3, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    if-eqz v3, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 324
    iget-object v3, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "pin":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "has_challenge"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 327
    .local v2, "verifyChallenge":Z
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 328
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 329
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->isInternalActivity()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 330
    invoke-direct {p0, v1, v0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 334
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 338
    :cond_3
    iget-object v3, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;

    iget v4, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v3, v5, v0, v5, v4}, Lcom/android/exsettings/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    goto :goto_0
.end method

.method private isInternalActivity()Z
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/exsettings/ConfirmLockPassword$InternalActivity;

    return v0
.end method

.method private onPasswordChecked(ZLandroid/content/Intent;II)V
    .locals 4
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I

    .prologue
    .line 424
    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 425
    if-eqz p1, :cond_0

    .line 426
    invoke-direct {p0, p2}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    .line 436
    :goto_0
    return-void

    .line 428
    :cond_0
    if-lez p3, :cond_1

    .line 429
    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p4, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    .line 431
    .local v0, "deadline":J
    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V

    goto :goto_0

    .line 433
    .end local v0    # "deadline":J
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getErrorMessage()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V

    goto :goto_0
.end method

.method private registReceiver()V
    .locals 3

    .prologue
    .line 532
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 533
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mScreenBroadcastReceiver:Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$ScreenBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 535
    return-void
.end method

.method private resetState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 284
    iget-boolean v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBlockImm:Z

    if-eqz v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 286
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 287
    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 289
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->shouldAutoShowSoftKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 287
    :cond_2
    const/16 v0, 0x12

    goto :goto_1
.end method

.method private shouldAutoShowSoftKeyboard()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUsingFingerprint:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showError(I)V
    .locals 2
    .param p1, "msg"    # I

    .prologue
    .line 481
    const-wide/16 v0, 0xbb8

    invoke-direct {p0, p1, v0, v1}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(IJ)V

    .line 482
    return-void
.end method

.method private showError(IJ)V
    .locals 2
    .param p1, "msg"    # I
    .param p2, "timeout"    # J

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(Ljava/lang/CharSequence;J)V

    .line 501
    return-void
.end method

.method private showError(Ljava/lang/CharSequence;J)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "timeout"    # J

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 494
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 497
    :cond_0
    return-void
.end method

.method private startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 372
    iget v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 373
    .local v0, "localEffectiveUserId":I
    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v2, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;-><init>(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;Ljava/lang/String;I)V

    invoke-static {v1, p1, v0, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 392
    return-void
.end method

.method private startDisappearAnimation(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    if-eqz v0, :cond_0

    .line 420
    :goto_0
    return-void

    .line 398
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    .line 400
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getThemeResId()I

    move-result v0

    const v1, 0x7f0d007d

    if-ne v0, v1, :cond_1

    .line 401
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearAnimationUtils:Lcom/android/exsettingslib/animation/DisappearAnimationUtils;

    invoke-direct {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActiveViews()[Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;-><init>(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettingslib/animation/DisappearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 417
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 418
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 8
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "challenge"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 348
    .local v2, "challenge":J
    iget v4, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 349
    .local v4, "localEffectiveUserId":I
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v5, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$3;

    invoke-direct {v5, p0, p2, v4}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$3;-><init>(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;I)V

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 369
    return-void
.end method

.method private unRegistReceiver()V
    .locals 2

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mScreenBroadcastReceiver:Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$ScreenBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 539
    return-void
.end method


# virtual methods
.method protected authenticationSucceeded()V
    .locals 5

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;

    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exsettings/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 276
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 257
    const/16 v0, 0x1e

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 468
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 478
    :goto_0
    return-void

    .line 470
    :pswitch_0
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 474
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 475
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 468
    :pswitch_data_0
    .packed-switch 0x7f12003d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 121
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exsettings/Utils;->getEffectiveUserId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 123
    new-instance v0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$ScreenBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$ScreenBroadcastReceiver;-><init>(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;Lcom/android/exsettings/ConfirmLockPassword$1;)V

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mScreenBroadcastReceiver:Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$ScreenBroadcastReceiver;

    .line 124
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->registReceiver()V

    .line 126
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v11

    .line 133
    .local v11, "storedQuality":I
    const v0, 0x7f040029

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 136
    .local v12, "view":Landroid/view/View;
    const v0, 0x7f12003d

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v0, 0x7f12003e

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v0, 0x7f12003c

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 142
    new-instance v0, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 144
    const v0, 0x7f12003b

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f12004d

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f12004f

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    .line 147
    const/high16 v0, 0x40000

    if-eq v0, v11, :cond_0

    const/high16 v0, 0x50000

    if-eq v0, v11, :cond_0

    const/high16 v0, 0x60000

    if-ne v0, v11, :cond_5

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    .line 151
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 154
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 155
    .local v10, "intent":Landroid/content/Intent;
    if-eqz v10, :cond_3

    .line 156
    const-string v0, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 158
    .local v9, "headerMessage":Ljava/lang/CharSequence;
    const-string v0, "com.android.settings.ConfirmCredentials.details"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 160
    .local v8, "detailsMessage":Ljava/lang/CharSequence;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultHeader()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 163
    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultDetails()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .end local v8    # "detailsMessage":Ljava/lang/CharSequence;
    .end local v9    # "headerMessage":Ljava/lang/CharSequence;
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v7

    .line 170
    .local v7, "currentType":I
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v1, :cond_6

    .end local v7    # "currentType":I
    :goto_1
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 172
    new-instance v0, Lcom/android/exsettingslib/animation/AppearAnimationUtils;

    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0xdc

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v13, 0x10c000e

    invoke-static {v6, v13}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/exsettingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mAppearAnimationUtils:Lcom/android/exsettingslib/animation/AppearAnimationUtils;

    .line 176
    new-instance v0, Lcom/android/exsettingslib/animation/DisappearAnimationUtils;

    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x6e

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v13, 0x10c000f

    invoke-static {v6, v13}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/exsettingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearAnimationUtils:Lcom/android/exsettingslib/animation/DisappearAnimationUtils;

    .line 180
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "check_lock_result"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/CredentialCheckResultTracker;

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;

    .line 184
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;

    if-nez v0, :cond_4

    .line 185
    new-instance v0, Lcom/android/exsettings/CredentialCheckResultTracker;

    invoke-direct {v0}, Lcom/android/exsettings/CredentialCheckResultTracker;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;

    .line 186
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;

    const-string v2, "check_lock_result"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 190
    :cond_4
    return-object v12

    .line 147
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 170
    .restart local v7    # "currentType":I
    .restart local v10    # "intent":Landroid/content/Intent;
    :cond_6
    const/16 v7, 0x12

    goto :goto_1
.end method

.method public onCredentialChecked(ZLandroid/content/Intent;II)V
    .locals 0
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I

    .prologue
    .line 441
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->onPasswordChecked(ZLandroid/content/Intent;II)V

    .line 442
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 544
    invoke-super {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->onDestroy()V

    .line 545
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->unRegistReceiver()V

    .line 546
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 506
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 509
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    .line 510
    const/4 v0, 0x1

    .line 512
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 280
    iput-boolean p1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUsingFingerprint:Z

    .line 281
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-super {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->onPause()V

    .line 248
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 250
    iput-object v1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/CredentialCheckResultTracker;->setListener(Lcom/android/exsettings/CredentialCheckResultTracker$Listener;)V

    .line 253
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 262
    invoke-super {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->onResume()V

    .line 263
    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 264
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;

    invoke-virtual {v2}, Lcom/android/exsettings/CredentialCheckResultTracker;->clearResult()V

    .line 266
    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V

    .line 270
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;

    invoke-virtual {v2, p0}, Lcom/android/exsettings/CredentialCheckResultTracker;->setListener(Lcom/android/exsettings/CredentialCheckResultTracker$Listener;)V

    .line 271
    return-void

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->resetState()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 299
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBlockImm:Z

    if-eqz v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;

    invoke-direct {v1, p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;-><init>(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public prepareEnterAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 210
    invoke-super {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    .line 211
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 212
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 213
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 214
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 215
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBlockImm:Z

    .line 217
    return-void
.end method

.method public startEnterAnimation()V
    .locals 3

    .prologue
    .line 235
    invoke-super {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    .line 236
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mAppearAnimationUtils:Lcom/android/exsettingslib/animation/AppearAnimationUtils;

    invoke-direct {p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActiveViews()[Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;

    invoke-direct {v2, p0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;-><init>(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettingslib/animation/AppearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    .line 243
    return-void
.end method
