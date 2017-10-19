.class public Lcom/android/exsettings/DevelopmentSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/exsettings/search/Indexable;
.implements Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/DevelopmentSettings$SystemPropPoker;
    }
.end annotation


# static fields
.field private static DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

.field private static final MOCK_LOCATION_APP_OPS:[I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAdbDialog:Landroid/app/Dialog;

.field private mAdbKeysDialog:Landroid/app/Dialog;

.field private final mAllPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorDurationScale:Landroid/preference/ListPreference;

.field private mAppProcessLimit:Landroid/preference/ListPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBtHciSnoopLog:Landroid/preference/SwitchPreference;

.field private mBugreport:Landroid/preference/Preference;

.field private mBugreportInPower:Landroid/preference/SwitchPreference;

.field private mClearAdbKeys:Landroid/preference/Preference;

.field private mColorModePreference:Lcom/android/exsettings/ColorModePreference;

.field private mDebugApp:Ljava/lang/String;

.field private mDebugAppPref:Landroid/preference/Preference;

.field private mDebugHwOverdraw:Landroid/preference/ListPreference;

.field private mDebugLayout:Landroid/preference/SwitchPreference;

.field private mDebugViewAttributes:Landroid/preference/SwitchPreference;

.field private mDialogClicked:Z

.field private mDisableOverlays:Landroid/preference/SwitchPreference;

.field private final mDisabledPrefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mDontPokeProperties:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableAdb:Landroid/preference/SwitchPreference;

.field private mEnableDialog:Landroid/app/Dialog;

.field private mEnableMultiWindow:Landroid/preference/SwitchPreference;

.field private mEnableOemUnlock:Landroid/preference/SwitchPreference;

.field private mEnableTerminal:Landroid/preference/SwitchPreference;

.field private mForceHardwareUi:Landroid/preference/SwitchPreference;

.field private mForceMsaa:Landroid/preference/SwitchPreference;

.field private mForceRtlLayout:Landroid/preference/SwitchPreference;

.field private mHaveDebugSettings:Z

.field private mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

.field private mKeepScreenOn:Landroid/preference/SwitchPreference;

.field private mLastEnabledState:Z

.field private mLegacyDhcpClient:Landroid/preference/SwitchPreference;

.field private mLogdSize:Landroid/preference/ListPreference;

.field private mMobileDataAlwaysOn:Landroid/preference/SwitchPreference;

.field private mMockLocationApp:Ljava/lang/String;

.field private mMockLocationAppPref:Landroid/preference/Preference;

.field private mOpenGLTraces:Landroid/preference/ListPreference;

.field private mOverlayDisplayDevices:Landroid/preference/ListPreference;

.field private mPassword:Landroid/preference/PreferenceScreen;

.field private mPointerLocation:Landroid/preference/SwitchPreference;

.field private final mResetSwitchPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/SwitchPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mShowAllANRs:Landroid/preference/SwitchPreference;

.field private mShowCpuUsage:Landroid/preference/SwitchPreference;

.field private mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

.field private mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

.field private mShowNonRectClip:Landroid/preference/ListPreference;

.field private mShowScreenUpdates:Landroid/preference/SwitchPreference;

.field private mShowTouches:Landroid/preference/SwitchPreference;

.field private mSimulateColorSpace:Landroid/preference/ListPreference;

.field private mStrictMode:Landroid/preference/SwitchPreference;

.field private mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

.field private mTrackFrameTime:Landroid/preference/ListPreference;

.field private mTransitionAnimationScale:Landroid/preference/ListPreference;

.field private mUSBAudio:Landroid/preference/SwitchPreference;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbConfiguration:Landroid/preference/ListPreference;

.field private mUsbReceiver:Landroid/content/BroadcastReceiver;

.field private mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

.field private mWaitForDebugger:Landroid/preference/SwitchPreference;

.field private mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

.field private mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

.field private mWifiDisplayCertification:Landroid/preference/SwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiVerboseLogging:Landroid/preference/SwitchPreference;

.field private mWindowAnimationScale:Landroid/preference/ListPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 184
    const-string v0, "262144"

    sput-object v0, Lcom/android/exsettings/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    .line 186
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3a

    aput v2, v0, v1

    sput-object v0, Lcom/android/exsettings/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    .line 1919
    new-instance v0, Lcom/android/exsettings/DevelopmentSettings$4;

    invoke-direct {v0}, Lcom/android/exsettings/DevelopmentSettings$4;-><init>()V

    sput-object v0, Lcom/android/exsettings/DevelopmentSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    .line 266
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    .line 1874
    new-instance v0, Lcom/android/exsettings/DevelopmentSettings$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DevelopmentSettings$3;-><init>(Lcom/android/exsettings/DevelopmentSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 1881
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/DevelopmentSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/DevelopmentSettings;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/exsettings/DevelopmentSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/DevelopmentSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/exsettings/DevelopmentSettings;->setEnableMultiWindow(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/exsettings/DevelopmentSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/DevelopmentSettings;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateUsbConfigurationValues()V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/android/exsettings/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/android/exsettings/DevelopmentSettings;->showEnableMultiWindowPreference()Z

    move-result v0

    return v0
.end method

.method private addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;
    .locals 2
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 429
    invoke-virtual {p0, p1}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 430
    .local v0, "pref":Landroid/preference/ListPreference;
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 432
    return-object v0
.end method

.method private confirmEnableMultiWindowMode()V
    .locals 3

    .prologue
    .line 1536
    new-instance v0, Lcom/android/exsettings/DevelopmentSettings$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DevelopmentSettings$2;-><init>(Lcom/android/exsettings/DevelopmentSettings;)V

    .line 1544
    .local v0, "onConfirmListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0888

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0889

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0560

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1551
    return-void
.end method

.method private confirmEnableOemUnlock()V
    .locals 4

    .prologue
    .line 1518
    new-instance v0, Lcom/android/exsettings/DevelopmentSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DevelopmentSettings$1;-><init>(Lcom/android/exsettings/DevelopmentSettings;)V

    .line 1526
    .local v0, "onConfirmListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0636

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0637

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0560

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1533
    return-void
.end method

.method private static currentStrictModeActiveIndex()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 909
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 913
    .local v0, "enabled":Z
    :goto_0
    return v1

    .line 912
    .end local v0    # "enabled":Z
    :cond_0
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 913
    .restart local v0    # "enabled":Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private disableForUser(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 436
    if-eqz p1, :cond_0

    .line 437
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 438
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_0
    return-void
.end method

.method private dismissDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1795
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1796
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1797
    iput-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1799
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 1800
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1801
    iput-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    .line 1803
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 1804
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1805
    iput-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 1807
    :cond_2
    return-void
.end method

.method private enableVerifierSetting()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 834
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 835
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "adb_enabled"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1

    .line 850
    :cond_0
    :goto_0
    return v4

    .line 838
    :cond_1
    const-string v6, "package_verifier_enable"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    .line 841
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 842
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 843
    .local v3, "verification":Landroid/content/Intent;
    const-string v6, "application/vnd.android.package-archive"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 845
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 846
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 850
    goto :goto_0
.end method

.method private findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 443
    invoke-virtual {p0, p1}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    .line 444
    .local v1, "pref":Landroid/preference/SwitchPreference;
    if-nez v1, :cond_0

    .line 445
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find preference with key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 448
    :cond_0
    const-string v2, "CMCC"

    const-string v3, "ro.product.brand"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    const-string v2, "persist.sys.sim.activate"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 450
    .local v0, "isSimCardInserted":Z
    const-string v2, "enable_adb"

    if-ne p1, v2, :cond_1

    if-nez v0, :cond_1

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 451
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0da3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 452
    invoke-direct {p0, v1}, Lcom/android/exsettings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 457
    .end local v0    # "isSimCardInserted":Z
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    return-object v1
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1910
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1912
    :cond_0
    :goto_0
    return v1

    .line 1911
    :catch_0
    move-exception v0

    .line 1912
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private removePreference(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 487
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 488
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 489
    return-void
.end method

.method private removePreferenceForProduction(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 478
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    invoke-direct {p0, p1}, Lcom/android/exsettings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 480
    const/4 v0, 0x1

    .line 482
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetDangerousOptions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 650
    iput-boolean v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 651
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 652
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 653
    .local v0, "cb":Landroid/preference/SwitchPreference;
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 654
    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 655
    invoke-virtual {p0, v4, v0}, Lcom/android/exsettings/DevelopmentSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 651
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 658
    .end local v0    # "cb":Landroid/preference/SwitchPreference;
    :cond_1
    invoke-static {}, Lcom/android/exsettings/DevelopmentSettings;->resetDebuggerOptions()V

    .line 659
    invoke-direct {p0, v4}, Lcom/android/exsettings/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    .line 660
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v2, v4}, Lcom/android/exsettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 661
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/exsettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 662
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/exsettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 664
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->usingDevelopmentColorSpace()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 665
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/exsettings/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    .line 667
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/exsettings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    .line 668
    invoke-direct {p0, v4}, Lcom/android/exsettings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 669
    iput-boolean v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 670
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateAllOptions()V

    .line 671
    iput-boolean v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 672
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 673
    return-void
.end method

.method private static resetDebuggerOptions()V
    .locals 4

    .prologue
    .line 759
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    :goto_0
    return-void

    .line 761
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setEnableMultiWindow(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 867
    const-string v0, "persist.sys.debug.multi_window"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 869
    return-void
.end method

.method private setPrefsEnabledState(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 492
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 493
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 494
    .local v1, "pref":Landroid/preference/Preference;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 494
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 496
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateAllOptions()V

    .line 497
    return-void
.end method

.method private static showEnableMultiWindowPreference()Z
    .locals 2

    .prologue
    .line 863
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static showEnableOemUnlockPreference()Z
    .locals 2

    .prologue
    .line 859
    const-string v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showKeyguardConfirmation(Landroid/content/res/Resources;I)Z
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "requestCode"    # I

    .prologue
    .line 1743
    new-instance v0, Lcom/android/exsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/exsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v1, 0x7f0c0634

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/exsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private showVerifierSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 854
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_setting_visible"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startInactiveAppsFragment()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1737
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    const-class v1, Lcom/android/exsettings/fuelgauge/InactiveApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0b2c

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1740
    return-void
.end method

.method private updateAllOptions()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 587
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 588
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 589
    .local v1, "cr":Landroid/content/ContentResolver;
    iput-boolean v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 590
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 592
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 593
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v6, "com.android.terminal"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {p0, v5, v2}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 597
    :cond_0
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {p0, v5, v2}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 599
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    const-string v2, "stay_on_while_plugged_in"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_3
    invoke-virtual {p0, v5, v2}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 601
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    const-string v2, "bluetooth_hci_log"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_4
    invoke-virtual {p0, v5, v2}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 603
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 604
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/exsettings/Utils;->isOemUnlockEnabled(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 606
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    const-string v5, "debug_view_attributes"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_8

    :goto_5
    invoke-virtual {p0, v2, v3}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 608
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateHdcpValues()V

    .line 609
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updatePasswordSummary()V

    .line 610
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 611
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateMockLocation()V

    .line 612
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateStrictModeVisualOptions()V

    .line 613
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updatePointerLocationOptions()V

    .line 614
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateShowTouchesOptions()V

    .line 615
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateFlingerOptions()V

    .line 616
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateCpuUsageOptions()V

    .line 617
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateHardwareUiOptions()V

    .line 618
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateMsaaOptions()V

    .line 619
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 620
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 621
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateShowHwScreenUpdatesOptions()V

    .line 622
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateShowHwLayersUpdatesOptions()V

    .line 623
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 624
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateDebugLayoutOptions()V

    .line 625
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateAnimationScaleOptions()V

    .line 626
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 627
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 628
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    const-string v3, "persist.sys.debug.multi_window"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 631
    :cond_2
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 632
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    .line 633
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateAppProcessLimitOptions()V

    .line 634
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateShowAllANRsOptions()V

    .line 635
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 636
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateBugreportOptions()V

    .line 637
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateForceRtlOptions()V

    .line 638
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateLogdSizeValues()V

    .line 639
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateWifiDisplayCertificationOptions()V

    .line 640
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateWifiVerboseLoggingOptions()V

    .line 641
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateWifiAggressiveHandoverOptions()V

    .line 642
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateWifiAllowScansWithTrafficOptions()V

    .line 643
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateLegacyDhcpClientOptions()V

    .line 644
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateMobileDataAlwaysOnOptions()V

    .line 645
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateSimulateColorSpace()V

    .line 646
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateUSBAudioOptions()V

    .line 647
    return-void

    :cond_3
    move v2, v4

    .line 590
    goto/16 :goto_0

    :cond_4
    move v2, v4

    .line 593
    goto/16 :goto_1

    :cond_5
    move v2, v4

    .line 597
    goto/16 :goto_2

    :cond_6
    move v2, v4

    .line 599
    goto/16 :goto_3

    :cond_7
    move v2, v4

    .line 601
    goto/16 :goto_4

    :cond_8
    move v3, v4

    .line 606
    goto/16 :goto_5
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    .prologue
    .line 1413
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 1414
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 1415
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 1416
    return-void
.end method

.method private updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    .locals 6
    .param p1, "which"    # I
    .param p2, "pref"    # Landroid/preference/ListPreference;

    .prologue
    .line 1393
    :try_start_0
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    .line 1394
    .local v1, "scale":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    .line 1395
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1397
    :cond_0
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1398
    .local v3, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1399
    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1400
    .local v2, "val":F
    cmpg-float v4, v1, v2

    if-gtz v4, :cond_1

    .line 1401
    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1402
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1410
    .end local v0    # "i":I
    .end local v1    # "scale":F
    .end local v2    # "val":F
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1398
    .restart local v0    # "i":I
    .restart local v1    # "scale":F
    .restart local v2    # "val":F
    .restart local v3    # "values":[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1406
    .end local v2    # "val":F
    :cond_2
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1407
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1408
    .end local v0    # "i":I
    .end local v1    # "scale":F
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateAppProcessLimitOptions()V
    .locals 7

    .prologue
    .line 1478
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v1

    .line 1479
    .local v1, "limit":I
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1480
    .local v3, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1481
    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1482
    .local v2, "val":I
    if-lt v2, v1, :cond_1

    .line 1483
    if-eqz v0, :cond_0

    .line 1484
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1486
    :cond_0
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1487
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1495
    .end local v0    # "i":I
    .end local v1    # "limit":I
    .end local v2    # "val":I
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1480
    .restart local v0    # "i":I
    .restart local v1    # "limit":I
    .restart local v2    # "val":I
    .restart local v3    # "values":[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1491
    .end local v2    # "val":I
    :cond_2
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1492
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1493
    .end local v0    # "i":I
    .end local v1    # "limit":I
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateBugreportOptions()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 872
    new-instance v1, Landroid/content/ComponentName;

    const-string v5, "com.android.shell"

    const-string v6, "com.android.shell.BugreportStorageProvider"

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    .local v1, "bugreportStorageProviderComponentName":Landroid/content/ComponentName;
    const-string v5, "user"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 876
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 877
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v5, "adb_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 879
    .local v0, "adbEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 880
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 881
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 882
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 901
    .end local v0    # "adbEnabled":Z
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :goto_1
    return-void

    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    move v0, v4

    .line 877
    goto :goto_0

    .line 886
    .restart local v0    # "adbEnabled":Z
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 887
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 888
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 889
    const-string v3, "bugreport_in_power_menu"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 890
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_1

    .line 897
    .end local v0    # "adbEnabled":Z
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_1
.end method

.method private updateCpuUsageOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1360
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1363
    return-void
.end method

.method private updateDebugHwOverdrawOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1102
    const-string v3, "debug.hwui.overdraw"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1103
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1104
    const-string v1, ""

    .line 1107
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1108
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1109
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1110
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1111
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1117
    :goto_1
    return-void

    .line 1108
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1115
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1116
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateDebugLayoutOptions()V
    .locals 3

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    const-string v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1129
    return-void
.end method

.method private updateDebuggerOptions()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 766
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "debug_app"

    invoke-static {v4, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 768
    iget-object v7, p0, Lcom/android/exsettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "wait_for_debugger"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {p0, v7, v4}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 770
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 773
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    const/16 v8, 0x200

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 775
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 776
    .local v2, "lab":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 780
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "lab":Ljava/lang/CharSequence;
    .local v3, "label":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0859

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v3, v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 781
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 782
    iput-boolean v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 787
    .end local v3    # "label":Ljava/lang/String;
    :goto_2
    return-void

    :cond_0
    move v4, v6

    .line 768
    goto :goto_0

    .line 776
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "lab":Ljava/lang/CharSequence;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 777
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "lab":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 778
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_1

    .line 784
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "label":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0c0858

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 785
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateFlingerOptions()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 953
    :try_start_0
    const-string v10, "SurfaceFlinger"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 954
    .local v3, "flinger":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 955
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 956
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 957
    .local v4, "reply":Landroid/os/Parcel;
    const-string v10, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 958
    const/16 v10, 0x3f2

    const/4 v11, 0x0

    invoke-interface {v3, v10, v0, v4, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 960
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 962
    .local v6, "showCpu":I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 963
    .local v2, "enableGL":I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 964
    .local v7, "showUpdates":I
    iget-object v11, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_1

    move v10, v8

    :goto_0
    invoke-virtual {p0, v11, v10}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 966
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 967
    .local v5, "showBackground":I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 968
    .local v1, "disableOverlays":I
    iget-object v10, p0, Lcom/android/exsettings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p0, v10, v8}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 969
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "enableGL":I
    .end local v3    # "flinger":Landroid/os/IBinder;
    .end local v4    # "reply":Landroid/os/Parcel;
    .end local v5    # "showBackground":I
    .end local v6    # "showCpu":I
    .end local v7    # "showUpdates":I
    :cond_0
    :goto_2
    return-void

    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "enableGL":I
    .restart local v3    # "flinger":Landroid/os/IBinder;
    .restart local v4    # "reply":Landroid/os/Parcel;
    .restart local v6    # "showCpu":I
    .restart local v7    # "showUpdates":I
    :cond_1
    move v10, v9

    .line 964
    goto :goto_0

    .restart local v1    # "disableOverlays":I
    .restart local v5    # "showBackground":I
    :cond_2
    move v8, v9

    .line 968
    goto :goto_1

    .line 972
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "enableGL":I
    .end local v3    # "flinger":Landroid/os/IBinder;
    .end local v4    # "reply":Landroid/os/Parcel;
    .end local v5    # "showBackground":I
    .end local v6    # "showCpu":I
    .end local v7    # "showUpdates":I
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private updateForceRtlOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1204
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug.force_rtl"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1207
    return-void
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1012
    return-void
.end method

.method private updateHdcpValues()V
    .locals 8

    .prologue
    .line 676
    const-string v6, "hdcp_checking"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 677
    .local v1, "hdcpChecking":Landroid/preference/ListPreference;
    if-eqz v1, :cond_1

    .line 678
    const-string v6, "persist.sys.hdcp_checking"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "currentValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a004c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 680
    .local v5, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a004d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 681
    .local v4, "summaries":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 682
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 683
    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 684
    move v3, v2

    .line 688
    :cond_0
    aget-object v6, v5, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 689
    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 690
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 692
    .end local v0    # "currentValue":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "summaries":[Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_1
    return-void

    .line 682
    .restart local v0    # "currentValue":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "index":I
    .restart local v4    # "summaries":[Ljava/lang/String;
    .restart local v5    # "values":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateImmediatelyDestroyActivitiesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1387
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_finish_activities"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1389
    return-void
.end method

.method private updateLegacyDhcpClientOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1257
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mLegacyDhcpClient:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "legacy_dhcp_client"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1260
    return-void
.end method

.method private updateLogdSizeValues()V
    .locals 9

    .prologue
    const v8, 0x7f0a0048

    .line 1281
    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    if-eqz v6, :cond_4

    .line 1282
    const-string v6, "persist.logd.size"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1283
    .local v0, "currentValue":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1284
    const-string v6, "ro.logd.size"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1285
    if-nez v0, :cond_0

    .line 1286
    const-string v0, "256K"

    .line 1289
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0049

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1290
    .local v5, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0047

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1291
    .local v4, "titles":[Ljava/lang/String;
    const-string v6, "ro.config.low_ram"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1292
    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1293
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1295
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a004a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1296
    .local v3, "summaries":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 1297
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_3

    .line 1298
    aget-object v6, v5, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v4, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1300
    :cond_2
    move v2, v1

    .line 1304
    :cond_3
    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1305
    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1306
    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1308
    .end local v0    # "currentValue":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "summaries":[Ljava/lang/String;
    .end local v4    # "titles":[Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_4
    return-void

    .line 1297
    .restart local v0    # "currentValue":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    .restart local v3    # "summaries":[Ljava/lang/String;
    .restart local v4    # "titles":[Ljava/lang/String;
    .restart local v5    # "values":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateMobileDataAlwaysOnOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1269
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data_always_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1272
    return-void
.end method

.method private updateMockLocation()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 790
    const-string v7, "appops"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 792
    .local v2, "appOpsManager":Landroid/app/AppOpsManager;
    sget-object v7, Lcom/android/exsettings/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    invoke-virtual {v2, v7}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v6

    .line 793
    .local v6, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v6, :cond_1

    .line 794
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 795
    .local v5, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v7

    if-nez v7, :cond_0

    .line 796
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 802
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    :cond_1
    iget-object v7, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 803
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 805
    .local v4, "label":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    const/16 v9, 0x200

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 807
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 808
    .local v1, "appLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 809
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 815
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appLabel":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationAppPref:Landroid/preference/Preference;

    const v8, 0x7f0c063c

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v4, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/exsettings/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 816
    iput-boolean v11, p0, Lcom/android/exsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 820
    .end local v4    # "label":Ljava/lang/String;
    :goto_1
    return-void

    .line 818
    :cond_3
    iget-object v7, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationAppPref:Landroid/preference/Preference;

    const v8, 0x7f0c063b

    invoke-virtual {p0, v8}, Lcom/android/exsettings/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 811
    .restart local v4    # "label":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private updateMsaaOptions()V
    .locals 3

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    const-string v1, "debug.egl.force_msaa"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1021
    return-void
.end method

.method private updateOpenGLTracesOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1453
    const-string v3, "debug.egl.trace"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1454
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1455
    const-string v1, ""

    .line 1458
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1459
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1460
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1461
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1462
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1468
    :goto_1
    return-void

    .line 1459
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1466
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1467
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateOverlayDisplayDevicesOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1428
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "overlay_display_devices"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1430
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1431
    const-string v1, ""

    .line 1434
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1435
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1436
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1437
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1438
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1444
    :goto_1
    return-void

    .line 1435
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1442
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1443
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updatePasswordSummary()V
    .locals 2

    .prologue
    .line 696
    :try_start_0
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c07df

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 704
    :goto_0
    return-void

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c07de

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 701
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 934
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pointer_location"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 937
    return-void
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1513
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anr_show_background"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1515
    return-void
.end method

.method private updateShowHwLayersUpdatesOptions()V
    .locals 3

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    const-string v1, "debug.hwui.show_layers_updates"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1093
    return-void
.end method

.method private updateShowHwScreenUpdatesOptions()V
    .locals 3

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    const-string v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1082
    return-void
.end method

.method private updateShowNonRectClipOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1054
    const-string v3, "debug.hwui.show_non_rect_clip"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1056
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1057
    const-string v1, "hide"

    .line 1060
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1061
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1062
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1063
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1064
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1070
    :goto_1
    return-void

    .line 1061
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1068
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1069
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateShowTouchesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 945
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_touches"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 948
    return-void
.end method

.method private updateSimulateColorSpace()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 1138
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1139
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    .line 1141
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1142
    const-string v6, "accessibility_display_daltonizer"

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1145
    .local v3, "mode":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1146
    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 1147
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 1149
    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    const v7, 0x7f0c0688

    new-array v4, v4, [Ljava/lang/Object;

    const v8, 0x7f0c0684

    invoke-virtual {p0, v8}, Lcom/android/exsettings/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {p0, v7, v4}, Lcom/android/exsettings/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1158
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :goto_1
    return-void

    .end local v1    # "enabled":Z
    :cond_0
    move v1, v5

    .line 1139
    goto :goto_0

    .line 1152
    .restart local v1    # "enabled":Z
    .restart local v2    # "index":I
    .restart local v3    # "mode":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    const-string v5, "%s"

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1155
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateStrictModeVisualOptions()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 925
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/exsettings/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 926
    return-void

    .line 925
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTrackFrameTimeOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1029
    const-string v3, "debug.hwui.profile"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1030
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1031
    const-string v1, ""

    .line 1034
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1035
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1036
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1037
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1038
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1044
    :goto_1
    return-void

    .line 1035
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1042
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1043
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateUSBAudioOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1193
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usb_audio_automatic_routing_disabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1195
    return-void
.end method

.method private updateUsbConfigurationValues()V
    .locals 7

    .prologue
    .line 1330
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    if-eqz v5, :cond_1

    .line 1331
    const-string v5, "usb"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 1333
    .local v2, "manager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0072

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1334
    .local v4, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0070

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1335
    .local v3, "titles":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1336
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 1337
    aget-object v5, v4, v0

    invoke-virtual {v2, v5}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1338
    move v1, v0

    .line 1342
    :cond_0
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1343
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1344
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1346
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "manager":Landroid/hardware/usb/UsbManager;
    .end local v3    # "titles":[Ljava/lang/String;
    .end local v4    # "values":[Ljava/lang/String;
    :cond_1
    return-void

    .line 1336
    .restart local v0    # "i":I
    .restart local v1    # "index":I
    .restart local v2    # "manager":Landroid/hardware/usb/UsbManager;
    .restart local v3    # "titles":[Ljava/lang/String;
    .restart local v4    # "values":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateVerifyAppsOverUsbOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 823
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "verifier_verify_adb_installs"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 825
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->enableVerifierSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 826
    return-void

    .line 823
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiAggressiveHandoverOptions()V
    .locals 2

    .prologue
    .line 1239
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAggressiveHandover()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1240
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1241
    return-void

    .line 1239
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiAllowScansWithTrafficOptions()V
    .locals 2

    .prologue
    .line 1248
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAllowScansWithTraffic()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1249
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1250
    return-void

    .line 1248
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiDisplayCertificationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1218
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_certification_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1221
    return-void
.end method

.method private updateWifiVerboseLoggingOptions()V
    .locals 2

    .prologue
    .line 1230
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1231
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1232
    return-void

    .line 1230
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private usingDevelopmentColorSpace()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1165
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1166
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    .line 1168
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1169
    const-string v6, "accessibility_display_daltonizer"

    const/4 v7, -0x1

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1172
    .local v3, "mode":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 1173
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 1178
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :goto_1
    return v4

    .end local v1    # "enabled":Z
    :cond_0
    move v1, v5

    .line 1166
    goto :goto_0

    .restart local v1    # "enabled":Z
    :cond_1
    move v4, v5

    .line 1178
    goto :goto_1
.end method

.method private writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V
    .locals 2
    .param p1, "which"    # I
    .param p2, "pref"    # Landroid/preference/ListPreference;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1420
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1421
    .local v0, "scale":F
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 1422
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    .end local v0    # "scale":F
    :goto_1
    return-void

    .line 1420
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1423
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1499
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1500
    .local v0, "limit":I
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 1501
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1504
    .end local v0    # "limit":I
    :goto_1
    return-void

    .line 1499
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1502
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeBtHciSnoopLogOptions()V
    .locals 4

    .prologue
    .line 707
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 708
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->configHciSnoopLog(Z)Z

    .line 709
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_hci_log"

    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 712
    return-void

    .line 709
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeCpuUsageOptions()V
    .locals 5

    .prologue
    .line 1366
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 1367
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_processes"

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1369
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.LoadAverageService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1371
    .local v0, "service":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 1372
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1376
    :goto_1
    return-void

    .line 1367
    .end local v0    # "service":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1374
    .restart local v0    # "service":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private writeDebugHwOverdrawOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1120
    const-string v1, "debug.hwui.overdraw"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1123
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 1124
    return-void

    .line 1120
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeDebugLayoutOptions()V
    .locals 2

    .prologue
    .line 1132
    const-string v1, "debug.layout"

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1135
    return-void

    .line 1132
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeDebuggerOptions()V
    .locals 4

    .prologue
    .line 716
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    :goto_0
    return-void

    .line 718
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeDisableOverlaysOption()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 995
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 996
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_1

    .line 997
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 998
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 999
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 1000
    .local v1, "disableOverlays":I
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    const/16 v3, 0x3f0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1002
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1004
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "flinger":Landroid/os/IBinder;
    :cond_1
    :goto_0
    return-void

    .line 1006
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private writeForceRtlOptions()V
    .locals 4

    .prologue
    .line 1210
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 1211
    .local v0, "value":Z
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug.force_rtl"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1213
    const-string v2, "debug.force_rtl"

    if-eqz v0, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/android/exsettings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 1215
    return-void

    .line 1211
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1213
    :cond_1
    const-string v1, "0"

    goto :goto_1
.end method

.method private writeHardwareUiOptions()V
    .locals 2

    .prologue
    .line 1015
    const-string v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1017
    return-void

    .line 1015
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeImmediatelyDestroyActivitiesOptions()V
    .locals 2

    .prologue
    .line 1380
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1384
    :goto_0
    return-void

    .line 1382
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeLegacyDhcpClientOptions()V
    .locals 3

    .prologue
    .line 1263
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "legacy_dhcp_client"

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mLegacyDhcpClient:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1266
    return-void

    .line 1263
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeLogdSizeOption(Ljava/lang/Object;)V
    .locals 7
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1311
    const-string v4, "ro.logd.size"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1312
    .local v0, "currentValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1313
    sput-object v0, Lcom/android/exsettings/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    .line 1315
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1317
    .local v3, "size":Ljava/lang/String;
    :goto_0
    const-string v4, "persist.logd.size"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1320
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "logcat -b all -G "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 1321
    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 1322
    const-string v4, "DevelopmentSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Logcat ring buffer sizes set to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1326
    .end local v2    # "p":Ljava/lang/Process;
    :goto_1
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateLogdSizeValues()V

    .line 1327
    return-void

    .line 1315
    .end local v3    # "size":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/exsettings/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    goto :goto_0

    .line 1323
    .restart local v3    # "size":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1324
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "DevelopmentSettings"

    const-string v5, "Cannot set logcat ring buffer sizes"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private writeMobileDataAlwaysOnOptions()V
    .locals 3

    .prologue
    .line 1275
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data_always_on"

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1278
    return-void

    .line 1275
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeMockLocation()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 723
    const-string v6, "appops"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 726
    .local v1, "appOpsManager":Landroid/app/AppOpsManager;
    sget-object v6, Lcom/android/exsettings/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    invoke-virtual {v1, v6}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v5

    .line 727
    .local v5, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v5, :cond_1

    .line 729
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 730
    .local v4, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v6

    if-eq v6, v10, :cond_0

    .line 731
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 733
    .local v3, "oldMockLocationApp":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x200

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 735
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/16 v6, 0x3a

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v8, 0x2

    invoke-virtual {v1, v6, v7, v3, v8}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 737
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 745
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "oldMockLocationApp":Ljava/lang/String;
    .end local v4    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    :cond_1
    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 747
    :try_start_1
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    const/16 v8, 0x200

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 749
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    const/16 v6, 0x3a

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 755
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_1
    return-void

    .line 751
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private writeMsaaOptions()V
    .locals 2

    .prologue
    .line 1024
    const-string v1, "debug.egl.force_msaa"

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1026
    return-void

    .line 1024
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeOpenGLTracesOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1471
    const-string v1, "debug.egl.trace"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1473
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 1474
    return-void

    .line 1471
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "overlay_display_devices"

    check-cast p1, Ljava/lang/String;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1449
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 1450
    return-void
.end method

.method private writePointerLocationOptions()V
    .locals 3

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 931
    return-void

    .line 929
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowAllANRsOptions()V
    .locals 3

    .prologue
    .line 1507
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1510
    return-void

    .line 1507
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwLayersUpdatesOptions()V
    .locals 2

    .prologue
    .line 1096
    const-string v1, "debug.hwui.show_layers_updates"

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1099
    return-void

    .line 1096
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwScreenUpdatesOptions()V
    .locals 2

    .prologue
    .line 1085
    const-string v1, "debug.hwui.show_dirty_regions"

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1088
    return-void

    .line 1085
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowNonRectClipOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1073
    const-string v1, "debug.hwui.show_non_rect_clip"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1076
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 1077
    return-void

    .line 1073
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    .prologue
    .line 940
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 942
    return-void

    .line 940
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowUpdatesOption()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 978
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 979
    .local v1, "flinger":Landroid/os/IBinder;
    if-eqz v1, :cond_1

    .line 980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 981
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 982
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 983
    .local v2, "showUpdates":I
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 984
    const/16 v3, 0x3ea

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 985
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 987
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "flinger":Landroid/os/IBinder;
    .end local v2    # "showUpdates":I
    :cond_1
    :goto_0
    return-void

    .line 989
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private writeSimulateColorSpace(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1182
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1183
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1184
    .local v1, "newMode":I
    if-gez v1, :cond_0

    .line 1185
    const-string v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1190
    :goto_0
    return-void

    .line 1187
    :cond_0
    const-string v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1188
    const-string v2, "accessibility_display_daltonizer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private writeStrictModeVisualOptions()V
    .locals 2

    .prologue
    .line 918
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 922
    :goto_1
    return-void

    .line 918
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 920
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private writeTrackFrameTimeOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1047
    const-string v1, "debug.hwui.profile"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1050
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 1051
    return-void

    .line 1047
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeUSBAudioOptions()V
    .locals 3

    .prologue
    .line 1198
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_audio_automatic_routing_disabled"

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1201
    return-void

    .line 1198
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeUsbConfigurationOption(Ljava/lang/Object;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1349
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "usb"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    .line 1350
    .local v1, "manager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1351
    .local v0, "function":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 1352
    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1353
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    .line 1357
    :goto_0
    return-void

    .line 1355
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    goto :goto_0
.end method

.method private writeVerifyAppsOverUsbOptions()V
    .locals 3

    .prologue
    .line 829
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_verify_adb_installs"

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 831
    return-void

    .line 829
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiAggressiveHandoverOptions()V
    .locals 2

    .prologue
    .line 1244
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableAggressiveHandover(I)V

    .line 1245
    return-void

    .line 1244
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiAllowScansWithTrafficOptions()V
    .locals 2

    .prologue
    .line 1253
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setAllowScansWithTraffic(I)V

    .line 1254
    return-void

    .line 1253
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiDisplayCertificationOptions()V
    .locals 3

    .prologue
    .line 1224
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_certification_on"

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1227
    return-void

    .line 1224
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiVerboseLoggingOptions()V
    .locals 2

    .prologue
    .line 1235
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableVerboseLogging(I)V

    .line 1236
    return-void

    .line 1235
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 277
    const/16 v0, 0x27

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 464
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 466
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 468
    .local v0, "activity":Lcom/android/exsettings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/exsettings/SettingsActivity;->getSwitchBar()Lcom/android/exsettings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    .line 469
    iget-boolean v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v1, :cond_0

    .line 470
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/exsettings/widget/SwitchBar;->setEnabled(Z)V

    .line 475
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 1582
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 1583
    if-ne p2, v1, :cond_0

    .line 1584
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 1585
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeDebuggerOptions()V

    .line 1586
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 1605
    :cond_0
    :goto_0
    return-void

    .line 1588
    :cond_1
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    .line 1589
    if-ne p2, v1, :cond_0

    .line 1590
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 1591
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeMockLocation()V

    .line 1592
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateMockLocation()V

    goto :goto_0

    .line 1594
    :cond_2
    if-nez p1, :cond_4

    .line 1595
    if-ne p2, v1, :cond_0

    .line 1596
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1597
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto :goto_0

    .line 1599
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/exsettings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    .line 1603
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 1810
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_2

    .line 1811
    if-ne p2, v4, :cond_1

    .line 1812
    iput-boolean v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mDialogClicked:Z

    .line 1813
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1815
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1816
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 1817
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateBugreportOptions()V

    .line 1844
    :cond_0
    :goto_0
    return-void

    .line 1820
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 1822
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_3

    .line 1823
    if-ne p2, v4, :cond_0

    .line 1825
    :try_start_0
    const-string v3, "usb"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1826
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    .line 1827
    .local v2, "service":Landroid/hardware/usb/IUsbManager;
    invoke-interface {v2}, Landroid/hardware/usb/IUsbManager;->clearUsbDebuggingKeys()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1828
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "service":Landroid/hardware/usb/IUsbManager;
    :catch_0
    move-exception v1

    .line 1829
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "DevelopmentSettings"

    const-string v4, "Unable to clear adb keys"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1832
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_0

    .line 1833
    if-ne p2, v4, :cond_4

    .line 1834
    iput-boolean v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mDialogClicked:Z

    .line 1835
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "development_settings_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1837
    iput-boolean v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mLastEnabledState:Z

    .line 1838
    iget-boolean v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0

    .line 1841
    :cond_4
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v3, v6}, Lcom/android/exsettings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 282
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 284
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 285
    const-string v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 287
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 288
    const-string v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    .line 290
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 292
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    const-string v4, "no_debugging_features"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    .line 298
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mUnavailable:Z

    .line 299
    new-instance v3, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 426
    :cond_1
    :goto_0
    return-void

    .line 303
    :cond_2
    const v3, 0x7f08001a

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 305
    const-string v3, "debug_debugging_category"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 307
    .local v0, "debugDebuggingCategory":Landroid/preference/PreferenceGroup;
    const-string v3, "enable_adb"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    .line 308
    const-string v3, "clear_adb_keys"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    .line 309
    const-string v3, "ro.adb.secure"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 310
    if-eqz v0, :cond_3

    .line 311
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 314
    :cond_3
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    const-string v3, "enable_terminal"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    .line 316
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.terminal"

    invoke-static {v3, v4}, Lcom/android/exsettings/DevelopmentSettings;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 317
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 318
    iput-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    .line 321
    :cond_4
    const-string v3, "bugreport"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    .line 322
    const-string v3, "bugreport_in_power"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    .line 323
    const-string v3, "keep_screen_on"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    .line 324
    const-string v3, "bt_hci_snoop_log"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    .line 325
    const-string v3, "oem_unlock_enable"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    .line 326
    invoke-static {}, Lcom/android/exsettings/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v3

    if-nez v3, :cond_5

    .line 327
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 328
    iput-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    .line 331
    :cond_5
    const-string v3, "debug_view_attributes"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    .line 332
    const-string v3, "local_backup_password"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    .line 333
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 337
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 338
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 339
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 340
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 343
    :cond_6
    const-string v3, "debug_app"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    .line 344
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    const-string v3, "wait_for_debugger"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    .line 347
    const-string v3, "mock_location_app"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationAppPref:Landroid/preference/Preference;

    .line 348
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationAppPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    const-string v3, "verify_apps_over_usb"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    .line 351
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->showVerifierSetting()Z

    move-result v3

    if-nez v3, :cond_7

    .line 352
    if-eqz v0, :cond_a

    .line 353
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 358
    :cond_7
    :goto_1
    const-string v3, "strict_mode"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    .line 359
    const-string v3, "pointer_location"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    .line 360
    const-string v3, "show_touches"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    .line 361
    const-string v3, "show_screen_updates"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    .line 362
    const-string v3, "disable_overlays"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    .line 363
    const-string v3, "show_cpu_usage"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    .line 364
    const-string v3, "force_hw_ui"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    .line 365
    const-string v3, "force_msaa"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    .line 366
    const-string v3, "track_frame_time"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    .line 367
    const-string v3, "show_non_rect_clip"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    .line 368
    const-string v3, "show_hw_screen_udpates"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    .line 369
    const-string v3, "show_hw_layers_udpates"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    .line 370
    const-string v3, "debug_layout"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    .line 371
    const-string v3, "force_rtl_layout_all_locales"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    .line 372
    const-string v3, "debug_hw_overdraw"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    .line 373
    const-string v3, "wifi_display_certification"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    .line 374
    const-string v3, "wifi_verbose_logging"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    .line 375
    const-string v3, "wifi_aggressive_handover"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    .line 376
    const-string v3, "wifi_allow_scan_with_traffic"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    .line 377
    const-string v3, "legacy_dhcp_client"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mLegacyDhcpClient:Landroid/preference/SwitchPreference;

    .line 378
    const-string v3, "mobile_data_always_on"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/preference/SwitchPreference;

    .line 379
    const-string v3, "select_logd_size"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    .line 380
    const-string v3, "select_usb_configuration"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    .line 382
    const-string v3, "window_animation_scale"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    .line 383
    const-string v3, "transition_animation_scale"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    .line 384
    const-string v3, "animator_duration_scale"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    .line 385
    const-string v3, "overlay_display_devices"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    .line 386
    const-string v3, "enable_multi_window"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    .line 387
    invoke-static {}, Lcom/android/exsettings/DevelopmentSettings;->showEnableMultiWindowPreference()Z

    move-result v3

    if-nez v3, :cond_8

    .line 388
    const-string v3, "debug_drawing_category"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 390
    .local v1, "drawingGroup":Landroid/preference/PreferenceGroup;
    if-eqz v1, :cond_b

    .line 391
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 395
    :goto_2
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 396
    iput-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    .line 398
    .end local v1    # "drawingGroup":Landroid/preference/PreferenceGroup;
    :cond_8
    const-string v3, "enable_opengl_traces"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    .line 399
    const-string v3, "simulate_color_space"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    .line 400
    const-string v3, "usb_audio"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    .line 402
    const-string v3, "immediately_destroy_activities"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    .line 404
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    const-string v3, "app_process_limit"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    .line 409
    const-string v3, "show_all_anrs"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    .line 411
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    const-string v3, "hdcp_checking"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 415
    .local v2, "hdcpChecking":Landroid/preference/Preference;
    if-eqz v2, :cond_9

    .line 416
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-direct {p0, v2}, Lcom/android/exsettings/DevelopmentSettings;->removePreferenceForProduction(Landroid/preference/Preference;)Z

    .line 420
    :cond_9
    const-string v3, "color_mode"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/ColorModePreference;

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorModePreference:Lcom/android/exsettings/ColorModePreference;

    .line 421
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorModePreference:Lcom/android/exsettings/ColorModePreference;

    invoke-virtual {v3}, Lcom/android/exsettings/ColorModePreference;->updateCurrentAndSupported()V

    .line 422
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorModePreference:Lcom/android/exsettings/ColorModePreference;

    invoke-virtual {v3}, Lcom/android/exsettings/ColorModePreference;->getTransformsCount()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 423
    const-string v3, "color_mode"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    .line 424
    iput-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorModePreference:Lcom/android/exsettings/ColorModePreference;

    goto/16 :goto_0

    .line 355
    .end local v2    # "hdcpChecking":Landroid/preference/Preference;
    :cond_a
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 393
    .restart local v1    # "drawingGroup":Landroid/preference/PreferenceGroup;
    :cond_b
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 563
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 564
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 566
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1863
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->dismissDialogs()V

    .line 1864
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 1865
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 571
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 573
    iget-boolean v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 579
    :goto_0
    return-void

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 577
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->hide()V

    .line 578
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1848
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 1849
    iget-boolean v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_0

    .line 1850
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1852
    :cond_0
    iput-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1859
    :cond_1
    :goto_0
    return-void

    .line 1853
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 1854
    iget-boolean v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_3

    .line 1855
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/SwitchBar;->setChecked(Z)V

    .line 1857
    :cond_3
    iput-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 554
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 555
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorModePreference:Lcom/android/exsettings/ColorModePreference;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorModePreference:Lcom/android/exsettings/ColorModePreference;

    invoke-virtual {v0}, Lcom/android/exsettings/ColorModePreference;->stopListening()V

    .line 558
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1749
    const-string v2, "hdcp_checking"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1750
    const-string v1, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateHdcpValues()V

    .line 1752
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1791
    :goto_0
    return v0

    .line 1754
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 1755
    invoke-direct {p0, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    goto :goto_0

    .line 1757
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    .line 1758
    invoke-direct {p0, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeUsbConfigurationOption(Ljava/lang/Object;)V

    goto :goto_0

    .line 1760
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 1761
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1763
    :cond_3
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_4

    .line 1764
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1766
    :cond_4
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_5

    .line 1767
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1769
    :cond_5
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_6

    .line 1770
    invoke-direct {p0, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1772
    :cond_6
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_7

    .line 1773
    invoke-direct {p0, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeOpenGLTracesOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1775
    :cond_7
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_8

    .line 1776
    invoke-direct {p0, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeTrackFrameTimeOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1778
    :cond_8
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_9

    .line 1779
    invoke-direct {p0, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeDebugHwOverdrawOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1781
    :cond_9
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_a

    .line 1782
    invoke-direct {p0, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeShowNonRectClipOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1784
    :cond_a
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_b

    .line 1785
    invoke-direct {p0, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1787
    :cond_b
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_c

    .line 1788
    invoke-direct {p0, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    goto :goto_0

    :cond_c
    move v0, v1

    .line 1791
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1609
    invoke-static {}, Lcom/android/exsettings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1733
    :cond_0
    :goto_0
    return v3

    .line 1613
    :cond_1
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_4

    .line 1614
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1615
    iput-boolean v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDialogClicked:Z

    .line 1616
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->dismissDialogs()V

    .line 1617
    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0650

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f0c064f

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x1040013

    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x1040009

    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1623
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 1625
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "adb_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1627
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1628
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1629
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateBugreportOptions()V

    goto :goto_0

    .line 1631
    :cond_4
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    if-ne p2, v4, :cond_6

    .line 1632
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->dismissDialogs()V

    .line 1633
    :cond_5
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0651

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x104000a

    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1638
    :cond_6
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_8

    .line 1639
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1640
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v4, "com.android.terminal"

    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_1
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_7
    move v2, v3

    goto :goto_1

    .line 1643
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_8
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_a

    .line 1644
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bugreport_in_power_menu"

    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_9

    :goto_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_9
    move v2, v3

    goto :goto_2

    .line 1647
    :cond_a
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_c

    .line 1648
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "stay_on_while_plugged_in"

    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x3

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_b
    move v2, v3

    goto :goto_3

    .line 1652
    :cond_c
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_d

    .line 1653
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeBtHciSnoopLogOptions()V

    goto/16 :goto_0

    .line 1654
    :cond_d
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_f

    .line 1655
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/android/exsettings/DevelopmentSettings;->showKeyguardConfirmation(Landroid/content/res/Resources;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1656
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1657
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto/16 :goto_0

    .line 1659
    :cond_e
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/exsettings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 1662
    :cond_f
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationAppPref:Landroid/preference/Preference;

    if-ne p2, v4, :cond_10

    .line 1663
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v4, Lcom/android/exsettings/AppPicker;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1664
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings.extra.REQUESTIING_PERMISSION"

    const-string v4, "android.permission.ACCESS_MOCK_LOCATION"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1666
    const/16 v2, 0x3e9

    invoke-virtual {p0, v0, v2}, Lcom/android/exsettings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1667
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_10
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_12

    .line 1668
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "debug_view_attributes"

    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_11

    :goto_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_11
    move v2, v3

    goto :goto_4

    .line 1671
    :cond_12
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    if-ne p2, v4, :cond_13

    .line 1672
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/exsettings/AppPicker;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1673
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v4, "com.android.settings.extra.DEBUGGABLE"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1674
    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2}, Lcom/android/exsettings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1675
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_13
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_14

    .line 1676
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeDebuggerOptions()V

    goto/16 :goto_0

    .line 1677
    :cond_14
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_15

    .line 1678
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeVerifyAppsOverUsbOptions()V

    goto/16 :goto_0

    .line 1679
    :cond_15
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_16

    .line 1680
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeStrictModeVisualOptions()V

    goto/16 :goto_0

    .line 1681
    :cond_16
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_17

    .line 1682
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_0

    .line 1683
    :cond_17
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_18

    .line 1684
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_0

    .line 1685
    :cond_18
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_19

    .line 1686
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeShowUpdatesOption()V

    goto/16 :goto_0

    .line 1687
    :cond_19
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1a

    .line 1688
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeDisableOverlaysOption()V

    goto/16 :goto_0

    .line 1689
    :cond_1a
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1c

    .line 1690
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1691
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->confirmEnableMultiWindowMode()V

    goto/16 :goto_0

    .line 1693
    :cond_1b
    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->setEnableMultiWindow(Z)V

    goto/16 :goto_0

    .line 1695
    :cond_1c
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1d

    .line 1696
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeCpuUsageOptions()V

    goto/16 :goto_0

    .line 1697
    :cond_1d
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1e

    .line 1698
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions()V

    goto/16 :goto_0

    .line 1699
    :cond_1e
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1f

    .line 1700
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeShowAllANRsOptions()V

    goto/16 :goto_0

    .line 1701
    :cond_1f
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_20

    .line 1702
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeHardwareUiOptions()V

    goto/16 :goto_0

    .line 1703
    :cond_20
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_21

    .line 1704
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeMsaaOptions()V

    goto/16 :goto_0

    .line 1705
    :cond_21
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_22

    .line 1706
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeShowHwScreenUpdatesOptions()V

    goto/16 :goto_0

    .line 1707
    :cond_22
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_23

    .line 1708
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeShowHwLayersUpdatesOptions()V

    goto/16 :goto_0

    .line 1709
    :cond_23
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_24

    .line 1710
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeDebugLayoutOptions()V

    goto/16 :goto_0

    .line 1711
    :cond_24
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_25

    .line 1712
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeForceRtlOptions()V

    goto/16 :goto_0

    .line 1713
    :cond_25
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_26

    .line 1714
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeWifiDisplayCertificationOptions()V

    goto/16 :goto_0

    .line 1715
    :cond_26
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_27

    .line 1716
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeWifiVerboseLoggingOptions()V

    goto/16 :goto_0

    .line 1717
    :cond_27
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_28

    .line 1718
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeWifiAggressiveHandoverOptions()V

    goto/16 :goto_0

    .line 1719
    :cond_28
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_29

    .line 1720
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeWifiAllowScansWithTrafficOptions()V

    goto/16 :goto_0

    .line 1721
    :cond_29
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mLegacyDhcpClient:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2a

    .line 1722
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeLegacyDhcpClientOptions()V

    goto/16 :goto_0

    .line 1723
    :cond_2a
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2b

    .line 1724
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeMobileDataAlwaysOnOptions()V

    goto/16 :goto_0

    .line 1725
    :cond_2b
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2c

    .line 1726
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeUSBAudioOptions()V

    goto/16 :goto_0

    .line 1727
    :cond_2c
    const-string v2, "inactive_apps"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1728
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->startInactiveAppsFragment()V

    goto/16 :goto_0

    .line 1730
    :cond_2d
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 501
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 503
    iget-boolean v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v3, :cond_1

    .line 505
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 506
    .local v1, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 507
    if-eqz v1, :cond_0

    .line 508
    const v2, 0x7f0c0627

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 550
    .end local v1    # "emptyView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 518
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 523
    :goto_1
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 524
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "development_settings_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mLastEnabledState:Z

    .line 526
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    iget-boolean v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v3}, Lcom/android/exsettings/widget/SwitchBar;->setChecked(Z)V

    .line 527
    iget-boolean v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/android/exsettings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 544
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/exsettings/widget/SwitchBar;->show()V

    .line 546
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorModePreference:Lcom/android/exsettings/ColorModePreference;

    if-eqz v2, :cond_0

    .line 547
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorModePreference:Lcom/android/exsettings/ColorModePreference;

    invoke-virtual {v2}, Lcom/android/exsettings/ColorModePreference;->startListening()V

    .line 548
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorModePreference:Lcom/android/exsettings/ColorModePreference;

    invoke-virtual {v2}, Lcom/android/exsettings/ColorModePreference;->updateCurrentAndSupported()V

    goto :goto_0

    .line 520
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_3
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1555
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->getSwitch()Lcom/android/exsettings/widget/ToggleSwitch;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 1578
    :cond_0
    :goto_0
    return-void

    .line 1558
    :cond_1
    iget-boolean v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mLastEnabledState:Z

    if-eq p2, v0, :cond_0

    .line 1559
    if-eqz p2, :cond_3

    .line 1560
    iput-boolean v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mDialogClicked:Z

    .line 1561
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->dismissDialogs()V

    .line 1562
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0653

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0652

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 1569
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 1571
    :cond_3
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->resetDangerousOptions()V

    .line 1572
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1574
    iput-boolean p2, p0, Lcom/android/exsettings/DevelopmentSettings;->mLastEnabledState:Z

    .line 1575
    iget-boolean v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/exsettings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0
.end method

.method pokeSystemProperties()V
    .locals 2

    .prologue
    .line 1868
    iget-boolean v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mDontPokeProperties:Z

    if-nez v0, :cond_0

    .line 1870
    new-instance v0, Lcom/android/exsettings/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/exsettings/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1872
    :cond_0
    return-void
.end method

.method updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V
    .locals 1
    .param p1, "switchPreference"    # Landroid/preference/SwitchPreference;
    .param p2, "value"    # Z

    .prologue
    .line 582
    invoke-virtual {p1, p2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 583
    iget-boolean v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 584
    return-void
.end method
