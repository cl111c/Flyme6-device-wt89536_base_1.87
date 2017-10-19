.class public Lcom/android/exsettings/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/CryptKeeper$ValidationTask;,
        Lcom/android/exsettings/CryptKeeper$DecryptTask;,
        Lcom/android/exsettings/CryptKeeper$NonConfigurationInstanceState;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private final mClearPatternRunnable:Ljava/lang/Runnable;

.field private mCooldown:Z

.field private mCorrupt:Z

.field private mEncryptionGoneBad:Z

.field private final mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mMdtpActivated:Z

.field private mNotificationCountdown:I

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mReleaseWakeLockCountdown:I

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStatusString:I

.field private mValidationComplete:Z

.field private mValidationRequested:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 133
    iput-boolean v0, p0, Lcom/android/exsettings/CryptKeeper;->mCooldown:Z

    .line 139
    iput v0, p0, Lcom/android/exsettings/CryptKeeper;->mNotificationCountdown:I

    .line 141
    iput v0, p0, Lcom/android/exsettings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 142
    const v0, 0x7f0c0847

    iput v0, p0, Lcom/android/exsettings/CryptKeeper;->mStatusString:I

    .line 152
    new-instance v0, Lcom/android/exsettings/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/CryptKeeper$1;-><init>(Lcom/android/exsettings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    .line 162
    new-instance v0, Lcom/android/exsettings/CryptKeeper$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/CryptKeeper$2;-><init>(Lcom/android/exsettings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 348
    new-instance v0, Lcom/android/exsettings/CryptKeeper$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/CryptKeeper$3;-><init>(Lcom/android/exsettings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    .line 749
    new-instance v0, Lcom/android/exsettings/CryptKeeper$6;

    invoke-direct {v0, p0}, Lcom/android/exsettings/CryptKeeper$6;-><init>(Lcom/android/exsettings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/CryptKeeper;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/CryptKeeper;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/exsettings/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/exsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/CryptKeeper;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/exsettings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/CryptKeeper;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->setupUi()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/exsettings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/CryptKeeper;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->updateProgress()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/exsettings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/CryptKeeper;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->notifyUser()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/exsettings/CryptKeeper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/CryptKeeper;

    .prologue
    .line 96
    iget v0, p0, Lcom/android/exsettings/CryptKeeper;->mStatusString:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/exsettings/CryptKeeper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/CryptKeeper;
    .param p1, "x1"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/android/exsettings/CryptKeeper;->mStatusString:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/exsettings/CryptKeeper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/exsettings/CryptKeeper;->setBackFunctionality(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/exsettings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/CryptKeeper;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->passwordEntryInit()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/exsettings/CryptKeeper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/CryptKeeper;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/exsettings/CryptKeeper;->mCooldown:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/exsettings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/CryptKeeper;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->cooldown()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/exsettings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/CryptKeeper;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->beginAttempt()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/exsettings/CryptKeeper;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/CryptKeeper;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/exsettings/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/exsettings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/CryptKeeper;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/exsettings/CryptKeeper;)Landroid/os/storage/IMountService;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/CryptKeeper;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/CryptKeeper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/CryptKeeper;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exsettings/CryptKeeper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/CryptKeeper;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/exsettings/CryptKeeper;->mMdtpActivated:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/exsettings/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/exsettings/CryptKeeper;->mMdtpActivated:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/exsettings/CryptKeeper;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/CryptKeeper;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/CryptKeeper;->showFactoryReset(ZZ)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/exsettings/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/exsettings/CryptKeeper;->mValidationComplete:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/exsettings/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/exsettings/CryptKeeper;->mEncryptionGoneBad:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/exsettings/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/exsettings/CryptKeeper;->mCorrupt:Z

    return p1
.end method

.method private beginAttempt()V
    .locals 2

    .prologue
    .line 252
    const v1, 0x7f12005d

    invoke-virtual {p0, v1}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 253
    .local v0, "status":Landroid/widget/TextView;
    const v1, 0x7f0c084d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 254
    return-void
.end method

.method private cooldown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 721
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 722
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 724
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v1, :cond_1

    .line 725
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 728
    :cond_1
    const v1, 0x7f12005d

    invoke-virtual {p0, v1}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 729
    .local v0, "status":Landroid/widget/TextView;
    const v1, 0x7f0c01c4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 730
    return-void
.end method

.method private delayAudioNotification()V
    .locals 1

    .prologue
    .line 1042
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/exsettings/CryptKeeper;->mNotificationCountdown:I

    .line 1043
    return-void
.end method

.method private static disableCryptKeeperComponent(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1073
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1074
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/android/exsettings/CryptKeeper;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1075
    .local v0, "name":Landroid/content/ComponentName;
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabling component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1078
    return-void
.end method

.method private encryptionProgressInit()V
    .locals 3

    .prologue
    .line 601
    const-string v1, "CryptKeeper"

    const-string v2, "Encryption progress screen initializing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 603
    const-string v1, "CryptKeeper"

    const-string v2, "Acquiring wakelock."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 605
    .local v0, "pm":Landroid/os/PowerManager;
    const/16 v1, 0x1a

    const-string v2, "CryptKeeper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 606
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 609
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    const v1, 0x7f12005c

    invoke-virtual {p0, v1}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 611
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/exsettings/CryptKeeper;->setBackFunctionality(Z)V

    .line 614
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->updateProgress()V

    .line 615
    return-void
.end method

.method private fakeUnlockAttempt(Landroid/view/View;)V
    .locals 4
    .param p1, "postingView"    # Landroid/view/View;

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->beginAttempt()V

    .line 746
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 747
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 908
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 909
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 910
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 912
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 1

    .prologue
    .line 1035
    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 1031
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private handleBadAttempt(Ljava/lang/Integer;)V
    .locals 14
    .param p1, "failedAttempts"    # Ljava/lang/Integer;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 258
    iget-object v8, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v8, :cond_0

    .line 259
    iget-object v8, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v9, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 260
    iget-object v8, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v9, p0, Lcom/android/exsettings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 261
    iget-object v8, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v9, p0, Lcom/android/exsettings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x5dc

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 263
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    rem-int/lit8 v8, v8, 0xa

    if-nez v8, :cond_2

    .line 264
    iput-boolean v12, p0, Lcom/android/exsettings/CryptKeeper;->mCooldown:Z

    .line 267
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->cooldown()V

    .line 309
    :cond_1
    :goto_0
    return-void

    .line 269
    :cond_2
    const v8, 0x7f12005d

    invoke-virtual {p0, v8}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 271
    .local v5, "status":Landroid/widget/TextView;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    rsub-int/lit8 v3, v8, 0x1e

    .line 272
    .local v3, "remainingAttempts":I
    const/16 v8, 0xa

    if-ge v3, v8, :cond_4

    .line 273
    const v8, 0x7f0c01c5

    invoke-virtual {p0, v8}, Lcom/android/exsettings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 274
    .local v7, "warningTemplate":Ljava/lang/CharSequence;
    new-array v8, v12, [Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v13

    invoke-static {v7, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 276
    .local v6, "warning":Ljava/lang/CharSequence;
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    .end local v6    # "warning":Ljava/lang/CharSequence;
    .end local v7    # "warningTemplate":Ljava/lang/CharSequence;
    :goto_1
    iget-object v8, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v8, :cond_3

    .line 296
    iget-object v8, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v9, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 297
    iget-object v8, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v8, v12}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 301
    :cond_3
    iget-object v8, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v8, :cond_1

    .line 302
    iget-object v8, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v8, v12}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 303
    const-string v8, "input_method"

    invoke-virtual {p0, v8}, Lcom/android/exsettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 305
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v8, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v8, v13}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 306
    invoke-direct {p0, v12}, Lcom/android/exsettings/CryptKeeper;->setBackFunctionality(Z)V

    goto :goto_0

    .line 278
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    const/4 v2, 0x0

    .line 280
    .local v2, "passwordType":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    .line 281
    .local v4, "service":Landroid/os/storage/IMountService;
    invoke-interface {v4}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 286
    .end local v4    # "service":Landroid/os/storage/IMountService;
    :goto_2
    const/4 v8, 0x3

    if-ne v2, v8, :cond_5

    .line 287
    const v8, 0x7f0c084c

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "CryptKeeper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error calling mount service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 288
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v8, 0x2

    if-ne v2, v8, :cond_6

    .line 289
    const v8, 0x7f0c084a

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 291
    :cond_6
    const v8, 0x7f0c084b

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "shouldIncludeAuxiliarySubtypes"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 868
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 871
    .local v1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 873
    .local v2, "filteredImisCount":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 875
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 901
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 876
    .restart local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 879
    .local v8, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 880
    add-int/lit8 v2, v2, 0x1

    .line 881
    goto :goto_0

    .line 884
    :cond_2
    const/4 v0, 0x0

    .line 885
    .local v0, "auxCount":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 886
    .local v7, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 887
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 890
    .end local v7    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 895
    .local v6, "nonAuxCount":I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 896
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 897
    goto :goto_0

    .line 901
    .end local v0    # "auxCount":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "nonAuxCount":I
    .end local v8    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private isDebugView()Z
    .locals 2

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/android/exsettings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDebugView(Ljava/lang/String;)Z
    .locals 2
    .param p1, "viewType"    # Ljava/lang/String;

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/android/exsettings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/android/exsettings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchEmergencyDialer()V
    .locals 2

    .prologue
    .line 1023
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1026
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/exsettings/CryptKeeper;->setBackFunctionality(Z)V

    .line 1027
    invoke-virtual {p0, v0}, Lcom/android/exsettings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 1028
    return-void
.end method

.method private notifyUser()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 392
    iget v0, p0, Lcom/android/exsettings/CryptKeeper;->mNotificationCountdown:I

    if-lez v0, :cond_2

    .line 393
    iget v0, p0, Lcom/android/exsettings/CryptKeeper;->mNotificationCountdown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/exsettings/CryptKeeper;->mNotificationCountdown:I

    .line 408
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 409
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 411
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iget v0, p0, Lcom/android/exsettings/CryptKeeper;->mReleaseWakeLockCountdown:I

    if-lez v0, :cond_3

    .line 413
    iget v0, p0, Lcom/android/exsettings/CryptKeeper;->mReleaseWakeLockCountdown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/exsettings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 418
    :cond_1
    :goto_1
    return-void

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 415
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1
.end method

.method private passwordEntryInit()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    .line 779
    const v4, 0x7f12005a

    invoke-virtual {p0, v4}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    .line 780
    iget-object v4, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 781
    iget-object v4, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 782
    iget-object v4, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 783
    iget-object v4, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 785
    iget-object v4, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 786
    iget-object v4, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 787
    iget-object v4, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 791
    :cond_0
    const v4, 0x7f120041

    invoke-virtual {p0, v4}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LockPatternView;

    iput-object v4, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 794
    iget-object v4, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v4, :cond_1

    .line 797
    iget-object v4, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternView;->setSupportMagazineLockScreen(Z)V

    .line 799
    iget-object v4, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v5, p0, Lcom/android/exsettings/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 803
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 804
    const v4, 0x7f120059

    invoke-virtual {p0, v4}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 805
    .local v0, "emergencyCall":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 806
    const-string v4, "CryptKeeper"

    const-string v5, "Removing the emergency Call button"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 811
    .end local v0    # "emergencyCall":Landroid/view/View;
    :cond_2
    const v4, 0x7f120065

    invoke-virtual {p0, v4}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 812
    .local v1, "imeSwitcher":Landroid/view/View;
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 814
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_3

    invoke-direct {p0, v2, v6}, Lcom/android/exsettings/CryptKeeper;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 815
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 816
    new-instance v4, Lcom/android/exsettings/CryptKeeper$7;

    invoke-direct {v4, p0, v2}, Lcom/android/exsettings/CryptKeeper$7;-><init>(Lcom/android/exsettings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 827
    :cond_3
    iget-object v4, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v4, :cond_4

    .line 828
    const-string v4, "CryptKeeper"

    const-string v5, "Acquiring wakelock."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 830
    .local v3, "pm":Landroid/os/PowerManager;
    if-eqz v3, :cond_4

    .line 831
    const/16 v4, 0x1a

    const-string v5, "CryptKeeper"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 832
    iget-object v4, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 835
    const/16 v4, 0x60

    iput v4, p0, Lcom/android/exsettings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 841
    .end local v3    # "pm":Landroid/os/PowerManager;
    :cond_4
    iget-object v4, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/exsettings/CryptKeeper;->mCooldown:Z

    if-nez v4, :cond_5

    .line 842
    iget-object v4, p0, Lcom/android/exsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/exsettings/CryptKeeper$8;

    invoke-direct {v5, p0, v2}, Lcom/android/exsettings/CryptKeeper$8;-><init>(Lcom/android/exsettings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 849
    :cond_5
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->updateEmergencyCallButtonState()V

    .line 851
    iget-object v4, p0, Lcom/android/exsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 852
    iget-object v4, p0, Lcom/android/exsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/32 v6, 0x1d4c0

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 855
    invoke-virtual {p0}, Lcom/android/exsettings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x480000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 857
    return-void
.end method

.method private final setAirplaneModeIfNecessary()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 961
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 963
    .local v1, "isLteDevice":Z
    :goto_0
    if-nez v1, :cond_0

    .line 964
    const-string v3, "CryptKeeper"

    const-string v4, "Going into airplane mode."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-virtual {p0}, Lcom/android/exsettings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 966
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 967
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 968
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/android/exsettings/CryptKeeper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 970
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 961
    .end local v1    # "isLteDevice":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final setBackFunctionality(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 737
    if-eqz p1, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 742
    :goto_0
    return-void

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3770000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private setupUi()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const v3, 0x7f040038

    .line 486
    iget-boolean v2, p0, Lcom/android/exsettings/CryptKeeper;->mEncryptionGoneBad:Z

    if-nez v2, :cond_0

    const-string v2, "error"

    invoke-direct {p0, v2}, Lcom/android/exsettings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 487
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/exsettings/CryptKeeper;->setContentView(I)V

    .line 488
    iget-boolean v1, p0, Lcom/android/exsettings/CryptKeeper;->mCorrupt:Z

    iget-boolean v2, p0, Lcom/android/exsettings/CryptKeeper;->mMdtpActivated:Z

    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/CryptKeeper;->showFactoryReset(ZZ)V

    .line 561
    :cond_1
    :goto_0
    return-void

    .line 492
    :cond_2
    const-string v2, "vold.encrypt_progress"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "progress":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "progress"

    invoke-direct {p0, v2}, Lcom/android/exsettings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 494
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/exsettings/CryptKeeper;->setContentView(I)V

    .line 495
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->encryptionProgressInit()V

    goto :goto_0

    .line 496
    :cond_4
    iget-boolean v2, p0, Lcom/android/exsettings/CryptKeeper;->mValidationComplete:Z

    if-nez v2, :cond_5

    const-string v2, "password"

    invoke-direct {p0, v2}, Lcom/android/exsettings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 497
    :cond_5
    new-instance v1, Lcom/android/exsettings/CryptKeeper$4;

    invoke-direct {v1, p0}, Lcom/android/exsettings/CryptKeeper$4;-><init>(Lcom/android/exsettings/CryptKeeper;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/exsettings/CryptKeeper$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 556
    :cond_6
    iget-boolean v2, p0, Lcom/android/exsettings/CryptKeeper;->mValidationRequested:Z

    if-nez v2, :cond_1

    .line 558
    new-instance v2, Lcom/android/exsettings/CryptKeeper$ValidationTask;

    invoke-direct {v2, p0, v1}, Lcom/android/exsettings/CryptKeeper$ValidationTask;-><init>(Lcom/android/exsettings/CryptKeeper;Lcom/android/exsettings/CryptKeeper$1;)V

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/android/exsettings/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 559
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/exsettings/CryptKeeper;->mValidationRequested:Z

    goto :goto_0
.end method

.method private showFactoryReset(ZZ)V
    .locals 7
    .param p1, "corrupt"    # Z
    .param p2, "mdtp_activated"    # Z

    .prologue
    const v6, 0x7f12005d

    const v5, 0x7f120033

    const/4 v4, 0x0

    .line 627
    const v2, 0x7f12005e

    invoke-virtual {p0, v2}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 630
    const v2, 0x7f12005f

    invoke-virtual {p0, v2}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 631
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 632
    new-instance v2, Lcom/android/exsettings/CryptKeeper$5;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/exsettings/CryptKeeper$5;-><init>(Lcom/android/exsettings/CryptKeeper;ZZ)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    if-eqz p1, :cond_1

    .line 658
    invoke-virtual {p0, v5}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0c01c9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 659
    invoke-virtual {p0, v6}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0c01ca

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 665
    :goto_0
    const v2, 0x7f120060

    invoke-virtual {p0, v2}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 667
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 668
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 670
    :cond_0
    return-void

    .line 661
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0c01c7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 662
    invoke-virtual {p0, v6}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0c01c8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private takeEmergencyCallAction()V
    .locals 2

    .prologue
    .line 1013
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 1014
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1015
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 1019
    :goto_0
    return-void

    .line 1017
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->launchEmergencyDialer()V

    goto :goto_0
.end method

.method private updateEmergencyCallButtonState()V
    .locals 3

    .prologue
    .line 979
    const v2, 0x7f120059

    invoke-virtual {p0, v2}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 981
    .local v0, "emergencyCall":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 1006
    :goto_0
    return-void

    .line 984
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 985
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 986
    new-instance v2, Lcom/android/exsettings/CryptKeeper$9;

    invoke-direct {v2, p0}, Lcom/android/exsettings/CryptKeeper$9;-><init>(Lcom/android/exsettings/CryptKeeper;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 999
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1001
    const v1, 0x7f0c08e3

    .line 1005
    .local v1, "textId":I
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 994
    .end local v1    # "textId":I
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1003
    :cond_2
    const v1, 0x7f0c08e2

    .restart local v1    # "textId":I
    goto :goto_1
.end method

.method private updateProgress()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 673
    const-string v8, "vold.encrypt_progress"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 675
    .local v3, "state":Ljava/lang/String;
    const-string v8, "error_partially_encrypted"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 676
    invoke-direct {p0, v11, v11}, Lcom/android/exsettings/CryptKeeper;->showFactoryReset(ZZ)V

    .line 714
    :goto_0
    return-void

    .line 681
    :cond_0
    const v8, 0x7f0c01c2

    invoke-virtual {p0, v8}, Lcom/android/exsettings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 682
    .local v4, "status":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 685
    .local v1, "percent":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->isDebugView()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_3

    const/16 v1, 0x32

    .line 689
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 692
    .local v2, "progress":Ljava/lang/String;
    const-string v8, "CryptKeeper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Encryption progress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :try_start_1
    const-string v8, "vold.encrypt_time_remaining"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 695
    .local v6, "timeProperty":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 696
    .local v5, "time":I
    if-ltz v5, :cond_1

    .line 698
    add-int/lit8 v8, v5, 0x9

    div-int/lit8 v8, v8, 0xa

    mul-int/lit8 v5, v8, 0xa

    .line 699
    int-to-long v8, v5

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    .line 700
    const v8, 0x7f0c01c3

    invoke-virtual {p0, v8}, Lcom/android/exsettings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 706
    .end local v5    # "time":I
    .end local v6    # "timeProperty":Ljava/lang/String;
    :cond_1
    :goto_2
    const v8, 0x7f12005d

    invoke-virtual {p0, v8}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 707
    .local v7, "tv":Landroid/widget/TextView;
    if-eqz v7, :cond_2

    .line 708
    new-array v8, v12, [Ljava/lang/CharSequence;

    aput-object v2, v8, v11

    invoke-static {v4, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    :cond_2
    iget-object v8, p0, Lcom/android/exsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 713
    iget-object v8, p0, Lcom/android/exsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 685
    .end local v2    # "progress":Ljava/lang/String;
    .end local v7    # "tv":Landroid/widget/TextView;
    :cond_3
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    goto :goto_1

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "CryptKeeper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing progress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 702
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "progress":Ljava/lang/String;
    :catch_1
    move-exception v8

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1069
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1059
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 426
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 430
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 433
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, "state":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->isDebugView()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "trigger_restart_framework"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 435
    :cond_0
    invoke-static {p0}, Lcom/android/exsettings/CryptKeeper;->disableCryptKeeperComponent(Landroid/content/Context;)V

    .line 443
    invoke-virtual {p0}, Lcom/android/exsettings/CryptKeeper;->finish()V

    .line 468
    :cond_1
    :goto_0
    return-void

    .line 448
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 449
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/exsettings/CryptKeeper;->setRequestedOrientation(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_3
    :goto_1
    const-string v3, "statusbar"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/exsettings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    .line 457
    iget-object v3, p0, Lcom/android/exsettings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v4, 0x3370000

    invoke-virtual {v3, v4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 459
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->setAirplaneModeIfNecessary()V

    .line 460
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/exsettings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    .line 462
    invoke-virtual {p0}, Lcom/android/exsettings/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 463
    .local v0, "lastInstance":Ljava/lang/Object;
    instance-of v3, v0, Lcom/android/exsettings/CryptKeeper$NonConfigurationInstanceState;

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 464
    check-cast v1, Lcom/android/exsettings/CryptKeeper$NonConfigurationInstanceState;

    .line 465
    .local v1, "retained":Lcom/android/exsettings/CryptKeeper$NonConfigurationInstanceState;
    iget-object v3, v1, Lcom/android/exsettings/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v3, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 466
    const-string v3, "CryptKeeper"

    const-string v4, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 451
    .end local v0    # "lastInstance":Ljava/lang/Object;
    .end local v1    # "retained":Lcom/android/exsettings/CryptKeeper$NonConfigurationInstanceState;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 585
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 587
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 588
    const-string v0, "CryptKeeper"

    const-string v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 592
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 917
    if-eqz p2, :cond_0

    const/4 v3, 0x6

    if-ne p2, v3, :cond_1

    .line 919
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 942
    .end local v0    # "password":Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 926
    .restart local v0    # "password":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 930
    iget-object v3, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 931
    invoke-direct {p0, v1}, Lcom/android/exsettings/CryptKeeper;->setBackFunctionality(Z)V

    .line 933
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_3

    .line 934
    new-instance v3, Lcom/android/exsettings/CryptKeeper$DecryptTask;

    invoke-direct {v3, p0, v5}, Lcom/android/exsettings/CryptKeeper$DecryptTask;-><init>(Lcom/android/exsettings/CryptKeeper;Lcom/android/exsettings/CryptKeeper$1;)V

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/exsettings/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    move v1, v2

    .line 940
    goto :goto_0

    .line 937
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/android/exsettings/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1047
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->delayAudioNotification()V

    .line 1048
    const/4 v0, 0x0

    return v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 577
    new-instance v0, Lcom/android/exsettings/CryptKeeper$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/exsettings/CryptKeeper$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 578
    .local v0, "state":Lcom/android/exsettings/CryptKeeper$NonConfigurationInstanceState;
    const-string v1, "CryptKeeper"

    const-string v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 580
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 477
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 478
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->setupUi()V

    .line 479
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 565
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 566
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 567
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 568
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1064
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->delayAudioNotification()V

    .line 1065
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1053
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->delayAudioNotification()V

    .line 1054
    const/4 v0, 0x0

    return v0
.end method
