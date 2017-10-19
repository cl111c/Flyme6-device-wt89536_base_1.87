.class public Lcom/android/exsettings/wifi/WifiSettings;
.super Lcom/android/exsettings/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/exsettings/search/Indexable;
.implements Lcom/android/exsettingslib/wifi/AccessPoint$AccessPointListener;
.implements Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

.field public static isCaptiveCheckRunning:Z

.field private static savedNetworksExist:Z


# instance fields
.field private isDiffSsid:Z

.field private mAPListCategory:Landroid/preference/PreferenceCategory;

.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAddNetworkPref:Landroid/preference/Preference;

.field private mBgThread:Landroid/os/HandlerThread;

.field private mCmccInfo:Landroid/content/SharedPreferences;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mCurrentSsid:Ljava/lang/String;

.field private mDialog:Lcom/android/exsettings/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mDlgModify:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mHandler:Landroid/os/Handler;

.field private mLastSsid:Ljava/lang/String;

.field private mOpenSsid:Ljava/lang/String;

.field private mProgressHeader:Landroid/widget/ProgressBar;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

.field private mUserBadgeCache:Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;

.field private mWifiEnabler:Lcom/android/exsettings/wifi/WifiEnabler;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNfcDialogSavedState:Landroid/os/Bundle;

.field private mWifiToNfcDialog:Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

.field private mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/exsettings/wifi/WifiSettings;->isCaptiveCheckRunning:Z

    .line 1225
    new-instance v0, Lcom/android/exsettings/wifi/WifiSettings$6;

    invoke-direct {v0}, Lcom/android/exsettings/wifi/WifiSettings$6;-><init>()V

    sput-object v0, Lcom/android/exsettings/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 275
    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/exsettings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 225
    iput-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mLastSsid:Ljava/lang/String;

    .line 226
    iput-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mCurrentSsid:Ljava/lang/String;

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->isDiffSsid:Z

    .line 236
    new-instance v0, Lcom/android/exsettings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/WifiSettings$1;-><init>(Lcom/android/exsettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mHandler:Landroid/os/Handler;

    .line 276
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/wifi/WifiSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiSettings;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getCMCCLoginStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/wifi/WifiSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiSettings;
    .param p1, "x1"    # I

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/WifiSettings;->recordCMCCLoginStatus(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/exsettings/wifi/WifiSettings;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiSettings;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/exsettings/wifi/WifiSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiSettings;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettings;->showCmccLoginDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/exsettings/wifi/WifiSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiSettings;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mCurrentSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exsettings/wifi/WifiSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiSettings;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addMessagePreference(I)V
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1003
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1004
    return-void
.end method

.method static canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1272
    if-nez p1, :cond_1

    .line 1306
    :cond_0
    :goto_0
    return v7

    .line 1276
    :cond_1
    const-string v9, "device_policy"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 1281
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1282
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const-string v9, "android.software.device_admin"

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v2, :cond_2

    move v7, v8

    .line 1283
    goto :goto_0

    .line 1286
    :cond_2
    const/4 v3, 0x0

    .line 1287
    .local v3, "isConfigEligibleForLockdown":Z
    if-eqz v2, :cond_3

    .line 1288
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    .line 1289
    .local v0, "deviceOwnerPackageName":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1291
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v5, v0, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .line 1293
    .local v1, "deviceOwnerUid":I
    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v9, :cond_4

    move v3, v7

    .line 1299
    .end local v0    # "deviceOwnerPackageName":Ljava/lang/String;
    .end local v1    # "deviceOwnerUid":I
    :cond_3
    :goto_1
    if-eqz v3, :cond_0

    .line 1303
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1304
    .local v6, "resolver":Landroid/content/ContentResolver;
    const-string v9, "wifi_device_owner_configs_lockdown"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_5

    move v4, v7

    .line 1306
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

    .line 1293
    goto :goto_1

    .end local v0    # "deviceOwnerPackageName":Ljava/lang/String;
    .end local v1    # "deviceOwnerUid":I
    .restart local v6    # "resolver":Landroid/content/ContentResolver;
    :cond_5
    move v4, v8

    .line 1304
    goto :goto_2

    .line 1294
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
    .line 1057
    iget-boolean v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1060
    :cond_0
    return-void
.end method

.method private checkConnectedNetwork(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isConnected"    # Z
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1311
    if-eqz p1, :cond_0

    .line 1312
    iput-object p2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mCurrentSsid:Ljava/lang/String;

    .line 1313
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentSsid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";mLastSsid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mLastSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mCurrentSsid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mLastSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->isDiffSsid:Z

    .line 1316
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mCurrentSsid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mLastSsid:Ljava/lang/String;

    .line 1320
    :goto_0
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDiffSsid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->isDiffSsid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-boolean v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->isDiffSsid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mCurrentSsid:Ljava/lang/String;

    const-string v1, "CMCC-WEB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/exsettings/wifi/WifiSettings;->isCaptiveCheckRunning:Z

    if-nez v0, :cond_0

    .line 1322
    const-string v0, "WifiSettings"

    const-string v1, "WifiManager.NETWORK_STATE_CHANGED_ACTION CMCC connected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/exsettings/wifi/WifiSettings$7;

    invoke-direct {v1, p0}, Lcom/android/exsettings/wifi/WifiSettings$7;-><init>(Lcom/android/exsettings/wifi/WifiSettings;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1344
    :cond_0
    return-void

    .line 1318
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->isDiffSsid:Z

    goto :goto_0
.end method

.method private getCMCCLoginStatus()I
    .locals 3

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mCmccInfo:Landroid/content/SharedPreferences;

    const-string v1, "cmcc_login_status_recode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getCurrentConnectSSID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1416
    const-string v2, "NONE"

    .line 1417
    .local v2, "ssid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1418
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 1419
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1420
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1421
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1426
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-object v2

    .line 1423
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_1
    const-string v2, "NONE"

    goto :goto_0
.end method

.method static isCaptivePortal()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1372
    sput-boolean v8, Lcom/android/exsettings/wifi/WifiSettings;->isCaptiveCheckRunning:Z

    .line 1373
    const/4 v6, 0x0

    .line 1374
    .local v6, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 1375
    .local v3, "mUrl":Ljava/lang/String;
    const/16 v2, 0x257

    .line 1376
    .local v2, "httpResponseCode":I
    const-string v7, "clients3.google.com"

    invoke-static {v7}, Lcom/android/exsettings/wifi/WifiSettings;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 1378
    .local v4, "server":Ljava/net/InetAddress;
    if-eqz v4, :cond_0

    .line 1379
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "/generate_204"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1381
    :cond_0
    const-string v7, "WifiSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Checking "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1384
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 1385
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1386
    const/16 v7, 0x2710

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1387
    const/16 v7, 0x2710

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1388
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1389
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 1390
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 1391
    const-string v7, "WifiSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isCaptivePortal httpResponseCode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    const/16 v7, 0xc8

    if-ne v2, v7, :cond_1

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    if-nez v7, :cond_1

    .line 1393
    const-string v7, "WifiSettings"

    const-string v10, "Empty 200 response interpreted as 204 response."

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1394
    const/16 v2, 0xcc

    .line 1407
    :cond_1
    if-eqz v6, :cond_2

    .line 1408
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1410
    :cond_2
    sput-boolean v9, Lcom/android/exsettings/wifi/WifiSettings;->isCaptiveCheckRunning:Z

    .line 1412
    .end local v5    # "url":Ljava/net/URL;
    :goto_0
    const/16 v7, 0xcc

    if-eq v2, v7, :cond_7

    move v7, v8

    :goto_1
    return v7

    .line 1397
    :catch_0
    move-exception v1

    .line 1398
    .local v1, "e":Ljava/net/SocketException;
    :try_start_1
    const-string v7, "WifiSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isCaptivePortal: SocketException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    invoke-virtual {v1}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v1}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "EHOSTUNREACH"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1400
    const/16 v2, 0xcc

    .line 1401
    const-string v7, "WifiSettings"

    const-string v10, "isCaptivePortal: SocketException EHOSTUNREACH Setting httpResponseCode to 204"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1407
    :cond_3
    if-eqz v6, :cond_4

    .line 1408
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1410
    :cond_4
    sput-boolean v9, Lcom/android/exsettings/wifi/WifiSettings;->isCaptiveCheckRunning:Z

    goto :goto_0

    .line 1403
    .end local v1    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v1

    .line 1404
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v7, "WifiSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isCaptivePortal: IOException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1405
    const/16 v2, 0xcc

    .line 1407
    if-eqz v6, :cond_5

    .line 1408
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1410
    :cond_5
    sput-boolean v9, Lcom/android/exsettings/wifi/WifiSettings;->isCaptiveCheckRunning:Z

    goto :goto_0

    .line 1407
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v6, :cond_6

    .line 1408
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1410
    :cond_6
    sput-boolean v9, Lcom/android/exsettings/wifi/WifiSettings;->isCaptiveCheckRunning:Z

    throw v7

    :cond_7
    move v7, v9

    .line 1412
    goto :goto_1
.end method

.method static isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1261
    invoke-static {p0, p1}, Lcom/android/exsettings/wifi/WifiSettings;->canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 8
    .param p0, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1359
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1364
    .local v4, "inetAddress":[Ljava/net/InetAddress;
    move-object v1, v4

    .local v1, "arr$":[Ljava/net/InetAddress;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 1365
    .local v0, "a":Ljava/net/InetAddress;
    instance-of v7, v0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_0

    .line 1367
    .end local v0    # "a":Ljava/net/InetAddress;
    .end local v1    # "arr$":[Ljava/net/InetAddress;
    .end local v3    # "i$":I
    .end local v4    # "inetAddress":[Ljava/net/InetAddress;
    .end local v5    # "len$":I
    :goto_1
    return-object v0

    .line 1360
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/net/UnknownHostException;
    move-object v0, v6

    .line 1361
    goto :goto_1

    .line 1364
    .end local v2    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "a":Ljava/net/InetAddress;
    .restart local v1    # "arr$":[Ljava/net/InetAddress;
    .restart local v3    # "i$":I
    .restart local v4    # "inetAddress":[Ljava/net/InetAddress;
    .restart local v5    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "a":Ljava/net/InetAddress;
    :cond_1
    move-object v0, v6

    .line 1367
    goto :goto_1
.end method

.method private recordCMCCLoginStatus(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1347
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mCmccInfo:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1348
    .local v0, "editor_cmcc":Landroid/content/SharedPreferences$Editor;
    const-string v1, "cmcc_login_status_recode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1349
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1350
    return-void
.end method

.method private setOffMessage()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 959
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-nez v6, :cond_0

    .line 999
    :goto_0
    return-void

    .line 964
    :cond_0
    const-string v1, ""

    .line 969
    .local v1, "briefText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 970
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string v6, "wifi_scan_always_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_2

    .line 973
    .local v4, "wifiScanningMode":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v6

    if-nez v6, :cond_1

    if-nez v4, :cond_3

    .line 976
    :cond_1
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v6, v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 994
    :goto_2
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 995
    .local v0, "boldSpan":Landroid/text/Spannable;
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x1030044

    invoke-direct {v6, v7, v8}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-interface {v0, v6, v5, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 998
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto :goto_0

    .end local v0    # "boldSpan":Landroid/text/Spannable;
    .end local v4    # "wifiScanningMode":Z
    :cond_2
    move v4, v5

    .line 970
    goto :goto_1

    .line 979
    .restart local v4    # "wifiScanningMode":Z
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 980
    .local v2, "contentBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 981
    const-string v6, "\n\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    const v6, 0x7f0c028c

    invoke-virtual {p0, v6}, Lcom/android/exsettings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 983
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    new-instance v7, Lcom/android/exsettings/wifi/WifiSettings$5;

    invoke-direct {v7, p0}, Lcom/android/exsettings/wifi/WifiSettings$5;-><init>(Lcom/android/exsettings/wifi/WifiSettings;)V

    invoke-static {v6, v2, v7}, Lcom/android/exsettings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/exsettings/LinkifyUtils$OnClickListener;)Z

    goto :goto_2
.end method

.method private showCmccAutoLoginDialog()V
    .locals 2

    .prologue
    .line 1437
    new-instance v0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;-><init>(Landroid/content/Context;)V

    .line 1438
    .local v0, "dialog":Lcom/android/exsettings/wifi/CmccAutoLoginDialog;
    invoke-virtual {v0}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->show()V

    .line 1439
    return-void
.end method

.method private showCmccLoginDialog()V
    .locals 2

    .prologue
    .line 1442
    new-instance v0, Lcom/android/exsettings/wifi/CmccLoginDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exsettings/wifi/CmccLoginDialog;-><init>(Landroid/content/Context;)V

    .line 1443
    .local v0, "dialog":Lcom/android/exsettings/wifi/CmccLoginDialog;
    invoke-virtual {v0}, Lcom/android/exsettings/wifi/CmccLoginDialog;->show()V

    .line 1444
    return-void
.end method

.method private showDialog(Lcom/android/exsettingslib/wifi/AccessPoint;Z)V
    .locals 13
    .param p1, "accessPoint"    # Lcom/android/exsettingslib/wifi/AccessPoint;
    .param p2, "edit"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 773
    if-eqz p1, :cond_1

    .line 774
    invoke-virtual {p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 775
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/android/exsettings/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->isActive()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 776
    iget v8, v3, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 777
    .local v7, "userId":I
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 778
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 779
    .local v4, "ipm":Landroid/content/pm/IPackageManager;
    iget v8, v3, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, "appName":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_0
    invoke-interface {v4, v1, v8, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 783
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 784
    .local v5, "label":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    .line 785
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 790
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "label":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 791
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0c0268

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/exsettings/wifi/WifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104000a

    invoke-virtual {v8, v9, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 810
    .end local v1    # "appName":Ljava/lang/String;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "userId":I
    :goto_1
    return-void

    .line 800
    :cond_1
    iget-object v8, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    if-eqz v8, :cond_2

    .line 801
    invoke-virtual {p0, v10}, Lcom/android/exsettings/wifi/WifiSettings;->removeDialog(I)V

    .line 802
    iput-object v12, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    .line 806
    :cond_2
    iput-object p1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 807
    iput-boolean p2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgEdit:Z

    .line 809
    invoke-virtual {p0, v10}, Lcom/android/exsettings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_1

    .line 787
    .restart local v1    # "appName":Ljava/lang/String;
    .restart local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "ipm":Landroid/content/pm/IPackageManager;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "userId":I
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private startAccessPointInfo()V
    .locals 3

    .prologue
    .line 1430
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1431
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.android.settings.wifi.AccessPointInfo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1432
    const-string v1, "IS_CONNECTED_LINK"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1433
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1434
    return-void
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 1014
    return-void
.end method


# virtual methods
.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 477
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v1

    .line 478
    .local v1, "wifiIsEnabled":Z
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 492
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v2, 0x6

    const v3, 0x7f0c029c

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020145

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 497
    const/16 v2, 0xc

    const v3, 0x7f0c029b

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02014a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 502
    const/4 v2, 0x5

    const v3, 0x7f0c029d

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020146

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 505
    const/4 v2, 0x1

    const v3, 0x7f0c0298

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 509
    const v2, 0x7f0c029a

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 514
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 515
    return-void

    .line 478
    nop

    :array_0
    .array-data 4
        0x7f010039
        0x7f01003b
    .end array-data
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x87

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1157
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1158
    return-void
.end method

.method createWifiEnabler()Lcom/android/exsettings/wifi/WifiEnabler;
    .locals 3

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 437
    .local v0, "activity":Lcom/android/exsettings/SettingsActivity;
    new-instance v1, Lcom/android/exsettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/SettingsActivity;->getSwitchBar()Lcom/android/exsettings/widget/SwitchBar;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/exsettings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/exsettings/widget/SwitchBar;)V

    return-object v1
.end method

.method forget()V
    .locals 3

    .prologue
    .line 1133
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x89

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1134
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1135
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 1149
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker;->resumeScanning()V

    .line 1152
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 1153
    :goto_1
    return-void

    .line 1142
    :cond_0
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1146
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1212
    const v0, 0x7f0c0987

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 519
    const/16 v0, 0x67

    return v0
.end method

.method protected initEmptyView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 949
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 952
    .local v0, "emptyView":Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 954
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 955
    return-object v0
.end method

.method public onAccessPointChanged(Lcom/android/exsettingslib/wifi/AccessPoint;)V
    .locals 1
    .param p1, "accessPoint"    # Lcom/android/exsettingslib/wifi/AccessPoint;

    .prologue
    .line 1217
    invoke-virtual {p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/wifi/AccessPointPreference;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/AccessPointPreference;->refresh()V

    .line 1218
    return-void
.end method

.method public onAccessPointsChanged()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 861
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    if-nez v11, :cond_1

    .line 946
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 864
    const v9, 0x7f0c02a5

    invoke-direct {p0, v9}, Lcom/android/exsettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 867
    :cond_2
    iget-object v11, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v8

    .line 869
    .local v8, "wifiState":I
    packed-switch v8, :pswitch_data_0

    .line 942
    :goto_1
    sget-boolean v11, Lcom/android/exsettings/wifi/WifiSettings;->savedNetworksExist:Z

    iget-object v12, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {v12}, Lcom/android/exsettingslib/wifi/WifiTracker;->doSavedNetworksExist()Z

    move-result v12

    if-eq v11, v12, :cond_0

    .line 943
    sget-boolean v11, Lcom/android/exsettings/wifi/WifiSettings;->savedNetworksExist:Z

    if-nez v11, :cond_9

    :goto_2
    sput-boolean v9, Lcom/android/exsettings/wifi/WifiSettings;->savedNetworksExist:Z

    .line 944
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 872
    :pswitch_0
    iget-object v11, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {v11}, Lcom/android/exsettingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v1

    .line 874
    .local v1, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 876
    iget-object v11, p0, Lcom/android/exsettings/wifi/WifiSettings;->mAPListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 878
    const/4 v2, 0x0

    .line 879
    .local v2, "hasAvailableAccessPoints":Z
    const/4 v4, 0x0

    .line 880
    .local v4, "index":I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 882
    .local v0, "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getLevel()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    .line 883
    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-boolean v11, v0, Lcom/android/exsettingslib/wifi/AccessPoint;->foundInScanResult:Z

    if-nez v11, :cond_4

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 887
    :cond_4
    const/4 v2, 0x1

    .line 888
    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 889
    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/Preference;

    .line 890
    .local v6, "pref":Landroid/preference/Preference;
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 893
    iget-object v11, p0, Lcom/android/exsettings/wifi/WifiSettings;->mAPListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move v4, v5

    .line 895
    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_3

    .line 897
    .end local v6    # "pref":Landroid/preference/Preference;
    :cond_5
    new-instance v7, Lcom/android/exsettings/wifi/AccessPointPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget-object v12, p0, Lcom/android/exsettings/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;

    invoke-direct {v7, v0, v11, v12, v10}, Lcom/android/exsettings/wifi/AccessPointPreference;-><init>(Lcom/android/exsettingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;Z)V

    .line 899
    .local v7, "preference":Lcom/android/exsettings/wifi/AccessPointPreference;
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {v7, v4}, Lcom/android/exsettings/wifi/AccessPointPreference;->setOrder(I)V

    .line 901
    iget-object v11, p0, Lcom/android/exsettings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/exsettings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSecurity()I

    move-result v11

    if-eqz v11, :cond_6

    .line 904
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {p0, v11, v7}, Lcom/android/exsettings/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 905
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/exsettings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    .line 909
    :cond_6
    iget-object v11, p0, Lcom/android/exsettings/wifi/WifiSettings;->mAPListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 911
    invoke-virtual {v0, p0}, Lcom/android/exsettingslib/wifi/AccessPoint;->setListener(Lcom/android/exsettingslib/wifi/AccessPoint$AccessPointListener;)V

    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_3

    .line 914
    .end local v0    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    .end local v7    # "preference":Lcom/android/exsettings/wifi/AccessPointPreference;
    :cond_7
    if-nez v2, :cond_8

    .line 915
    invoke-virtual {p0, v9}, Lcom/android/exsettings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 916
    const v11, 0x7f0c02a4

    invoke-direct {p0, v11}, Lcom/android/exsettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_1

    .line 918
    :cond_8
    invoke-virtual {p0, v10}, Lcom/android/exsettings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 920
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/exsettings/wifi/WifiSettings;->mAPListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 921
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/exsettings/wifi/WifiSettings;->mAddNetworkPref:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 927
    .end local v1    # "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    .end local v2    # "hasAvailableAccessPoints":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "index":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 928
    invoke-virtual {p0, v9}, Lcom/android/exsettings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto/16 :goto_1

    .line 932
    :pswitch_2
    const v11, 0x7f0c027d

    invoke-direct {p0, v11}, Lcom/android/exsettings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 933
    invoke-virtual {p0, v9}, Lcom/android/exsettings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto/16 :goto_1

    .line 937
    :pswitch_3
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettings;->setOffMessage()V

    .line 938
    invoke-virtual {p0, v10}, Lcom/android/exsettings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto/16 :goto_1

    :cond_9
    move v9, v10

    .line 943
    goto/16 :goto_2

    .line 869
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 318
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 320
    new-instance v0, Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v2, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/exsettingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    .line 322
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 324
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->tm:Landroid/telephony/TelephonyManager;

    .line 326
    new-instance v0, Lcom/android/exsettings/wifi/WifiSettings$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/WifiSettings$2;-><init>(Lcom/android/exsettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 341
    new-instance v0, Lcom/android/exsettings/wifi/WifiSettings$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/WifiSettings$3;-><init>(Lcom/android/exsettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 356
    new-instance v0, Lcom/android/exsettings/wifi/WifiSettings$4;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/WifiSettings$4;-><init>(Lcom/android/exsettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 371
    if-eqz p1, :cond_1

    .line 372
    const-string v0, "edit_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgEdit:Z

    .line 373
    const-string v0, "modify_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgModify:Z

    .line 374
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 379
    :cond_0
    const-string v0, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    const-string v0, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    .line 387
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 388
    .local v9, "intent":Landroid/content/Intent;
    const-string v0, "wifi_enable_next_on_connect"

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 390
    iget-boolean v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_2

    .line 391
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 394
    .local v7, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v7, :cond_2

    .line 395
    invoke-virtual {v7, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 397
    .local v8, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 402
    .end local v7    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v8    # "info":Landroid/net/NetworkInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->initEmptyView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 405
    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 407
    const-string v0, "wifi_start_connect_ssid"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 408
    const-string v0, "wifi_start_connect_ssid"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    .line 411
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->onAccessPointsChanged()V

    .line 413
    return-void
.end method

.method onAddNetworkPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1178
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x86

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1180
    iput-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 1181
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/exsettings/wifi/WifiSettings;->showDialog(Lcom/android/exsettingslib/wifi/AccessPoint;Z)V

    .line 1182
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 1064
    const/4 v3, -0x3

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v3, :cond_1

    .line 1065
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->forget()V

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1066
    :cond_1
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 1067
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    if-eqz v3, :cond_0

    .line 1068
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    invoke-virtual {v3}, Lcom/android/exsettings/wifi/WifiDialog;->getController()Lcom/android/exsettings/wifi/WifiConfigController;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/WifiSettings;->submit(Lcom/android/exsettings/wifi/WifiConfigController;)V

    .line 1072
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    invoke-virtual {v3}, Lcom/android/exsettings/wifi/WifiDialog;->getController()Lcom/android/exsettings/wifi/WifiConfigController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exsettings/wifi/WifiConfigController;->getWlanMsg()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1073
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    invoke-virtual {v3}, Lcom/android/exsettings/wifi/WifiDialog;->getController()Lcom/android/exsettings/wifi/WifiConfigController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exsettings/wifi/WifiConfigController;->getWlanMsg()[Ljava/lang/String;

    move-result-object v1

    .line 1074
    .local v1, "wep_wlan_msg":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "wep_wlan"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1075
    .local v0, "wep_wlan":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1076
    .local v2, "wifi_msg":Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1077
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public onConnectedChanged()V
    .locals 5

    .prologue
    .line 1038
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/WifiTracker;->isConnected()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/exsettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 1040
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1041
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v0, ""

    .line 1042
    .local v0, "connecttedSSID":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1043
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1044
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connecttedSSID ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/WifiTracker;->isConnected()Z

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/android/exsettings/wifi/WifiSettings;->checkConnectedNetwork(ZLjava/lang/String;)V

    .line 1048
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 651
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-nez v1, :cond_0

    .line 652
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 686
    :goto_0
    return v0

    .line 654
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 686
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 656
    :pswitch_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 657
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 658
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-nez v1, :cond_2

    .line 660
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 661
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 663
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgModify:Z

    .line 664
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/exsettings/wifi/WifiSettings;->showDialog(Lcom/android/exsettingslib/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 669
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->forget()V

    goto :goto_0

    .line 673
    :pswitch_2
    iput-boolean v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgModify:Z

    .line 674
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/exsettings/wifi/WifiSettings;->showDialog(Lcom/android/exsettingslib/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 678
    :pswitch_3
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    goto :goto_0

    .line 682
    :pswitch_4
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0

    .line 654
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 289
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 290
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 292
    const-string v0, "ap_list"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mAPListCategory:Landroid/preference/PreferenceCategory;

    .line 293
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mAddNetworkPref:Landroid/preference/Preference;

    .line 294
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mAddNetworkPref:Landroid/preference/Preference;

    const-string v1, "add_network"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mAddNetworkPref:Landroid/preference/Preference;

    const v1, 0x7f0c0c6b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 297
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mAddNetworkPref:Landroid/preference/Preference;

    const v1, 0x7f0201da

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 301
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "cmcc_info"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mCmccInfo:Landroid/content/SharedPreferences;

    .line 304
    new-instance v0, Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;

    .line 306
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiSettings"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    .line 307
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 308
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v5, 0x0

    .line 607
    instance-of v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v3, :cond_1

    .line 608
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "info":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v4, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 611
    .local v2, "preference":Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/exsettings/wifi/AccessPointPreference;

    if-eqz v3, :cond_1

    .line 612
    check-cast v2, Lcom/android/exsettings/wifi/AccessPointPreference;

    .end local v2    # "preference":Landroid/preference/Preference;
    invoke-virtual {v2}, Lcom/android/exsettings/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/exsettingslib/wifi/AccessPoint;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 613
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 614
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 615
    const/4 v3, 0x7

    const v4, 0x7f0c029e

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 618
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 620
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/exsettings/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 647
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_0
    return-void

    .line 624
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 628
    :cond_3
    const/16 v3, 0x8

    const v4, 0x7f0c02a0

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 631
    :cond_4
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 632
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 633
    const/16 v3, 0xb

    const v4, 0x7f0c0bbb

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 636
    :cond_5
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 637
    const/16 v3, 0x9

    const v4, 0x7f0c02a1

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 638
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 639
    .local v1, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSecurity()I

    move-result v3

    if-eqz v3, :cond_1

    .line 642
    const/16 v3, 0xa

    const v4, 0x7f0c02a2

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "dialogId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 814
    packed-switch p1, :pswitch_data_0

    .line 851
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 816
    :pswitch_1
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 817
    .local v3, "ap":Lcom/android/exsettingslib/wifi/AccessPoint;
    if-nez v3, :cond_0

    .line 818
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 819
    new-instance v3, Lcom/android/exsettingslib/wifi/AccessPoint;

    .end local v3    # "ap":Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v3, v0, v1}, Lcom/android/exsettingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 821
    .restart local v3    # "ap":Lcom/android/exsettingslib/wifi/AccessPoint;
    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 823
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 827
    :cond_0
    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 828
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 830
    .local v7, "hideForget":Z
    :cond_1
    :goto_1
    new-instance v0, Lcom/android/exsettings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgEdit:Z

    iget-boolean v5, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgModify:Z

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/exsettings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/exsettingslib/wifi/AccessPoint;ZZZZ)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    .line 833
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    goto :goto_0

    .end local v7    # "hideForget":Z
    :cond_2
    move v7, v6

    .line 828
    goto :goto_1

    .line 835
    .end local v3    # "ap":Lcom/android/exsettingslib/wifi/AccessPoint;
    :pswitch_2
    new-instance v0, Lcom/android/exsettings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/android/exsettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 837
    :pswitch_3
    new-instance v0, Lcom/android/exsettings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/android/exsettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 839
    :pswitch_4
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v0, :cond_4

    .line 840
    new-instance v0, Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSecurity()I

    move-result v4

    iget-object v5, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;IILandroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    .line 849
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    goto :goto_0

    .line 844
    :cond_4
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 845
    new-instance v0, Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v1, v2, v4}, Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    goto :goto_2

    .line 814
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
    .line 467
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    :goto_0
    return-void

    .line 469
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/exsettings/wifi/WifiSettings;->addOptionsMenuItems(Landroid/view/Menu;)V

    .line 470
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 313
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onDestroy()V

    .line 314
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 417
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onDestroyView()V

    .line 419
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/exsettings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/exsettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiEnabler;->teardownSwitchBar()V

    .line 422
    :cond_0
    return-void
.end method

.method public onLevelChanged(Lcom/android/exsettingslib/wifi/AccessPoint;)V
    .locals 1
    .param p1, "accessPoint"    # Lcom/android/exsettingslib/wifi/AccessPoint;

    .prologue
    .line 1222
    invoke-virtual {p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/wifi/AccessPointPreference;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/AccessPointPreference;->onLevelChanged()V

    .line 1223
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 602
    :goto_0
    return v0

    .line 549
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 602
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 551
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettings;->showDialog(I)V

    .line 552
    const/4 v0, 0x1

    goto :goto_0

    .line 555
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/exsettings/SettingsActivity;

    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    const-class v1, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0c0318

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 565
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 562
    :cond_1
    const-class v0, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0318

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 568
    :pswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettings;->showDialog(I)V

    .line 569
    const/4 v0, 0x1

    goto :goto_0

    .line 571
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x88

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 572
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker;->forceScan()V

    .line 573
    const/4 v0, 0x1

    goto :goto_0

    .line 575
    :pswitch_5
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 576
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->onAddNetworkPressed()V

    .line 578
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 580
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/exsettings/SettingsActivity;

    if-eqz v0, :cond_3

    .line 581
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    const-class v1, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0c0301

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 589
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 585
    :cond_3
    const-class v0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0301

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 591
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/exsettings/SettingsActivity;

    if-eqz v0, :cond_4

    .line 592
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    const-class v1, Lcom/android/exsettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0c0302

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 600
    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 596
    :cond_4
    const-class v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0302

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_3

    .line 549
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 456
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onPause()V

    .line 457
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/exsettings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/exsettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiEnabler;->pause()V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker;->stopTracking()V

    .line 462
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 691
    instance-of v1, p2, Lcom/android/exsettings/wifi/AccessPointPreference;

    if-eqz v1, :cond_e

    move-object v1, p2

    .line 692
    check-cast v1, Lcom/android/exsettings/wifi/AccessPointPreference;

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/exsettingslib/wifi/AccessPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 695
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v1, v1, Lcom/android/exsettingslib/wifi/AccessPoint;->security:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v3, :cond_0

    move v1, v2

    .line 769
    .end local p2    # "preference":Landroid/preference/Preference;
    :goto_0
    return v1

    .line 699
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v3, :cond_2

    .line 700
    check-cast p2, Lcom/android/exsettings/wifi/AccessPointPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/exsettings/wifi/AccessPointPreference;->isCMCCAP(Lcom/android/exsettingslib/wifi/AccessPoint;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getCMCCLoginStatus()I

    move-result v1

    if-ge v1, v5, :cond_1

    .line 701
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettings;->showCmccLoginDialog()V

    :goto_1
    move v1, v2

    .line 705
    goto :goto_0

    .line 703
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettings;->startAccessPointInfo()V

    goto :goto_1

    .line 708
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v1, :cond_6

    move-object v1, p2

    check-cast v1, Lcom/android/exsettings/wifi/AccessPointPreference;

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/exsettings/wifi/AccessPointPreference;->isCMCCAUTOAP(Lcom/android/exsettingslib/wifi/AccessPoint;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 709
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v1, v1, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    .line 710
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 714
    :cond_3
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettings;->showCmccAutoLoginDialog()V

    :goto_2
    move v1, v2

    .line 723
    goto :goto_0

    .line 717
    :cond_4
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    if-ne v1, v6, :cond_5

    .line 720
    :cond_5
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettings;->showCmccAutoLoginDialog()V

    goto :goto_2

    .line 726
    :cond_6
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v1, v1, Lcom/android/exsettingslib/wifi/AccessPoint;->security:I

    if-eq v1, v5, :cond_7

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v1, v1, Lcom/android/exsettingslib/wifi/AccessPoint;->security:I

    if-eq v1, v6, :cond_7

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v1, v1, Lcom/android/exsettingslib/wifi/AccessPoint;->security:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_8

    .line 730
    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 731
    .local v0, "apInfoIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "com.android.settings.wifi.AccessPointInfo"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    const-string v1, "APInfo"

    check-cast p2, Lcom/android/exsettings/wifi/AccessPointPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {p2, v3}, Lcom/android/exsettings/wifi/AccessPointPreference;->createAPBundle(Lcom/android/exsettingslib/wifi/AccessPoint;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 733
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v1, v2

    .line 734
    goto/16 :goto_0

    .line 739
    .end local v0    # "apInfoIntent":Landroid/content/Intent;
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_8
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-nez v1, :cond_b

    .line 741
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 742
    sget-boolean v1, Lcom/android/exsettings/wifi/WifiSettings;->savedNetworksExist:Z

    if-nez v1, :cond_9

    .line 743
    sput-boolean v2, Lcom/android/exsettings/wifi/WifiSettings;->savedNetworksExist:Z

    .line 744
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 746
    :cond_9
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    :cond_a
    :goto_3
    move v1, v2

    .line 769
    goto/16 :goto_0

    .line 747
    :cond_b
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 749
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-nez v1, :cond_c

    .line 750
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_3

    .line 752
    :cond_c
    iput-boolean v4, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgModify:Z

    .line 753
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-direct {p0, v1, v4}, Lcom/android/exsettings/wifi/WifiSettings;->showDialog(Lcom/android/exsettingslib/wifi/AccessPoint;Z)V

    goto :goto_3

    .line 757
    :cond_d
    iput-boolean v4, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgModify:Z

    .line 758
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/wifi/WifiSettings;->showDialog(Lcom/android/exsettingslib/wifi/AccessPoint;Z)V

    goto :goto_3

    .line 761
    :cond_e
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "add_network"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 762
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 763
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->onAddNetworkPressed()V

    goto :goto_3

    .line 767
    :cond_f
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 443
    .local v0, "activity":Landroid/app/Activity;
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onResume()V

    .line 444
    const-string v1, "dummy"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->removePreference(Ljava/lang/String;)V

    .line 446
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getCurrentConnectSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mLastSsid:Ljava/lang/String;

    .line 447
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/exsettings/wifi/WifiEnabler;

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/exsettings/wifi/WifiEnabler;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/WifiTracker;->startTracking()V

    .line 452
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 524
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 527
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/WifiDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    const-string v1, "edit_mode"

    iget-boolean v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 529
    const-string v1, "modify_mode"

    iget-boolean v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgModify:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 530
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 531
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 532
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 533
    const-string v1, "wifi_ap_state"

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 537
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 539
    .local v0, "savedState":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;->saveState(Landroid/os/Bundle;)V

    .line 540
    const-string v1, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 542
    .end local v0    # "savedState":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 426
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onStart()V

    .line 429
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->createWifiEnabler()Lcom/android/exsettings/wifi/WifiEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/exsettings/wifi/WifiEnabler;

    .line 430
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 280
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/RestrictedSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 281
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 282
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 283
    const v1, 0x7f04014a

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mProgressHeader:Landroid/widget/ProgressBar;

    .line 285
    :cond_0
    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1018
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1019
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1020
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1023
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1034
    :goto_0
    return-void

    .line 1025
    :pswitch_0
    const v1, 0x7f0c027c

    invoke-direct {p0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 1026
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_0

    .line 1030
    :pswitch_1
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettings;->setOffMessage()V

    .line 1031
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_0

    .line 1023
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setProgressBarVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mProgressHeader:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 1008
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mProgressHeader:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1010
    :cond_0
    return-void

    .line 1008
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method submit(Lcom/android/exsettings/wifi/WifiConfigController;)V
    .locals 4
    .param p1, "configController"    # Lcom/android/exsettings/wifi/WifiConfigController;

    .prologue
    .line 1087
    invoke-virtual {p1}, Lcom/android/exsettings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1089
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 1090
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1092
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    .line 1129
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/WifiTracker;->resumeScanning()V

    .line 1130
    :goto_1
    return-void

    .line 1095
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 1097
    const-string v1, "WifiSettings"

    const-string v2, "WAPI: WAPI_CERT Selected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget v1, p1, Lcom/android/exsettings/wifi/WifiConfigController;->mCert_Cnt:I

    if-nez v1, :cond_2

    .line 1099
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0492

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c02ea

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1105
    const-string v1, "WifiSettings"

    const-string v2, "WAPI: Certificates are not installed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WAPI: configController.mCert_Cnt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/exsettings/wifi/WifiConfigController;->mCert_Cnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1109
    :cond_2
    invoke-virtual {p1}, Lcom/android/exsettings/wifi/WifiConfigController;->isModify()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1110
    const-string v1, "WifiSettings"

    const-string v2, "WAPI CERT issue Save"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1113
    :cond_3
    const-string v1, "WifiSettings"

    const-string v2, "WAPI CERT issue Connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1115
    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 1120
    :cond_4
    invoke-virtual {p1}, Lcom/android/exsettings/wifi/WifiConfigController;->isModify()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1121
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 1123
    :cond_5
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1124
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 1125
    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0
.end method
