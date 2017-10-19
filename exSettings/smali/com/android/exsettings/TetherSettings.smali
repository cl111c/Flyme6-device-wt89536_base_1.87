.class public Lcom/android/exsettings/TetherSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/SwitchPreference;

.field private mConfigureReceiver:Landroid/content/BroadcastReceiver;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/exsettings/wifi/WifiApDialog;

.field private mEnableWifiAp:Landroid/preference/Preference;

.field private mMassStorageActive:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mSecurityType:[Ljava/lang/String;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetherHelp:Landroid/preference/PreferenceScreen;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/SwitchPreference;

.field private mWifiApEnabler:Lcom/android/exsettings/wifi/WifiApEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 836
    new-instance v0, Lcom/android/exsettings/TetherSettings$3;

    invoke-direct {v0}, Lcom/android/exsettings/TetherSettings$3;-><init>()V

    sput-object v0, Lcom/android/exsettings/TetherSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 121
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/TetherSettings;->mTetherChoice:I

    .line 283
    new-instance v0, Lcom/android/exsettings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/TetherSettings$1;-><init>(Lcom/android/exsettings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 304
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/TetherSettings;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/TetherSettings;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/exsettings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/exsettings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/exsettings/TetherSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/TetherSettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/exsettings/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/exsettings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/exsettings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/exsettings/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/TetherSettings;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/exsettings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/exsettings/TetherSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/TetherSettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/exsettings/TetherSettings;->startTethering()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/exsettings/TetherSettings;)Lcom/android/exsettings/wifi/WifiApEnabler;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/TetherSettings;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/exsettings/TetherSettings;->mWifiApEnabler:Lcom/android/exsettings/wifi/WifiApEnabler;

    return-object v0
.end method

.method private checkDefaultValue(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 735
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100036

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 737
    .local v1, "def_ssid":Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100035

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 738
    .local v0, "clear_pwd":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 739
    :cond_0
    const-string v5, "MY_PERFS"

    invoke-virtual {p1, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 741
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v5, "def_wifiap_set"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 743
    .local v3, "hasSetDefaultValue":Z
    if-nez v3, :cond_1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/exsettings/TetherSettings;->setDefaultValue(Landroid/content/Context;ZZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 744
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 745
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "def_wifiap_set"

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 746
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 749
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "hasSetDefaultValue":Z
    .end local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "ifaces"    # [Ljava/lang/String;
    .param p1, "regexes"    # [Ljava/lang/String;

    .prologue
    .line 696
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 697
    .local v4, "iface":Ljava/lang/String;
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 698
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 703
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    :goto_2
    return-object v4

    .line 697
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "iface":Ljava/lang/String;
    .restart local v6    # "len$":I
    .restart local v7    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 696
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 703
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private initWifiTethering()V
    .locals 9

    .prologue
    const v6, 0x7f0c0332

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 263
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 264
    .local v0, "activity":Landroid/app/Activity;
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/exsettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 265
    iget-object v3, p0, Lcom/android/exsettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 266
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 267
    iget-object v3, p0, Lcom/android/exsettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-nez v3, :cond_0

    .line 281
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_1

    .line 271
    const v3, 0x10403af

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exsettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    iget-object v6, p0, Lcom/android/exsettings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v7

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 276
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/android/exsettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 277
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/exsettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/exsettings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v1

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private postTurnOn(Landroid/content/Context;IZ)Z
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "choice"    # I
    .param p3, "bEnable"    # Z

    .prologue
    .line 793
    const/4 v1, 0x2

    if-eq v1, p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 795
    :cond_0
    const/4 v1, 0x0

    .line 801
    :goto_0
    return v1

    .line 797
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Hotspot_PostConfigure"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 798
    .local v0, "hotspot_postConfigure_intent":Landroid/content/Intent;
    const-string v1, "choice"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 799
    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 800
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 801
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private preTurnOn(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "choice"    # I

    .prologue
    .line 782
    const/4 v1, 0x2

    if-eq v1, p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 784
    :cond_0
    const/4 v1, 0x0

    .line 789
    :goto_0
    return v1

    .line 786
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Hotspot_PreConfigure"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 787
    .local v0, "hotspot_preConfigure_intent":Landroid/content/Intent;
    const-string v1, "choice"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 788
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 789
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private registerConfigureReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 812
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "Hotspot_PreConfigure_Response"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 813
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mConfigureReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 814
    new-instance v1, Lcom/android/exsettings/TetherSettings$2;

    invoke-direct {v1, p0}, Lcom/android/exsettings/TetherSettings$2;-><init>(Lcom/android/exsettings/TetherSettings;)V

    iput-object v1, p0, Lcom/android/exsettings/TetherSettings;->mConfigureReceiver:Landroid/content/BroadcastReceiver;

    .line 829
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mConfigureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 830
    return-void
.end method

.method private setDefaultValue(Landroid/content/Context;ZZ)Z
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "default_ssid"    # Z
    .param p3, "clear_password"    # Z

    .prologue
    const/4 v5, 0x0

    .line 752
    const-string v6, "wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 753
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v4, :cond_1

    .line 778
    :cond_0
    :goto_0
    return v5

    .line 756
    :cond_1
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 757
    .local v3, "wifiAPConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v3, :cond_0

    .line 760
    if-eqz p2, :cond_3

    .line 761
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 763
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "deviceId":Ljava/lang/String;
    const-string v1, ""

    .line 765
    .local v1, "lastFourDigits":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_2

    .line 766
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 768
    :cond_2
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 769
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_3

    .line 771
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 774
    .end local v0    # "deviceId":Ljava/lang/String;
    .end local v1    # "lastFourDigits":Ljava/lang/String;
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    if-eqz p3, :cond_4

    .line 775
    const-string v5, ""

    iput-object v5, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 777
    :cond_4
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 778
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private setUsbTethering(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 627
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 629
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 630
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v2, 0x7f0c04c2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 636
    :goto_0
    return-void

    .line 634
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/exsettings/TetherSettings;->mTetherChoice:I

    invoke-direct {p0, v1, v2, p1}, Lcom/android/exsettings/TetherSettings;->postTurnOn(Landroid/content/Context;IZ)Z

    .line 635
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .param p1, "choice"    # I

    .prologue
    const/4 v4, 0x0

    .line 564
    iput p1, p0, Lcom/android/exsettings/TetherSettings;->mTetherChoice:I

    .line 565
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/exsettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    const-string v1, "TETHER_TYPE"

    iget v2, p0, Lcom/android/exsettings/TetherSettings;->mTetherChoice:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 569
    invoke-virtual {p0, v0, v4}, Lcom/android/exsettings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 574
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/exsettings/TetherSettings;->preTurnOn(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 572
    invoke-direct {p0}, Lcom/android/exsettings/TetherSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 599
    iget v2, p0, Lcom/android/exsettings/TetherSettings;->mTetherChoice:I

    packed-switch v2, :pswitch_data_0

    .line 624
    :goto_0
    return-void

    .line 601
    :pswitch_0
    iget-object v2, p0, Lcom/android/exsettings/TetherSettings;->mWifiApEnabler:Lcom/android/exsettings/wifi/WifiApEnabler;

    invoke-virtual {v2, v4}, Lcom/android/exsettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 605
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 606
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 607
    iput-boolean v4, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothEnableForTether:Z

    .line 608
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 609
    iget-object v2, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v3, 0x7f0c00d9

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 610
    iget-object v2, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 612
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 613
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 614
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v3, 0x7f0c04c4

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 618
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/android/exsettings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 599
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private unRegisterConfigureReceiver()V
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/exsettings/TetherSettings;->mConfigureReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 806
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mConfigureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 807
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/TetherSettings;->mConfigureReceiver:Landroid/content/BroadcastReceiver;

    .line 809
    :cond_0
    return-void
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 21
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 488
    const/4 v6, 0x0

    .line 489
    .local v6, "bluetoothErrored":Z
    move-object/from16 v4, p3

    .local v4, "arr$":[Ljava/lang/String;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v11, v10

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v15, v4, v11

    .line 490
    .local v15, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v13, v5

    .local v13, "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_1
    if-ge v10, v13, :cond_1

    aget-object v14, v5, v10

    .line 491
    .local v14, "regex":Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v6, 0x1

    .line 490
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 489
    .end local v14    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_0

    .line 495
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v13    # "len$":I
    .end local v15    # "s":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 496
    .local v3, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v3, :cond_3

    .line 531
    :goto_2
    return-void

    .line 498
    :cond_3
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v9

    .line 499
    .local v9, "btState":I
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v9, v0, :cond_4

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0c00da

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 502
    :cond_4
    const/16 v17, 0xb

    move/from16 v0, v17

    if-ne v9, v0, :cond_5

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0c00d9

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 506
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothPan;

    .line 507
    .local v7, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    const/16 v17, 0xc

    move/from16 v0, v17

    if-ne v9, v0, :cond_9

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 511
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v8

    .line 512
    .local v8, "bluetoothTethered":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v8, v0, :cond_6

    .line 513
    const v17, 0x7f0c04c6

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 516
    .local v16, "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 517
    .end local v16    # "summary":Ljava/lang/String;
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_7

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0c04c5

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 520
    :cond_7
    if-eqz v6, :cond_8

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0c04c9

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 523
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0c04c4

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 526
    .end local v8    # "bluetoothTethered":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0c04c8

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 415
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 418
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "available":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, "tethered":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "errored":[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/exsettings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 426
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 427
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 433
    const-string v13, "connectivity"

    invoke-virtual {p0, v13}, Lcom/android/exsettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 435
    .local v2, "cm":Landroid/net/ConnectivityManager;
    iget-boolean v13, p0, Lcom/android/exsettings/TetherSettings;->mUsbConnected:Z

    if-eqz v13, :cond_1

    iget-boolean v13, p0, Lcom/android/exsettings/TetherSettings;->mMassStorageActive:Z

    if-nez v13, :cond_1

    const/4 v9, 0x1

    .line 436
    .local v9, "usbAvailable":Z
    :goto_0
    const/4 v10, 0x0

    .line 437
    .local v10, "usbError":I
    move-object/from16 v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v8, v0, v4

    .line 438
    .local v8, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v6, :cond_2

    aget-object v7, v1, v3

    .line 439
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 440
    if-nez v10, :cond_0

    .line 441
    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v10

    .line 438
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 435
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "usbAvailable":Z
    .end local v10    # "usbError":I
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 437
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v6    # "len$":I
    .restart local v8    # "s":Ljava/lang/String;
    .restart local v9    # "usbAvailable":Z
    .restart local v10    # "usbError":I
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_1

    .line 446
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    .line 447
    .local v12, "usbTethered":Z
    move-object/from16 v0, p2

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    move v4, v3

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .restart local v4    # "i$":I
    :goto_3
    if-ge v4, v5, :cond_6

    aget-object v8, v0, v4

    .line 448
    .restart local v8    # "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v6, v1

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_4
    if-ge v3, v6, :cond_5

    aget-object v7, v1, v3

    .line 449
    .restart local v7    # "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v12, 0x1

    .line 448
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 447
    .end local v7    # "regex":Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_3

    .line 452
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    .line 453
    .local v11, "usbErrored":Z
    move-object/from16 v0, p3

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    move v4, v3

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .restart local v4    # "i$":I
    :goto_5
    if-ge v4, v5, :cond_9

    aget-object v8, v0, v4

    .line 454
    .restart local v8    # "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v6, v1

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_6
    if-ge v3, v6, :cond_8

    aget-object v7, v1, v3

    .line 455
    .restart local v7    # "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v11, 0x1

    .line 454
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 453
    .end local v7    # "regex":Ljava/lang/String;
    :cond_8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_5

    .line 459
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_9
    if-eqz v12, :cond_a

    .line 460
    iget-object v13, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v14, 0x7f0c04be

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 461
    iget-object v13, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 462
    iget-object v13, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 484
    :goto_7
    return-void

    .line 463
    :cond_a
    if-eqz v9, :cond_c

    .line 464
    if-nez v10, :cond_b

    .line 465
    iget-object v13, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v14, 0x7f0c04bd

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 469
    :goto_8
    iget-object v13, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 470
    iget-object v13, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 467
    :cond_b
    iget-object v13, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v14, 0x7f0c04c2

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_8

    .line 471
    :cond_c
    if-eqz v11, :cond_d

    .line 472
    iget-object v13, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v14, 0x7f0c04c2

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 473
    iget-object v13, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 474
    iget-object v13, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 475
    :cond_d
    iget-boolean v13, p0, Lcom/android/exsettings/TetherSettings;->mMassStorageActive:Z

    if-eqz v13, :cond_e

    .line 476
    iget-object v13, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v14, 0x7f0c04bf

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 477
    iget-object v13, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 478
    iget-object v13, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 480
    :cond_e
    iget-object v13, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v14, 0x7f0c04c0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 481
    iget-object v13, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 482
    iget-object v13, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 731
    const v0, 0x7f0c0991

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 151
    const/16 v0, 0x5a

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 577
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 578
    if-nez p1, :cond_0

    .line 579
    if-ne p2, v1, :cond_1

    .line 580
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/exsettings/TetherSettings;->mTetherChoice:I

    invoke-static {v0, v1}, Lcom/android/exsettings/TetherService;->scheduleRecheckAlarm(Landroid/content/Context;I)V

    .line 581
    invoke-direct {p0}, Lcom/android/exsettings/TetherSettings;->startTethering()V

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget v0, p0, Lcom/android/exsettings/TetherSettings;->mTetherChoice:I

    packed-switch v0, :pswitch_data_0

    .line 593
    :goto_1
    iput v1, p0, Lcom/android/exsettings/TetherSettings;->mTetherChoice:I

    goto :goto_0

    .line 587
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 590
    :pswitch_1
    iget-object v0, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 585
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 707
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mDialog:Lcom/android/exsettings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 709
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 715
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 716
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 717
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 721
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/exsettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 722
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0332

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/exsettings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 727
    .end local v0    # "index":I
    :cond_0
    return-void

    .line 719
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 158
    if-eqz p1, :cond_0

    .line 159
    const-string v10, "TETHER_TYPE"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/exsettings/TetherSettings;->mTetherChoice:I

    .line 161
    :cond_0
    const v10, 0x7f080058

    invoke-virtual {p0, v10}, Lcom/android/exsettings/TetherSettings;->addPreferencesFromResource(I)V

    .line 163
    const-string v10, "user"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    iput-object v10, p0, Lcom/android/exsettings/TetherSettings;->mUm:Landroid/os/UserManager;

    .line 165
    iget-object v10, p0, Lcom/android/exsettings/TetherSettings;->mUm:Landroid/os/UserManager;

    const-string v11, "no_config_tethering"

    invoke-virtual {v10, v11}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-eqz v10, :cond_3

    .line 167
    :cond_1
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/exsettings/TetherSettings;->mUnavailable:Z

    .line 168
    new-instance v10, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v10}, Lcom/android/exsettings/TetherSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 254
    :cond_2
    :goto_0
    return-void

    .line 172
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 173
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 174
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_4

    .line 175
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/exsettings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v12, 0x5

    invoke-virtual {v1, v10, v11, v12}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 179
    :cond_4
    const-string v10, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/exsettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    .line 181
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f100011

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 182
    .local v4, "enableWifiApSettingsExt":Z
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f100012

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 183
    .local v6, "isWifiApEnabled":Z
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/exsettings/TetherSettings;->checkDefaultValue(Landroid/content/Context;)V

    .line 184
    if-eqz v4, :cond_8

    .line 185
    const-string v10, "enable_wifi_ap_ext"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/exsettings/HotspotPreference;

    iput-object v10, p0, Lcom/android/exsettings/TetherSettings;->mEnableWifiAp:Landroid/preference/Preference;

    .line 187
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "enable_wifi_ap"

    invoke-virtual {p0, v11}, Lcom/android/exsettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 188
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/exsettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 190
    .local v5, "intent":Landroid/content/Intent;
    const-string v10, "com.qti.ap.settings"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v10, "com.qualcomm.qti.extsettings"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    iget-object v10, p0, Lcom/android/exsettings/TetherSettings;->mEnableWifiAp:Landroid/preference/Preference;

    invoke-virtual {v10, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 198
    .end local v5    # "intent":Landroid/content/Intent;
    :goto_1
    if-eqz v6, :cond_5

    .line 199
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/exsettings/TetherSettings;->mEnableWifiAp:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 200
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/exsettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    :cond_5
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f100040

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 205
    const-string v10, "tethering_help"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    iput-object v10, p0, Lcom/android/exsettings/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    .line 210
    :goto_2
    const-string v10, "usb_tether_settings"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    .line 211
    const-string v10, "enable_bluetooth_tethering"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    .line 213
    const-string v10, "connectivity"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 216
    .local v3, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/exsettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 217
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/exsettings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 218
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 220
    iget-object v10, p0, Lcom/android/exsettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v10, v10

    if-eqz v10, :cond_a

    const/4 v8, 0x1

    .line 221
    .local v8, "usbAvailable":Z
    :goto_3
    iget-object v10, p0, Lcom/android/exsettings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v10, v10

    if-eqz v10, :cond_b

    const/4 v9, 0x1

    .line 222
    .local v9, "wifiAvailable":Z
    :goto_4
    iget-object v10, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v10, v10

    if-eqz v10, :cond_c

    const/4 v2, 0x1

    .line 224
    .local v2, "bluetoothAvailable":Z
    :goto_5
    if-eqz v8, :cond_6

    invoke-static {}, Lcom/android/exsettings/Utils;->isMonkeyRunning()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 225
    :cond_6
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    :cond_7
    if-eqz v9, :cond_d

    invoke-static {}, Lcom/android/exsettings/Utils;->isMonkeyRunning()Z

    move-result v10

    if-nez v10, :cond_d

    .line 229
    new-instance v10, Lcom/android/exsettings/wifi/WifiApEnabler;

    iget-object v11, p0, Lcom/android/exsettings/TetherSettings;->mEnableWifiAp:Landroid/preference/Preference;

    invoke-direct {v10, v0, v11}, Lcom/android/exsettings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/preference/Preference;)V

    iput-object v10, p0, Lcom/android/exsettings/TetherSettings;->mWifiApEnabler:Lcom/android/exsettings/wifi/WifiApEnabler;

    .line 230
    invoke-direct {p0}, Lcom/android/exsettings/TetherSettings;->initWifiTethering()V

    .line 236
    :goto_6
    if-nez v2, :cond_e

    .line 237
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 247
    :goto_7
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1070016

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/exsettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    .line 250
    iget-object v10, p0, Lcom/android/exsettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-eqz v10, :cond_2

    .line 251
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/exsettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 194
    .end local v2    # "bluetoothAvailable":Z
    .end local v3    # "cm":Landroid/net/ConnectivityManager;
    .end local v8    # "usbAvailable":Z
    .end local v9    # "wifiAvailable":Z
    :cond_8
    const-string v10, "enable_wifi_ap"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/exsettings/TetherSettings;->mEnableWifiAp:Landroid/preference/Preference;

    .line 196
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "enable_wifi_ap_ext"

    invoke-virtual {p0, v11}, Lcom/android/exsettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 207
    :cond_9
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "tethering_help"

    invoke-virtual {p0, v11}, Lcom/android/exsettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 220
    .restart local v3    # "cm":Landroid/net/ConnectivityManager;
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 221
    .restart local v8    # "usbAvailable":Z
    :cond_b
    const/4 v9, 0x0

    goto :goto_4

    .line 222
    .restart local v9    # "wifiAvailable":Z
    :cond_c
    const/4 v2, 0x0

    goto :goto_5

    .line 232
    .restart local v2    # "bluetoothAvailable":Z
    :cond_d
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/exsettings/TetherSettings;->mEnableWifiAp:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 233
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/exsettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6

    .line 239
    :cond_e
    iget-object v10, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothPan;

    .line 240
    .local v7, "pan":Landroid/bluetooth/BluetoothPan;
    if-eqz v7, :cond_f

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 241
    iget-object v10, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 243
    :cond_f
    iget-object v10, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 295
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 297
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/android/exsettings/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/exsettings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/exsettings/TetherSettings;->mDialog:Lcom/android/exsettings/wifi/WifiApDialog;

    .line 298
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mDialog:Lcom/android/exsettings/wifi/WifiApDialog;

    .line 301
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 534
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 536
    .local v0, "enable":Z
    if-eqz v0, :cond_0

    .line 537
    invoke-direct {p0, v2}, Lcom/android/exsettings/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 544
    :goto_0
    return v2

    .line 539
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 540
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/exsettings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 542
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mWifiApEnabler:Lcom/android/exsettings/wifi/WifiApEnabler;

    invoke-virtual {v1, v2}, Lcom/android/exsettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 640
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/exsettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 643
    .local v4, "cm":Landroid/net/ConnectivityManager;
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    if-ne p2, v8, :cond_3

    .line 644
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    .line 646
    .local v6, "newState":Z
    if-eqz v6, :cond_1

    .line 647
    invoke-direct {p0, v9}, Lcom/android/exsettings/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 692
    .end local v6    # "newState":Z
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v8

    return v8

    .line 649
    .restart local v6    # "newState":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/exsettingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 650
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v9}, Lcom/android/exsettings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 652
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/exsettings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 654
    .end local v6    # "newState":Z
    :cond_3
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    if-ne p2, v8, :cond_9

    .line 655
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    .line 657
    .local v3, "bluetoothTetherState":Z
    if-eqz v3, :cond_4

    .line 658
    invoke-direct {p0, v10}, Lcom/android/exsettings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 660
    :cond_4
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/exsettingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 661
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/android/exsettings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 663
    :cond_5
    const/4 v5, 0x0

    .line 665
    .local v5, "errored":Z
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v7

    .line 666
    .local v7, "tethered":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/exsettings/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, "bluetoothIface":Ljava/lang/String;
    if-eqz v1, :cond_6

    invoke-virtual {v4, v1}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_6

    .line 669
    const/4 v5, 0x1

    .line 672
    :cond_6
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothPan;

    .line 673
    .local v2, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v2, :cond_7

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 674
    :cond_7
    if-eqz v5, :cond_8

    .line 675
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v9, 0x7f0c04c9

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 677
    :cond_8
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v9, 0x7f0c04c8

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 680
    .end local v1    # "bluetoothIface":Ljava/lang/String;
    .end local v2    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    .end local v3    # "bluetoothTetherState":Z
    .end local v5    # "errored":Z
    .end local v7    # "tethered":[Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v8, :cond_a

    .line 681
    invoke-virtual {p0, v9}, Lcom/android/exsettings/TetherSettings;->showDialog(I)V

    goto :goto_0

    .line 682
    :cond_a
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100040

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    if-ne p2, v8, :cond_0

    .line 685
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 686
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    const v8, 0x7f0c0baf

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 687
    const v8, 0x7f0c0bb0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 688
    const v8, 0x7f0c0141

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 689
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 258
    const-string v0, "TETHER_TYPE"

    iget v1, p0, Lcom/android/exsettings/TetherSettings;->mTetherChoice:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 260
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 356
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onStart()V

    .line 358
    iget-boolean v4, p0, Lcom/android/exsettings/TetherSettings;->mUnavailable:Z

    if-eqz v4, :cond_1

    .line 359
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 360
    .local v1, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 361
    if-eqz v1, :cond_0

    .line 362
    const v4, 0x7f0c0629

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 396
    .end local v1    # "emptyView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 369
    .local v0, "activity":Landroid/app/Activity;
    const-string v4, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/exsettings/TetherSettings;->mMassStorageActive:Z

    .line 370
    new-instance v4, Lcom/android/exsettings/TetherSettings$TetherChangeReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/exsettings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/exsettings/TetherSettings;Lcom/android/exsettings/TetherSettings$1;)V

    iput-object v4, p0, Lcom/android/exsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 371
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 372
    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/exsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 374
    .local v3, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 375
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    iget-object v4, p0, Lcom/android/exsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 378
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 379
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    const-string v4, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    const-string v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 382
    iget-object v4, p0, Lcom/android/exsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 384
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 385
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    iget-object v4, p0, Lcom/android/exsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 388
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/exsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 389
    :cond_2
    iget-object v4, p0, Lcom/android/exsettings/TetherSettings;->mWifiApEnabler:Lcom/android/exsettings/wifi/WifiApEnabler;

    if-eqz v4, :cond_3

    .line 390
    iget-object v4, p0, Lcom/android/exsettings/TetherSettings;->mEnableWifiAp:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 391
    iget-object v4, p0, Lcom/android/exsettings/TetherSettings;->mWifiApEnabler:Lcom/android/exsettings/wifi/WifiApEnabler;

    invoke-virtual {v4}, Lcom/android/exsettings/wifi/WifiApEnabler;->resume()V

    .line 394
    :cond_3
    invoke-direct {p0}, Lcom/android/exsettings/TetherSettings;->updateState()V

    .line 395
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/exsettings/TetherSettings;->registerConfigureReceiver(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 400
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onStop()V

    .line 402
    iget-boolean v0, p0, Lcom/android/exsettings/TetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 406
    iput-object v2, p0, Lcom/android/exsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 407
    iget-object v0, p0, Lcom/android/exsettings/TetherSettings;->mWifiApEnabler:Lcom/android/exsettings/wifi/WifiApEnabler;

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/android/exsettings/TetherSettings;->mEnableWifiAp:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 409
    iget-object v0, p0, Lcom/android/exsettings/TetherSettings;->mWifiApEnabler:Lcom/android/exsettings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiApEnabler;->pause()V

    .line 411
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/TetherSettings;->unRegisterConfigureReceiver()V

    goto :goto_0
.end method
