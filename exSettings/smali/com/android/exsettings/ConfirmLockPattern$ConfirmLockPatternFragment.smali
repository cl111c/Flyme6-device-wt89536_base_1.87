.class public Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;
.super Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/exsettings/CredentialCheckResultTracker$Listener;
.implements Lcom/android/exsettingslib/animation/AppearAnimationCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/ConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$ScreenBroadcastReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;",
        "Lcom/android/exsettings/CredentialCheckResultTracker$Listener;",
        "Lcom/android/exsettingslib/animation/AppearAnimationCreator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppearAnimationUtils:Lcom/android/exsettingslib/animation/AppearAnimationUtils;

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;

.field private mDetailsText:Ljava/lang/CharSequence;

.field private mDetailsTextView:Landroid/widget/TextView;

.field private mDisappearAnimationUtils:Lcom/android/exsettingslib/animation/DisappearAnimationUtils;

.field private mDisappearing:Z

.field private mEffectiveUserId:I

.field private mErrorTextView:Landroid/widget/TextView;

.field private mHeaderText:Ljava/lang/CharSequence;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mLeftSpacerLandscape:Landroid/view/View;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mRightSpacerLandscape:Landroid/view/View;

.field private mScreenBroadcastReceiver:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$ScreenBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    .line 325
    new-instance v0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2;-><init>(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 387
    new-instance v0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    invoke-direct {v0, p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$4;-><init>(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 121
    return-void
.end method

.method static synthetic access$100(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/exsettings/ConfirmLockPattern$Stage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;
    .param p1, "x1"    # Lcom/android/exsettings/ConfirmLockPattern$Stage;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/exsettings/ConfirmLockPattern$Stage;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/exsettings/CredentialCheckResultTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mErrorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private getActiveViews()[[Ljava/lang/Object;
    .locals 8

    .prologue
    .line 251
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v6, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 255
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCancelButton:Landroid/widget/Button;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_0
    iget-object v6, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v0

    .line 258
    .local v0, "cellStates":[[Lcom/android/internal/widget/LockPatternView$CellState;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_2

    .line 259
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v5, "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    aget-object v6, v0, v1

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 261
    aget-object v6, v0, v1

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 263
    :cond_1
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    .end local v2    # "j":I
    .end local v5    # "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    iget-object v6, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 266
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    aget-object v7, v0, v7

    array-length v7, v7

    filled-new-array {v6, v7}, [I

    move-result-object v6

    const-class v7, Ljava/lang/Object;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/Object;

    .line 269
    .local v4, "resultArr":[[Ljava/lang/Object;
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 270
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 271
    .restart local v5    # "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 272
    aget-object v6, v4, v1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v2

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 269
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 275
    .end local v2    # "j":I
    .end local v5    # "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_5
    return-object v4
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 509
    sget-object v0, Lcom/android/exsettings/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/exsettings/ConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/exsettings/ConfirmLockPattern$Stage;)V

    .line 510
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 511
    .local v6, "elapsedRealtime":J
    new-instance v0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$5;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$5;-><init>(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V

    invoke-virtual {v0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 528
    return-void
.end method

.method private onPatternChecked(ZLandroid/content/Intent;II)V
    .locals 4
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I

    .prologue
    .line 487
    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 488
    if-eqz p1, :cond_0

    .line 489
    invoke-direct {p0, p2}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    .line 500
    :goto_0
    return-void

    .line 491
    :cond_0
    if-lez p3, :cond_1

    .line 492
    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p4, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    .line 494
    .local v0, "deadline":J
    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    goto :goto_0

    .line 496
    .end local v0    # "deadline":J
    :cond_1
    sget-object v2, Lcom/android/exsettings/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/exsettings/ConfirmLockPattern$Stage;

    invoke-direct {p0, v2}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/exsettings/ConfirmLockPattern$Stage;)V

    .line 497
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->postClearPatternRunnable()V

    goto :goto_0
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 335
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 336
    return-void
.end method

.method private registReceiver()V
    .locals 3

    .prologue
    .line 565
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 566
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mScreenBroadcastReceiver:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$ScreenBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 568
    return-void
.end method

.method private startDisappearAnimation(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    if-eqz v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 347
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    .line 349
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getThemeResId()I

    move-result v0

    const v1, 0x7f0d007d

    if-ne v0, v1, :cond_1

    .line 350
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 351
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearAnimationUtils:Lcom/android/exsettingslib/animation/DisappearAnimationUtils;

    invoke-direct {p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActiveViews()[[Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;

    invoke-direct {v2, p0, p1}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;-><init>(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/exsettingslib/animation/DisappearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/exsettingslib/animation/AppearAnimationCreator;)V

    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 369
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private unRegistReceiver()V
    .locals 2

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mScreenBroadcastReceiver:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$ScreenBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 572
    return-void
.end method

.method private updateStage(Lcom/android/exsettings/ConfirmLockPattern$Stage;)V
    .locals 3
    .param p1, "stage"    # Lcom/android/exsettings/ConfirmLockPattern$Stage;

    .prologue
    const/4 v2, 0x1

    .line 286
    sget-object v0, Lcom/android/exsettings/ConfirmLockPattern$1;->$SwitchMap$com$android$settings$ConfirmLockPattern$Stage:[I

    invoke-virtual {p1}, Lcom/android/exsettings/ConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 322
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 323
    return-void

    .line 288
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :goto_1
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    :goto_2
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mErrorTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 302
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 303
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0c0518

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Landroid/widget/TextView;

    const v1, 0x7f0c0520

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 306
    :pswitch_1
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mErrorTextView:Landroid/widget/TextView;

    const v1, 0x7f0c0525

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 308
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 309
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 310
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_0

    .line 313
    :pswitch_2
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 316
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected authenticationSucceeded()V
    .locals 5

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;

    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exsettings/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 341
    return-void
.end method

.method public createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 14
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "delay"    # J
    .param p4, "duration"    # J
    .param p6, "translationY"    # F
    .param p7, "appearing"    # Z
    .param p8, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p9, "finishListener"    # Ljava/lang/Runnable;

    .prologue
    .line 535
    instance-of v0, p1, Lcom/android/internal/widget/LockPatternView$CellState;

    if-eqz v0, :cond_4

    move-object v1, p1

    .line 536
    check-cast v1, Lcom/android/internal/widget/LockPatternView$CellState;

    .line 537
    .local v1, "animatedCell":Lcom/android/internal/widget/LockPatternView$CellState;
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p7, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p7, :cond_1

    move/from16 v4, p6

    :goto_1
    if-eqz p7, :cond_2

    const/4 v5, 0x0

    :goto_2
    if-eqz p7, :cond_3

    const/4 v6, 0x0

    :goto_3
    const/high16 v7, 0x3f800000    # 1.0f

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-virtual/range {v0 .. v13}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 547
    .end local v1    # "animatedCell":Lcom/android/internal/widget/LockPatternView$CellState;
    :goto_4
    return-void

    .line 537
    .restart local v1    # "animatedCell":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    move/from16 v5, p6

    goto :goto_2

    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_3

    .line 544
    .end local v1    # "animatedCell":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_4
    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mAppearAnimationUtils:Lcom/android/exsettingslib/animation/AppearAnimationUtils;

    move-object v3, p1

    check-cast v3, Landroid/view/View;

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/android/exsettingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 221
    const/16 v0, 0x1f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 127
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exsettings/Utils;->getEffectiveUserId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    .line 129
    new-instance v0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$ScreenBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$ScreenBroadcastReceiver;-><init>(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/exsettings/ConfirmLockPattern$1;)V

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mScreenBroadcastReceiver:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$ScreenBroadcastReceiver;

    .line 130
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->registReceiver()V

    .line 132
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 137
    const v0, 0x7f04002b

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 138
    .local v10, "view":Landroid/view/View;
    const v0, 0x7f12003b

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f120041

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 141
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setPatternViewInSettings(Z)V

    .line 142
    const v0, 0x7f12004d

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f12004f

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mErrorTextView:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f120051

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLeftSpacerLandscape:Landroid/view/View;

    .line 145
    const v0, 0x7f120052

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mRightSpacerLandscape:Landroid/view/View;

    .line 149
    const v0, 0x7f120040

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 151
    .local v9, "topLayout":Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v9, v0}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 154
    .local v8, "intent":Landroid/content/Intent;
    if-eqz v8, :cond_0

    .line 155
    const-string v0, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    .line 157
    const-string v0, "com.android.settings.ConfirmCredentials.details"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 163
    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 166
    sget-object v0, Lcom/android/exsettings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/exsettings/ConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/exsettings/ConfirmLockPattern$Stage;)V

    .line 168
    if-nez p3, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 174
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 177
    :cond_1
    new-instance v0, Lcom/android/exsettingslib/animation/AppearAnimationUtils;

    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0xdc

    const/high16 v4, 0x40000000    # 2.0f

    const v5, 0x3fa66666    # 1.3f

    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10c000e

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/exsettingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mAppearAnimationUtils:Lcom/android/exsettingslib/animation/AppearAnimationUtils;

    .line 181
    new-instance v0, Lcom/android/exsettingslib/animation/DisappearAnimationUtils;

    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x7d

    const/high16 v4, 0x40800000    # 4.0f

    const v5, 0x3e99999a    # 0.3f

    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10c000f

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    new-instance v7, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$1;

    invoke-direct {v7, p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$1;-><init>(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    invoke-direct/range {v0 .. v7}, Lcom/android/exsettingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;Lcom/android/exsettingslib/animation/AppearAnimationUtils$RowTranslationScaler;)V

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearAnimationUtils:Lcom/android/exsettingslib/animation/DisappearAnimationUtils;

    .line 191
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "check_lock_result"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/CredentialCheckResultTracker;

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;

    .line 195
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;

    if-nez v0, :cond_2

    .line 196
    new-instance v0, Lcom/android/exsettings/CredentialCheckResultTracker;

    invoke-direct {v0}, Lcom/android/exsettings/CredentialCheckResultTracker;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;

    .line 197
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;

    const-string v2, "check_lock_result"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 201
    :cond_2
    return-object v10

    .line 163
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onCredentialChecked(ZLandroid/content/Intent;II)V
    .locals 0
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I

    .prologue
    .line 505
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->onPatternChecked(ZLandroid/content/Intent;II)V

    .line 506
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 577
    invoke-super {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->onDestroy()V

    .line 578
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->unRegistReceiver()V

    .line 579
    return-void
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 375
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLeftSpacerLandscape:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mRightSpacerLandscape:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 378
    iget-object v3, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLeftSpacerLandscape:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mRightSpacerLandscape:Landroid/view/View;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 378
    goto :goto_0

    :cond_2
    move v1, v2

    .line 379
    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 211
    invoke-super {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->onPause()V

    .line 213
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/CredentialCheckResultTracker;->setListener(Lcom/android/exsettings/CredentialCheckResultTracker$Listener;)V

    .line 217
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 226
    invoke-super {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->onResume()V

    .line 228
    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 229
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 230
    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;

    invoke-virtual {v2}, Lcom/android/exsettings/CredentialCheckResultTracker;->clearResult()V

    .line 231
    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    .line 237
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/exsettings/CredentialCheckResultTracker;

    invoke-virtual {v2, p0}, Lcom/android/exsettings/CredentialCheckResultTracker;->setListener(Lcom/android/exsettings/CredentialCheckResultTracker$Listener;)V

    .line 238
    return-void

    .line 232
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    sget-object v2, Lcom/android/exsettings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/exsettings/ConfirmLockPattern$Stage;

    invoke-direct {p0, v2}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/exsettings/ConfirmLockPattern$Stage;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 207
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-super {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    .line 243
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 244
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 245
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setAlpha(F)V

    .line 246
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 247
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 248
    return-void
.end method

.method public startEnterAnimation()V
    .locals 3

    .prologue
    .line 280
    invoke-super {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    .line 281
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setAlpha(F)V

    .line 282
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mAppearAnimationUtils:Lcom/android/exsettingslib/animation/AppearAnimationUtils;

    invoke-direct {p0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActiveViews()[[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/exsettingslib/animation/AppearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/exsettingslib/animation/AppearAnimationCreator;)V

    .line 283
    return-void
.end method
