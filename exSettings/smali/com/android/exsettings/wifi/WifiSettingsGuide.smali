.class public Lcom/android/exsettings/wifi/WifiSettingsGuide;
.super Lcom/android/exsettings/RestrictedSettingsFragment;
.source "WifiSettingsGuide.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;,
        Lcom/android/exsettings/wifi/WifiSettingsGuide$Multimap;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

.field public static isCaptiveCheckRunning:Z

.field public static mVerboseLogging:I

.field private static savedNetworksExist:Z


# instance fields
.field private isDiffSsid:Z

.field private isFristrun:Z

.field private mAPListCategory:Landroid/preference/PreferenceCategory;

.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAddNetworkPref:Landroid/preference/Preference;

.field private mAutoConnect:Z

.field private mCmccInfo:Landroid/content/SharedPreferences;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCurrentSsid:Ljava/lang/String;

.field private mDialog:Lcom/android/exsettings/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mDlgModify:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mHandler:Landroid/os/Handler;

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastSsid:Ljava/lang/String;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mScanner:Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;

.field private mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

.field private mUserBadgeCache:Lcom/android/exsettings/wifi/AccessPointPreferenceGuide$UserBadgeCache;

.field private mWifiAssistantApp:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

.field private mWifiAssistantCard:Landroid/view/View;

.field private mWifiEnabler:Lcom/android/exsettings/wifi/WifiEnabler;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiToNfcDialog:Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 214
    sput v0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mVerboseLogging:I

    .line 218
    sput-boolean v0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->isCaptiveCheckRunning:Z

    .line 1457
    new-instance v0, Lcom/android/exsettings/wifi/WifiSettingsGuide$8;

    invoke-direct {v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide$8;-><init>()V

    sput-object v0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 345
    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/exsettings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mAutoConnect:Z

    .line 187
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 233
    iput-object v2, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mLastSsid:Ljava/lang/String;

    .line 234
    iput-object v2, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mCurrentSsid:Ljava/lang/String;

    .line 235
    iput-boolean v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->isDiffSsid:Z

    .line 302
    new-instance v0, Lcom/android/exsettings/wifi/WifiSettingsGuide$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide$1;-><init>(Lcom/android/exsettings/wifi/WifiSettingsGuide;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mHandler:Landroid/os/Handler;

    .line 346
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mFilter:Landroid/content/IntentFilter;

    .line 347
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.settings.wifi.CmccLoginStatusChange"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    new-instance v0, Lcom/android/exsettings/wifi/WifiSettingsGuide$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide$2;-><init>(Lcom/android/exsettings/wifi/WifiSettingsGuide;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 364
    new-instance v0, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;-><init>(Lcom/android/exsettings/wifi/WifiSettingsGuide;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mScanner:Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;

    .line 365
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/wifi/WifiSettingsGuide;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiSettingsGuide;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getCMCCLoginStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/wifi/WifiSettingsGuide;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiSettingsGuide;
    .param p1, "x1"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->recordCMCCLoginStatus(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/exsettings/wifi/WifiSettingsGuide;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiSettingsGuide;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/exsettings/wifi/WifiSettingsGuide;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiSettingsGuide;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->showCmccLoginDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/exsettings/wifi/WifiSettingsGuide;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiSettingsGuide;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/exsettings/wifi/WifiSettingsGuide;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiSettingsGuide;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiAssistantApp:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/exsettings/wifi/WifiSettingsGuide;Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiSettingsGuide;
    .param p1, "x1"    # Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiAssistantApp:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/exsettings/wifi/WifiSettingsGuide;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiSettingsGuide;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->disableWifiAssistantCardUntilPlatformUpgrade()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/exsettings/wifi/WifiSettingsGuide;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiSettingsGuide;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiAssistantCard:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager;
    .param p2, "x2"    # Landroid/net/wifi/WifiInfo;
    .param p3, "x3"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 131
    invoke-static {p0, p1, p2, p3}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->constructAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private addMessagePreference(I)V
    .locals 3
    .param p1, "messageId"    # I

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1107
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1110
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1111
    return-void
.end method

.method static canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1660
    if-nez p1, :cond_1

    .line 1694
    :cond_0
    :goto_0
    return v7

    .line 1664
    :cond_1
    const-string v9, "device_policy"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 1669
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1670
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const-string v9, "android.software.device_admin"

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v2, :cond_2

    move v7, v8

    .line 1671
    goto :goto_0

    .line 1674
    :cond_2
    const/4 v3, 0x0

    .line 1675
    .local v3, "isConfigEligibleForLockdown":Z
    if-eqz v2, :cond_3

    .line 1676
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    .line 1677
    .local v0, "deviceOwnerPackageName":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1679
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v5, v0, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .line 1681
    .local v1, "deviceOwnerUid":I
    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v9, :cond_4

    move v3, v7

    .line 1687
    .end local v0    # "deviceOwnerPackageName":Ljava/lang/String;
    .end local v1    # "deviceOwnerUid":I
    :cond_3
    :goto_1
    if-eqz v3, :cond_0

    .line 1691
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1692
    .local v6, "resolver":Landroid/content/ContentResolver;
    const-string v9, "wifi_device_owner_configs_lockdown"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_5

    move v4, v7

    .line 1694
    .local v4, "isLockdownFeatureEnabled":Z
    :goto_2
    if-eqz v4, :cond_0

    move v7, v8

    goto :goto_0

    .end local v4    # "isLockdownFeatureEnabled":Z
    .end local v6    # "resolver":Landroid/content/ContentResolver;
    .restart local v0    # "deviceOwnerPackageName":Ljava/lang/String;
    .restart local v1    # "deviceOwnerUid":I
    :cond_4
    move v3, v8

    .line 1681
    goto :goto_1

    .end local v0    # "deviceOwnerPackageName":Ljava/lang/String;
    .end local v1    # "deviceOwnerUid":I
    .restart local v6    # "resolver":Landroid/content/ContentResolver;
    :cond_5
    move v4, v8

    .line 1692
    goto :goto_2

    .line 1682
    .end local v6    # "resolver":Landroid/content/ContentResolver;
    .restart local v0    # "deviceOwnerPackageName":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1278
    iget-boolean v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1281
    :cond_0
    return-void
.end method

.method private static constructAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/List;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p2, "lastInfo"    # Landroid/net/wifi/WifiInfo;
    .param p3, "lastState"    # Landroid/net/NetworkInfo$DetailedState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/wifi/WifiManager;",
            "Landroid/net/wifi/WifiInfo;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1116
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1119
    .local v3, "accessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    new-instance v4, Lcom/android/exsettings/wifi/WifiSettingsGuide$Multimap;

    const/4 v12, 0x0

    invoke-direct {v4, v12}, Lcom/android/exsettings/wifi/WifiSettingsGuide$Multimap;-><init>(Lcom/android/exsettings/wifi/WifiSettingsGuide$1;)V

    .line 1121
    .local v4, "apMap":Lcom/android/exsettings/wifi/WifiSettingsGuide$Multimap;, "Lcom/android/exsettings/wifi/WifiSettingsGuide$Multimap<Ljava/lang/String;Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    .line 1123
    .local v6, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v1, 0x0

    .line 1124
    .local v1, "NullSSIDExist":Z
    if-eqz v6, :cond_6

    .line 1125
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 1126
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v12, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v12, :cond_1

    .line 1127
    const/4 v1, 0x1

    .line 1129
    :cond_1
    iget-boolean v12, v5, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v12, :cond_2

    iget v12, v5, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-eqz v12, :cond_0

    .line 1132
    :cond_2
    new-instance v2, Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-direct {v2, p0, v5}, Lcom/android/exsettingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 1133
    .local v2, "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 1135
    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v2, v12, v0, v13}, Lcom/android/exsettingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 1137
    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    iget-object v12, v2, Lcom/android/exsettingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v12, v2}, Lcom/android/exsettings/wifi/WifiSettingsGuide$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1141
    .end local v2    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    sget-boolean v13, Lcom/android/exsettings/wifi/WifiSettingsGuide;->savedNetworksExist:Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    const/4 v14, 0x1

    if-gt v12, v14, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_9

    if-nez v1, :cond_9

    :cond_5
    const/4 v12, 0x1

    :goto_1
    if-eq v13, v12, :cond_6

    .line 1142
    sget-boolean v12, Lcom/android/exsettings/wifi/WifiSettingsGuide;->savedNetworksExist:Z

    if-nez v12, :cond_a

    const/4 v12, 0x1

    :goto_2
    sput-boolean v12, Lcom/android/exsettings/wifi/WifiSettingsGuide;->savedNetworksExist:Z

    .line 1143
    instance-of v12, p0, Landroid/app/Activity;

    if-eqz v12, :cond_6

    move-object v12, p0

    .line 1144
    check-cast v12, Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1150
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v11

    .line 1151
    .local v11, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v11, :cond_c

    .line 1152
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/ScanResult;

    .line 1154
    .local v10, "result":Landroid/net/wifi/ScanResult;
    iget-object v12, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v12, :cond_7

    iget-object v12, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, v10, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v13, "[IBSS]"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 1159
    const/4 v7, 0x0

    .line 1160
    .local v7, "found":Z
    iget-object v12, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v12}, Lcom/android/exsettings/wifi/WifiSettingsGuide$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 1161
    .restart local v2    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-virtual {v2, v10}, Lcom/android/exsettingslib/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1162
    const/4 v7, 0x1

    goto :goto_4

    .line 1141
    .end local v2    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    .end local v7    # "found":Z
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    .end local v11    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_9
    const/4 v12, 0x0

    goto :goto_1

    .line 1142
    :cond_a
    const/4 v12, 0x0

    goto :goto_2

    .line 1164
    .end local v8    # "i$":Ljava/util/Iterator;
    .restart local v7    # "found":Z
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "result":Landroid/net/wifi/ScanResult;
    .restart local v11    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_b
    if-nez v7, :cond_7

    .line 1165
    new-instance v2, Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-direct {v2, p0, v10}, Lcom/android/exsettingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 1166
    .restart local v2    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    iget-object v12, v2, Lcom/android/exsettingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v12, v2}, Lcom/android/exsettings/wifi/WifiSettingsGuide$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 1173
    .end local v2    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    .end local v7    # "found":Z
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    :cond_c
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1174
    return-object v3
.end method

.method private disableWifiAssistantCardUntilPlatformUpgrade()V
    .locals 4

    .prologue
    .line 1069
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1070
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1071
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "assistant_dismiss_platform"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1072
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1073
    return-void
.end method

.method private getCMCCLoginStatus()I
    .locals 3

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mCmccInfo:Landroid/content/SharedPreferences;

    const-string v1, "cmcc_login_status_recode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getOtherAvaiConfigNetwork(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p3, "lastInfo"    # Landroid/net/wifi/WifiInfo;
    .param p4, "lastState"    # Landroid/net/NetworkInfo$DetailedState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/wifi/WifiManager;",
            "Landroid/net/wifi/WifiInfo;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1517
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1519
    .local v1, "accessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 1520
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_1

    .line 1521
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 1522
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v0, Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-direct {v0, p1, v2}, Lcom/android/exsettingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 1523
    .local v0, "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 1525
    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v0, v7, p3, v8}, Lcom/android/exsettingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 1527
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1531
    .end local v0    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1532
    .local v5, "ignoreAccessPoint":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_5

    .line 1533
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 1534
    .local v6, "point":Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-virtual {v6}, Lcom/android/exsettingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lcom/android/exsettingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v7, v8, :cond_3

    invoke-virtual {v6}, Lcom/android/exsettingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_4

    .line 1538
    :cond_3
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1539
    :cond_4
    invoke-virtual {v6}, Lcom/android/exsettingslib/wifi/AccessPoint;->getLevel()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    goto :goto_1

    .line 1544
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "point":Lcom/android/exsettingslib/wifi/AccessPoint;
    :cond_5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1545
    return-object v1
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 1178
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1179
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1180
    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->updateWifiState(I)V

    .line 1215
    :cond_0
    :goto_0
    return-void

    .line 1182
    :cond_1
    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1185
    :cond_2
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->updateAccessPoints()V

    goto :goto_0

    .line 1186
    :cond_3
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1187
    const-string v4, "networkInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 1189
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1190
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->changeNextButtonState(Z)V

    .line 1191
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->updateAccessPoints()V

    .line 1192
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1194
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->isFristrun:Z

    if-eqz v4, :cond_0

    .line 1195
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->isFristrun:Z

    .line 1196
    const-string v4, "CMCC-WEB"

    iget-object v5, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/exsettingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1197
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1198
    .local v2, "intentDateTime":Landroid/content/Intent;
    const-string v4, "com.android.guide"

    const-string v5, "com.android.guide.GuideDateTimeSettings"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1199
    invoke-virtual {p0, v2}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->startActivity(Landroid/content/Intent;)V

    .line 1200
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->finish()V

    goto :goto_0

    .line 1202
    .end local v2    # "intentDateTime":Landroid/content/Intent;
    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1203
    .local v3, "intentGuideAccount":Landroid/content/Intent;
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.wifi.GuideWlanAccountSettings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1204
    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->startActivity(Landroid/content/Intent;)V

    .line 1205
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->finish()V

    goto/16 :goto_0

    .line 1208
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "intentGuideAccount":Landroid/content/Intent;
    :cond_5
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1209
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->updateAccessPoints()V

    .line 1210
    invoke-direct {p0, v5}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 1211
    :cond_6
    const-string v4, "android.settings.wifi.CmccLoginStatusChange"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1212
    invoke-direct {p0, v5}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0
.end method

.method static isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1649
    invoke-static {p0, p1}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareWifiAssistantCard()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 996
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v6

    instance-of v6, v6, Lcom/android/exsettings/wifi/WifiPickerActivity;

    if-eqz v6, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1005
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/net/NetworkScorerAppManager;->getAllValidScorers(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v3

    .line 1007
    .local v3, "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1012
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1013
    .local v5, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v6, "assistant_dismiss_platform"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1015
    .local v1, "lastDismissPlatform":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v6, v1, :cond_0

    .line 1023
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiAssistantApp:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    .line 1025
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiAssistantCard:Landroid/view/View;

    if-nez v6, :cond_0

    .line 1026
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04013e

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiAssistantCard:Landroid/view/View;

    .line 1028
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiAssistantCard:Landroid/view/View;

    const v7, 0x7f1202bc

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1029
    .local v4, "setup":Landroid/widget/Button;
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiAssistantCard:Landroid/view/View;

    const v7, 0x7f1202bb

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1030
    .local v2, "noThanks":Landroid/widget/Button;
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiAssistantCard:Landroid/view/View;

    const v7, 0x7f1202ba

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1032
    .local v0, "assistantText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c024e

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiAssistantApp:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    iget-object v9, v9, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mScorerName:Ljava/lang/CharSequence;

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 1036
    new-instance v6, Lcom/android/exsettings/wifi/WifiSettingsGuide$6;

    invoke-direct {v6, p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide$6;-><init>(Lcom/android/exsettings/wifi/WifiSettingsGuide;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1056
    new-instance v6, Lcom/android/exsettings/wifi/WifiSettingsGuide$7;

    invoke-direct {v6, p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide$7;-><init>(Lcom/android/exsettings/wifi/WifiSettingsGuide;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private reconnect()V
    .locals 8

    .prologue
    .line 1492
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getOtherAvaiConfigNetwork(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/List;

    move-result-object v1

    .line 1494
    .local v1, "availableNetworks":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    const/4 v2, 0x0

    .line 1495
    .local v2, "highestPriority":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1496
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1497
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v5, v4, :cond_0

    .line 1499
    move v2, v3

    .line 1496
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1505
    .end local v3    # "index":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "disconnect_from_network"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1513
    :cond_2
    :goto_1
    return-void

    .line 1509
    .restart local v3    # "index":I
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 1510
    .local v0, "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    iget v4, v0, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 1511
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v5, v0, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_1
.end method

.method private recordCMCCLoginStatus(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1584
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mCmccInfo:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1585
    .local v0, "editor_cmcc":Landroid/content/SharedPreferences$Editor;
    const-string v1, "cmcc_login_status_recode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1586
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1587
    return-void
.end method

.method private setOffMessage()V
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1100
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1101
    return-void
.end method

.method private showCmccAutoLoginDialog()V
    .locals 2

    .prologue
    .line 1707
    new-instance v0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;-><init>(Landroid/content/Context;)V

    .line 1708
    .local v0, "dialog":Lcom/android/exsettings/wifi/CmccAutoLoginDialog;
    invoke-virtual {v0}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->show()V

    .line 1709
    return-void
.end method

.method private showCmccLoginDialog()V
    .locals 2

    .prologue
    .line 1712
    new-instance v0, Lcom/android/exsettings/wifi/CmccLoginDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exsettings/wifi/CmccLoginDialog;-><init>(Landroid/content/Context;)V

    .line 1713
    .local v0, "dialog":Lcom/android/exsettings/wifi/CmccLoginDialog;
    invoke-virtual {v0}, Lcom/android/exsettings/wifi/CmccLoginDialog;->show()V

    .line 1714
    return-void
.end method

.method private showDialog(Lcom/android/exsettingslib/wifi/AccessPoint;Z)V
    .locals 2
    .param p1, "accessPoint"    # Lcom/android/exsettingslib/wifi/AccessPoint;
    .param p2, "edit"    # Z

    .prologue
    const/4 v1, 0x1

    .line 812
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->removeDialog(I)V

    .line 814
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    .line 818
    :cond_0
    iput-object p1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 819
    iput-boolean p2, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDlgEdit:Z

    .line 821
    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->showDialog(I)V

    .line 822
    return-void
.end method

.method private startAccessPointInfo()V
    .locals 3

    .prologue
    .line 1700
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1701
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.android.settings.wifi.AccessPointInfo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1702
    const-string v1, "IS_CONNECTED_LINK"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1703
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1704
    return-void
.end method

.method private updateAccessPoints()V
    .locals 10

    .prologue
    .line 885
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_0

    .line 977
    :goto_0
    return-void

    .line 887
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->isUiRestricted()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 888
    const v6, 0x7f0c02a5

    invoke-direct {p0, v6}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->addMessagePreference(I)V

    goto :goto_0

    .line 891
    :cond_1
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    .line 894
    .local v5, "wifiState":I
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v6

    sput v6, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mVerboseLogging:I

    .line 896
    packed-switch v5, :pswitch_data_0

    .line 971
    :pswitch_0
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mEmptyView:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 972
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mEmptyView:Landroid/widget/TextView;

    const v7, 0x7f0c027e

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 974
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto :goto_0

    .line 900
    :pswitch_1
    const/4 v2, 0x0

    .line 901
    .local v2, "hasAvailableAccessPoints":Z
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v8, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v6, v7, v8, v9}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->constructAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/List;

    move-result-object v1

    .line 903
    .local v1, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 904
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mAPListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 905
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 909
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getListView()Landroid/widget/ListView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiAssistantCard:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 911
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02004a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 912
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getListView()Landroid/widget/ListView;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 914
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiAssistantApp:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    if-eqz v6, :cond_4

    .line 915
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getListView()Landroid/widget/ListView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiAssistantCard:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 918
    :cond_4
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 920
    .local v0, "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getLevel()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    .line 923
    const/4 v2, 0x1

    .line 924
    new-instance v4, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mUserBadgeCache:Lcom/android/exsettings/wifi/AccessPointPreferenceGuide$UserBadgeCache;

    const/4 v8, 0x0

    invoke-direct {v4, v0, v6, v7, v8}, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;-><init>(Lcom/android/exsettingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/exsettings/wifi/AccessPointPreferenceGuide$UserBadgeCache;Z)V

    .line 928
    .local v4, "preference":Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 932
    .end local v0    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    .end local v4    # "preference":Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;
    :cond_6
    if-eqz v2, :cond_7

    .line 933
    new-instance v6, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mAddNetworkPref:Landroid/preference/Preference;

    .line 934
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mAddNetworkPref:Landroid/preference/Preference;

    const-string v7, "add_network"

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 938
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mAddNetworkPref:Landroid/preference/Preference;

    const v7, 0x7f040086

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 940
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mAddNetworkPref:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 943
    :cond_7
    const v6, 0x7f0c02a4

    invoke-direct {p0, v6}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->addMessagePreference(I)V

    goto/16 :goto_0

    .line 953
    .end local v1    # "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    .end local v2    # "hasAvailableAccessPoints":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto/16 :goto_0

    .line 957
    :pswitch_3
    const v6, 0x7f0c027d

    invoke-direct {p0, v6}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->addMessagePreference(I)V

    goto/16 :goto_0

    .line 961
    :pswitch_4
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->setOffMessage()V

    goto/16 :goto_0

    .line 965
    :pswitch_5
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mEmptyView:Landroid/widget/TextView;

    if-eqz v6, :cond_8

    .line 966
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mEmptyView:Landroid/widget/TextView;

    const v7, 0x7f0c027c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 968
    :cond_8
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto/16 :goto_0

    .line 896
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 6
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 1219
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1220
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mScanner:Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;

    invoke-virtual {v3}, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->pause()V

    .line 1244
    :cond_0
    return-void

    .line 1224
    :cond_1
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_4

    .line 1225
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mScanner:Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;

    invoke-virtual {v3}, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->pause()V

    .line 1230
    :goto_0
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 1231
    if-eqz p1, :cond_2

    .line 1232
    iput-object p1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 1235
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 1237
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 1238
    .local v2, "preference":Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;

    if-eqz v3, :cond_3

    .line 1239
    check-cast v2, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;

    .end local v2    # "preference":Landroid/preference/Preference;
    invoke-virtual {v2}, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;->getAccessPoint()Lcom/android/exsettingslib/wifi/AccessPoint;

    move-result-object v0

    .line 1241
    .local v0, "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/exsettingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 1235
    .end local v0    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1227
    .end local v1    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mScanner:Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;

    invoke-virtual {v3}, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->resume()V

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    .line 1247
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1248
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1249
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1252
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1266
    :goto_0
    iput-object v2, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 1267
    iput-object v2, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 1268
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mScanner:Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->pause()V

    .line 1269
    :goto_1
    return-void

    .line 1254
    :pswitch_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mScanner:Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->resume()V

    goto :goto_1

    .line 1258
    :pswitch_1
    const v1, 0x7f0c027c

    invoke-direct {p0, v1}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->addMessagePreference(I)V

    goto :goto_0

    .line 1262
    :pswitch_2
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->setOffMessage()V

    goto :goto_0

    .line 1252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    .line 547
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 548
    .local v1, "wifiIsEnabled":Z
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 550
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    const v3, 0x7f0c0296

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 554
    sget-boolean v2, Lcom/android/exsettings/wifi/WifiSettingsGuide;->savedNetworksExist:Z

    if-eqz v2, :cond_0

    .line 555
    const/4 v2, 0x3

    const v3, 0x7f0c0308

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 560
    :cond_0
    const/4 v2, 0x6

    const v3, 0x7f0c0739

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 563
    const/4 v2, 0x5

    const v3, 0x7f0c029d

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 565
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 566
    return-void

    .line 548
    nop

    :array_0
    .array-data 4
        0x7f010039
        0x7f01003b
    .end array-data
.end method

.method protected connect(I)V
    .locals 2
    .param p1, "networkId"    # I

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1398
    return-void
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1394
    return-void
.end method

.method forget()V
    .locals 3

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v0, v0, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1377
    const-string v0, "WifiSettingsGuide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    :goto_0
    return-void

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v1, v1, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1383
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1384
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mScanner:Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->resume()V

    .line 1386
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->updateAccessPoints()V

    .line 1389
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->changeNextButtonState(Z)V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1454
    const v0, 0x7f0c0987

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 341
    const/16 v0, 0x68

    return v0
.end method

.method protected initEmptyView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1076
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1078
    .local v0, "emptyView":Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1079
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 1080
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 369
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 371
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 372
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->tm:Landroid/telephony/TelephonyManager;

    .line 373
    new-instance v3, Lcom/android/exsettings/wifi/WifiSettingsGuide$3;

    invoke-direct {v3, p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide$3;-><init>(Lcom/android/exsettings/wifi/WifiSettingsGuide;)V

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 388
    new-instance v3, Lcom/android/exsettings/wifi/WifiSettingsGuide$4;

    invoke-direct {v3, p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide$4;-><init>(Lcom/android/exsettings/wifi/WifiSettingsGuide;)V

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 403
    new-instance v3, Lcom/android/exsettings/wifi/WifiSettingsGuide$5;

    invoke-direct {v3, p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide$5;-><init>(Lcom/android/exsettings/wifi/WifiSettingsGuide;)V

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 418
    if-eqz p1, :cond_0

    .line 419
    const-string v3, "edit_mode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDlgEdit:Z

    .line 421
    const-string v3, "modify_mode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDlgModify:Z

    .line 422
    const-string v3, "wifi_ap_state"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 423
    const-string v3, "wifi_ap_state"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 431
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "wifi_enable_next_on_connect"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mEnableNextOnConnection:Z

    .line 433
    iget-boolean v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mEnableNextOnConnection:Z

    if-eqz v3, :cond_1

    .line 434
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->hasNextButton()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 435
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 437
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 440
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->changeNextButtonState(Z)V

    .line 445
    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_1
    const v3, 0x7f08006f

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->addPreferencesFromResource(I)V

    .line 447
    const-string v3, "ap_list_guide"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mAPListCategory:Landroid/preference/PreferenceCategory;

    .line 452
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->prepareWifiAssistantCard()V

    .line 455
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->initEmptyView()Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mEmptyView:Landroid/widget/TextView;

    .line 457
    invoke-virtual {p0, v5}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->setHasOptionsMenu(Z)V

    .line 458
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "cmcc_info"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mCmccInfo:Landroid/content/SharedPreferences;

    .line 459
    new-instance v3, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mUserBadgeCache:Lcom/android/exsettings/wifi/AccessPointPreferenceGuide$UserBadgeCache;

    .line 460
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 464
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 465
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 466
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->disableWifiAssistantCardUntilPlatformUpgrade()V

    .line 467
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiAssistantCard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiAssistantApp:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method onAddNetworkPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1417
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1418
    iput-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 1421
    :cond_0
    iput-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 1422
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->showDialog(Lcom/android/exsettingslib/wifi/AccessPoint;Z)V

    .line 1423
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 1285
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 1286
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->forget()V

    .line 1292
    :cond_0
    :goto_0
    return-void

    .line 1287
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1288
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiDialog;->getController()Lcom/android/exsettings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->submit(Lcom/android/exsettings/wifi/WifiConfigController;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x6

    const/4 v0, 0x1

    .line 683
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 684
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 733
    :cond_0
    :goto_0
    return v0

    .line 686
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 733
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 688
    :pswitch_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v1, v1, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 689
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v1, v1, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->connect(I)V

    goto :goto_0

    .line 690
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v1, v1, Lcom/android/exsettingslib/wifi/AccessPoint;->security:I

    if-nez v1, :cond_3

    .line 692
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 693
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 696
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDlgModify:Z

    .line 697
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->showDialog(Lcom/android/exsettingslib/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 702
    :pswitch_1
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v2, v2, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 707
    :pswitch_2
    iput-boolean v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDlgModify:Z

    .line 708
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->showDialog(Lcom/android/exsettingslib/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 712
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 713
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 714
    iget-boolean v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mAutoConnect:Z

    if-eqz v1, :cond_0

    .line 715
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->reconnect()V

    goto :goto_0

    .line 723
    :pswitch_4
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiToNfcDialog:Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    if-eqz v1, :cond_4

    .line 724
    invoke-virtual {p0, v2}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->removeDialog(I)V

    .line 725
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiToNfcDialog:Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    .line 727
    :cond_4
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iput-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 729
    invoke-virtual {p0, v2}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->showDialog(I)V

    goto :goto_0

    .line 686
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 652
    instance-of v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v1, :cond_2

    .line 653
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "info":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 656
    .local v0, "preference":Landroid/preference/Preference;
    instance-of v1, v0, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;

    if-eqz v1, :cond_2

    .line 657
    check-cast v0, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;

    .end local v0    # "preference":Landroid/preference/Preference;
    invoke-virtual {v0}, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;->getAccessPoint()Lcom/android/exsettingslib/wifi/AccessPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 658
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/exsettingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 659
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-nez v1, :cond_0

    .line 661
    const/4 v1, 0x7

    const v2, 0x7f0c029e

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 664
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 665
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 666
    const/16 v1, 0xb

    const v2, 0x7f0c0bbb

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 669
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v1, v1, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    if-eq v1, v4, :cond_2

    .line 670
    const/16 v1, 0x8

    const v2, 0x7f0c02a0

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 671
    const/16 v1, 0x9

    const v2, 0x7f0c02a1

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 672
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v1, v1, Lcom/android/exsettingslib/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_2

    .line 674
    const/16 v1, 0xa

    const v2, 0x7f0c02a2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 679
    :cond_2
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .param p1, "dialogId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 826
    packed-switch p1, :pswitch_data_0

    .line 876
    :cond_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 828
    :pswitch_1
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 829
    .local v3, "ap":Lcom/android/exsettingslib/wifi/AccessPoint;
    if-nez v3, :cond_1

    .line 830
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 831
    new-instance v3, Lcom/android/exsettingslib/wifi/AccessPoint;

    .end local v3    # "ap":Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v3, v0, v1}, Lcom/android/exsettingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 833
    .restart local v3    # "ap":Lcom/android/exsettingslib/wifi/AccessPoint;
    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 835
    iput-object v2, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 839
    :cond_1
    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 841
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 843
    .local v7, "hideForget":Z
    :cond_2
    :goto_1
    new-instance v0, Lcom/android/exsettings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDlgEdit:Z

    iget-boolean v5, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDlgModify:Z

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/exsettings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/exsettingslib/wifi/AccessPoint;ZZZZ)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    .line 847
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    goto :goto_0

    .end local v7    # "hideForget":Z
    :cond_3
    move v7, v6

    .line 841
    goto :goto_1

    .line 849
    .end local v3    # "ap":Lcom/android/exsettingslib/wifi/AccessPoint;
    :pswitch_2
    new-instance v0, Lcom/android/exsettings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/android/exsettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 851
    :pswitch_3
    new-instance v0, Lcom/android/exsettings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/android/exsettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 855
    :pswitch_4
    iget-object v8, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 856
    .local v8, "mAP":Lcom/android/exsettingslib/wifi/AccessPoint;
    if-nez v8, :cond_4

    .line 857
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 858
    new-instance v8, Lcom/android/exsettingslib/wifi/AccessPoint;

    .end local v8    # "mAP":Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v8, v0, v1}, Lcom/android/exsettingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 860
    .restart local v8    # "mAP":Lcom/android/exsettingslib/wifi/AccessPoint;
    iput-object v8, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 862
    iput-object v2, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 865
    :cond_4
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-nez v0, :cond_5

    .line 866
    iput-object v8, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 869
    :cond_5
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 870
    new-instance v0, Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSecurity()I

    move-result v4

    iget-object v5, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;IILandroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiToNfcDialog:Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    .line 872
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiToNfcDialog:Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    goto/16 :goto_0

    .line 826
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    :goto_0
    return-void

    .line 539
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->addOptionsMenuItems(Landroid/view/Menu;)V

    .line 540
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 477
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onDestroyView()V

    .line 479
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiEnabler:Lcom/android/exsettings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiEnabler:Lcom/android/exsettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiEnabler;->teardownSwitchBar()V

    .line 482
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v3, 0x7f0c0301

    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 591
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    :goto_0
    return v6

    .line 593
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 647
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_0

    .line 595
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->showDialog(I)V

    move v6, v10

    .line 596
    goto :goto_0

    .line 612
    :pswitch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->showDialog(I)V

    move v6, v10

    .line 613
    goto :goto_0

    .line 615
    :pswitch_2
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mScanner:Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->forceScan()V

    :cond_1
    move v6, v10

    .line 618
    goto :goto_0

    .line 620
    :pswitch_3
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 621
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->onAddNetworkPressed()V

    :cond_2
    move v6, v10

    .line 623
    goto :goto_0

    .line 625
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/exsettings/SettingsActivity;

    if-eqz v0, :cond_3

    .line 626
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    const-class v1, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v6, v10

    .line 634
    goto :goto_0

    .line 630
    :cond_3
    const-class v0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 636
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/exsettings/SettingsActivity;

    if-eqz v0, :cond_4

    .line 637
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    const-class v1, Lcom/android/exsettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0302

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_2
    move v6, v10

    .line 645
    goto :goto_0

    .line 641
    :cond_4
    const-class v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0c0302

    move-object v4, p0

    move-object v5, p0

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 593
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 525
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onPause()V

    .line 526
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiEnabler:Lcom/android/exsettings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiEnabler:Lcom/android/exsettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiEnabler;->pause()V

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 531
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mScanner:Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->pause()V

    .line 532
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 738
    instance-of v1, p2, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;

    if-eqz v1, :cond_d

    move-object v1, p2

    .line 739
    check-cast v1, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;->getAccessPoint()Lcom/android/exsettingslib/wifi/AccessPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 741
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v3, :cond_1

    .line 743
    check-cast p2, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;

    .end local p2    # "preference":Landroid/preference/Preference;
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;->isCMCCAP(Lcom/android/exsettingslib/wifi/AccessPoint;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getCMCCLoginStatus()I

    move-result v1

    if-ge v1, v6, :cond_0

    .line 744
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->showCmccLoginDialog()V

    :goto_0
    move v1, v2

    .line 808
    :goto_1
    return v1

    .line 746
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->startAccessPointInfo()V

    goto :goto_0

    .line 751
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v1, :cond_5

    move-object v1, p2

    check-cast v1, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;->isCMCCAUTOAP(Lcom/android/exsettingslib/wifi/AccessPoint;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 752
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v1, v1, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    if-ne v1, v5, :cond_3

    .line 753
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 757
    :cond_2
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->showCmccAutoLoginDialog()V

    :goto_2
    move v1, v2

    .line 766
    goto :goto_1

    .line 760
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    if-ne v1, v7, :cond_4

    .line 763
    :cond_4
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->showCmccAutoLoginDialog()V

    goto :goto_2

    .line 769
    :cond_5
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v1, v1, Lcom/android/exsettingslib/wifi/AccessPoint;->security:I

    if-eq v1, v6, :cond_6

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v1, v1, Lcom/android/exsettingslib/wifi/AccessPoint;->security:I

    if-eq v1, v7, :cond_6

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v1, v1, Lcom/android/exsettingslib/wifi/AccessPoint;->security:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_7

    .line 773
    :cond_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 774
    .local v0, "apInfoIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "com.android.settings.wifi.AccessPointInfo"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    const-string v1, "APInfo"

    check-cast p2, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;

    .end local p2    # "preference":Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {p2, v3}, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;->createAPBundle(Lcom/android/exsettingslib/wifi/AccessPoint;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 776
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v1, v2

    .line 777
    goto :goto_1

    .line 781
    .end local v0    # "apInfoIntent":Landroid/content/Intent;
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_7
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v1, v1, Lcom/android/exsettingslib/wifi/AccessPoint;->security:I

    if-nez v1, :cond_b

    .line 782
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v1, v1, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    if-ne v1, v5, :cond_a

    .line 783
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 784
    sget-boolean v1, Lcom/android/exsettings/wifi/WifiSettingsGuide;->savedNetworksExist:Z

    if-nez v1, :cond_8

    .line 785
    sput-boolean v2, Lcom/android/exsettings/wifi/WifiSettingsGuide;->savedNetworksExist:Z

    .line 786
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 788
    :cond_8
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->connect(Landroid/net/wifi/WifiConfiguration;)V

    :cond_9
    :goto_3
    move v1, v2

    .line 808
    goto/16 :goto_1

    .line 790
    :cond_a
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_3

    .line 793
    :cond_b
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 794
    iput-boolean v4, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDlgModify:Z

    .line 795
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-direct {p0, v1, v4}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->showDialog(Lcom/android/exsettingslib/wifi/AccessPoint;Z)V

    goto :goto_3

    .line 797
    :cond_c
    iput-boolean v4, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDlgModify:Z

    .line 798
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->showDialog(Lcom/android/exsettingslib/wifi/AccessPoint;Z)V

    goto :goto_3

    .line 801
    :cond_d
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "add_network"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 802
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 803
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->onAddNetworkPressed()V

    goto :goto_3

    .line 806
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const v6, 0x7f0f0004

    const/4 v3, 0x1

    .line 502
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 503
    .local v0, "activity":Landroid/app/Activity;
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onResume()V

    .line 504
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiEnabler:Lcom/android/exsettings/wifi/WifiEnabler;

    if-eqz v2, :cond_0

    .line 505
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiEnabler:Lcom/android/exsettings/wifi/WifiEnabler;

    invoke-virtual {v2, v0}, Lcom/android/exsettings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10001c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 509
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wifi_auto_connect_type"

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-ne v2, v4, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mAutoConnect:Z

    .line 515
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 516
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->updateAccessPoints()V

    .line 517
    iput-boolean v3, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->isFristrun:Z

    .line 518
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mCmccInfo:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 519
    .local v1, "cmccPref":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 520
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 521
    return-void

    .line 509
    .end local v1    # "cmccPref":Landroid/content/SharedPreferences$Editor;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 570
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 575
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiToNfcDialog:Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiToNfcDialog:Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 576
    :cond_1
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 578
    const-string v0, "modify_mode"

    iget-boolean v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDlgModify:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 579
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v0, :cond_2

    .line 580
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 581
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 582
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 586
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 486
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onStart()V

    .line 490
    return-void
.end method

.method submit(Lcom/android/exsettings/wifi/WifiConfigController;)V
    .locals 5
    .param p1, "configController"    # Lcom/android/exsettings/wifi/WifiConfigController;

    .prologue
    const/4 v4, -0x1

    const v3, 0x7f0c0c81

    const/4 v2, 0x1

    .line 1296
    invoke-virtual {p1}, Lcom/android/exsettings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1298
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_2

    .line 1299
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v1, v1, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    if-eq v1, v4, :cond_0

    .line 1301
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v1, v1, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->connect(I)V

    .line 1368
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1369
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mScanner:Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->resume()V

    .line 1371
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->updateAccessPoints()V

    .line 1372
    return-void

    .line 1328
    :cond_2
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v4, :cond_4

    .line 1329
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 1331
    invoke-virtual {p1}, Lcom/android/exsettings/wifi/WifiConfigController;->getSecurity()I

    move-result v1

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/android/exsettings/wifi/WifiConfigController;->isWepPasswordValid()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1332
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1335
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1337
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 1338
    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 1343
    :cond_4
    invoke-virtual {p1}, Lcom/android/exsettings/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1345
    invoke-virtual {p1}, Lcom/android/exsettings/wifi/WifiConfigController;->getSecurity()I

    move-result v1

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/android/exsettings/wifi/WifiConfigController;->isWepPasswordValid()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1346
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1351
    :cond_5
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1353
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 1354
    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 1359
    :cond_6
    invoke-virtual {p1}, Lcom/android/exsettings/wifi/WifiConfigController;->getSecurity()I

    move-result v1

    if-ne v1, v2, :cond_7

    invoke-virtual {p1}, Lcom/android/exsettings/wifi/WifiConfigController;->isWepPasswordValid()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1360
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1363
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0
.end method
