.class public Lcom/android/exsettings/deviceinfo/Status;
.super Lcom/android/exsettings/InstrumentedPreferenceActivity;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/deviceinfo/Status$MyHandler;
    }
.end annotation


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mBtAddress:Landroid/preference/Preference;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentFilter:Landroid/content/IntentFilter;

.field private final mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIpAddress:Landroid/preference/Preference;

.field private mRes:Landroid/content/res/Resources;

.field private mSimStatusAddress:Landroid/preference/PreferenceScreen;

.field private mUnavailable:Ljava/lang/String;

.field private mUnknown:Ljava/lang/String;

.field private mUptime:Landroid/preference/Preference;

.field private mWifiMacAddress:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWimaxMacAddress:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.net.wifi.STATE_CHANGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exsettings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;-><init>()V

    .line 143
    new-instance v0, Lcom/android/exsettings/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/deviceinfo/Status$1;-><init>(Lcom/android/exsettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    new-instance v0, Lcom/android/exsettings/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/deviceinfo/Status$2;-><init>(Lcom/android/exsettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/Status;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/Status;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/exsettings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/deviceinfo/Status;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/Status;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private convert(J)Ljava/lang/String;
    .locals 9
    .param p1, "t"    # J

    .prologue
    const-wide/16 v6, 0x3c

    .line 423
    rem-long v4, p1, v6

    long-to-int v2, v4

    .line 424
    .local v2, "s":I
    div-long v4, p1, v6

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 425
    .local v1, "m":I
    const-wide/16 v4, 0xe10

    div-long v4, p1, v4

    long-to-int v0, v4

    .line 427
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/exsettings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/exsettings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private hasBluetooth()Z
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasWimax()Z
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 415
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 416
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 418
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lcom/android/exsettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 332
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 335
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 384
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 385
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 386
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "address":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 389
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 394
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 386
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 391
    .restart local v0    # "address":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setIpAddressStatus()V
    .locals 3

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    invoke-static {v1}, Lcom/android/exsettings/Utils;->getDefaultIpAddresses(Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "ipAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 377
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 352
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object p2, p0, Lcom/android/exsettings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 356
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/exsettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {p0, p1}, Lcom/android/exsettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 359
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 4

    .prologue
    .line 369
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/Status;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 370
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 371
    .local v0, "macAddress":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/Status;->mWifiMacAddress:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .end local v0    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 372
    return-void

    .line 370
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 371
    .restart local v0    # "macAddress":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 3

    .prologue
    .line 362
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 363
    const-string v1, "net.wimax.mac.address"

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "macAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 366
    .end local v0    # "macAddress":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateSimStatussAddress()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "hasIccCard":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 278
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    .line 279
    if-eqz v0, :cond_2

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/Status;->mSimStatusAddress:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    .line 284
    if-nez v0, :cond_3

    .line 285
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/Status;->mSimStatusAddress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setShouldDisableView(Z)V

    .line 286
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/Status;->mSimStatusAddress:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 292
    :cond_1
    :goto_1
    return-void

    .line 277
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    :cond_3
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/Status;->mSimStatusAddress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setShouldDisableView(Z)V

    .line 289
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/Status;->mSimStatusAddress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 305
    const/16 v0, 0x2c

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 176
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 178
    new-instance v6, Lcom/android/exsettings/deviceinfo/Status$MyHandler;

    invoke-direct {v6, p0}, Lcom/android/exsettings/deviceinfo/Status$MyHandler;-><init>(Lcom/android/exsettings/deviceinfo/Status;)V

    iput-object v6, p0, Lcom/android/exsettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 180
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    iput-object v6, p0, Lcom/android/exsettings/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    .line 181
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/android/exsettings/deviceinfo/Status;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 183
    const v6, 0x7f08001e

    invoke-virtual {p0, v6}, Lcom/android/exsettings/deviceinfo/Status;->addPreferencesFromResource(I)V

    .line 184
    const-string v6, "battery_level"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    .line 185
    const-string v6, "battery_status"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    .line 186
    const-string v6, "bt_address"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    .line 187
    const-string v6, "wifi_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/deviceinfo/Status;->mWifiMacAddress:Landroid/preference/Preference;

    .line 188
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 189
    const-string v6, "wifi_ip_address"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    .line 191
    const-string v6, "sim_status"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/exsettings/deviceinfo/Status;->mSimStatusAddress:Landroid/preference/PreferenceScreen;

    .line 193
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    .line 194
    iget-object v6, p0, Lcom/android/exsettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0c0074

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 195
    iget-object v6, p0, Lcom/android/exsettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0c03ef

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    .line 198
    const-string v6, "up_time"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    .line 200
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/Status;->hasBluetooth()Z

    move-result v6

    if-nez v6, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exsettings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    iput-object v8, p0, Lcom/android/exsettings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/Status;->hasWimax()Z

    move-result v6

    if-nez v6, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exsettings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 207
    iput-object v8, p0, Lcom/android/exsettings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 210
    :cond_1
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    iput-object v6, p0, Lcom/android/exsettings/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    .line 211
    sget-object v0, Lcom/android/exsettings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 212
    .local v2, "intent":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/exsettings/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v2    # "intent":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/Status;->updateConnectivity()V

    .line 217
    sget-object v5, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 218
    .local v5, "serial":Ljava/lang/String;
    if-eqz v5, :cond_7

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 219
    const-string v6, "serial_number"

    invoke-direct {p0, v6, v5}, Lcom/android/exsettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_1
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/Status;->updateSimStatussAddress()V

    .line 231
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-nez v6, :cond_3

    invoke-static {p0}, Lcom/android/exsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 233
    :cond_3
    const-string v6, "sim_status"

    invoke-direct {p0, v6}, Lcom/android/exsettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 237
    :cond_4
    const-string v6, "imei_info"

    invoke-direct {p0, v6}, Lcom/android/exsettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 243
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.settings.SHOW_REGULATORY_INFO"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/Status;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_6

    .line 246
    :cond_5
    const-string v6, "regulatory_info"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 247
    .local v4, "pref":Landroid/preference/Preference;
    if-eqz v4, :cond_6

    .line 248
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    .end local v4    # "pref":Landroid/preference/Preference;
    :cond_6
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/Status;->getListView()Landroid/widget/ListView;

    move-result-object v6

    new-instance v7, Lcom/android/exsettings/deviceinfo/Status$3;

    invoke-direct {v7, p0}, Lcom/android/exsettings/deviceinfo/Status$3;-><init>(Lcom/android/exsettings/deviceinfo/Status;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 272
    return-void

    .line 221
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_7
    const-string v6, "serial_number"

    invoke-direct {p0, v6}, Lcom/android/exsettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 319
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onPause()V

    .line 321
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 322
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 323
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 310
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onResume()V

    .line 311
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/exsettings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 313
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 314
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 315
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 296
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onWindowFocusChanged(Z)V

    .line 297
    if-eqz p1, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/Status;->updateSimStatussAddress()V

    .line 300
    :cond_0
    return-void
.end method

.method updateConnectivity()V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/Status;->setWimaxStatus()V

    .line 398
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/Status;->setWifiStatus()V

    .line 399
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/Status;->setBtStatus()V

    .line 400
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/Status;->setIpAddressStatus()V

    .line 401
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 404
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 405
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 407
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 408
    const-wide/16 v2, 0x1

    .line 411
    :cond_0
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/exsettings/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 412
    return-void
.end method
