.class public Lcom/android/exsettingslib/wifi/WifiTracker;
.super Ljava/lang/Object;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;,
        Lcom/android/exsettingslib/wifi/WifiTracker$Multimap;,
        Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;,
        Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;,
        Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;
    }
.end annotation


# static fields
.field public static sVerboseLogging:I


# instance fields
.field private mAccessPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private final mFilter:Landroid/content/IntentFilter;

.field private final mIncludePasspoints:Z

.field private final mIncludeSaved:Z

.field private final mIncludeScans:Z

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastNetworkInfo:Landroid/net/NetworkInfo;

.field private final mListener:Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;

.field private final mMainHandler:Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private mSavedNetworksExist:Z

.field private mScanId:Ljava/lang/Integer;

.field private mScanResultCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

.field private mSeenBssids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWorkHandler:Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/android/exsettingslib/wifi/WifiTracker;->sVerboseLogging:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiListener"    # Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;
    .param p3, "workerLooper"    # Landroid/os/Looper;
    .param p4, "includeSaved"    # Z
    .param p5, "includeScans"    # Z
    .param p6, "includePasspoints"    # Z

    .prologue
    .line 108
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/exsettingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZLandroid/net/wifi/WifiManager;Landroid/os/Looper;)V

    .line 110
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZLandroid/net/wifi/WifiManager;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiListener"    # Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;
    .param p3, "workerLooper"    # Landroid/os/Looper;
    .param p4, "includeSaved"    # Z
    .param p5, "includeScans"    # Z
    .param p6, "includePasspoints"    # Z
    .param p7, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p8, "currentLooper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    .line 506
    new-instance v0, Lcom/android/exsettingslib/wifi/WifiTracker$1;

    invoke-direct {v0, p0}, Lcom/android/exsettingslib/wifi/WifiTracker$1;-><init>(Lcom/android/exsettingslib/wifi/WifiTracker;)V

    iput-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    if-nez p4, :cond_0

    if-nez p5, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include either saved or scans"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    .line 120
    if-nez p8, :cond_1

    .line 122
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p8

    .line 124
    :cond_1
    new-instance v0, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;

    invoke-direct {v0, p0, p8}, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;-><init>(Lcom/android/exsettingslib/wifi/WifiTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;

    .line 125
    new-instance v0, Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    if-eqz p3, :cond_2

    .end local p3    # "workerLooper":Landroid/os/Looper;
    :goto_0
    invoke-direct {v0, p0, p3}, Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;-><init>(Lcom/android/exsettingslib/wifi/WifiTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    .line 127
    iput-object p7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 128
    iput-boolean p4, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mIncludeSaved:Z

    .line 129
    iput-boolean p5, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mIncludeScans:Z

    .line 130
    iput-boolean p6, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mIncludePasspoints:Z

    .line 131
    iput-object p2, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mListener:Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;

    .line 134
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v0

    sput v0, Lcom/android/exsettingslib/wifi/WifiTracker;->sVerboseLogging:I

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    .line 137
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "Auth_password_wrong"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.settings.wifi.CmccLoginStatusChange"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    return-void

    .restart local p3    # "workerLooper":Landroid/os/Looper;
    :cond_2
    move-object p3, p8

    .line 125
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/exsettingslib/wifi/WifiTracker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettingslib/wifi/WifiTracker;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/exsettingslib/wifi/WifiTracker;->updateWifiState(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/exsettingslib/wifi/WifiTracker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettingslib/wifi/WifiTracker;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exsettingslib/wifi/WifiTracker;)Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettingslib/wifi/WifiTracker;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exsettingslib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettingslib/wifi/WifiTracker;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exsettingslib/wifi/WifiTracker;)Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettingslib/wifi/WifiTracker;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exsettingslib/wifi/WifiTracker;)Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettingslib/wifi/WifiTracker;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mListener:Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/exsettingslib/wifi/WifiTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettingslib/wifi/WifiTracker;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/exsettingslib/wifi/WifiTracker;->updateAccessPoints()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/exsettingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettingslib/wifi/WifiTracker;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/exsettingslib/wifi/WifiTracker;->updateNetworkInfo(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/exsettingslib/wifi/WifiTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettingslib/wifi/WifiTracker;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/exsettingslib/wifi/WifiTracker;->handleResume()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/exsettingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettingslib/wifi/WifiTracker;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private fetchScanResults()Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    .line 263
    iget-object v7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 264
    .local v4, "newResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v4, :cond_0

    .line 265
    const/4 v7, 0x0

    .line 288
    :goto_0
    return-object v7

    .line 267
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 268
    .local v3, "newResult":Landroid/net/wifi/ScanResult;
    iget-object v7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    iget-object v8, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    iget-object v8, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 272
    .end local v3    # "newResult":Landroid/net/wifi/ScanResult;
    :cond_1
    iget-object v7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_3

    .line 274
    iget-object v7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 275
    .local v6, "threshold":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 276
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 277
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 278
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 279
    iget-object v7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 281
    .local v5, "result":Landroid/net/wifi/ScanResult;
    iget-object v7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 288
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    .end local v6    # "threshold":Ljava/lang/Integer;
    :cond_3
    iget-object v7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    goto :goto_0
.end method

.method private getCachedOrCreate(Landroid/net/wifi/ScanResult;Ljava/util/List;)Lcom/android/exsettingslib/wifi/AccessPoint;
    .locals 4
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettingslib/wifi/AccessPoint;",
            ">;)",
            "Lcom/android/exsettingslib/wifi/AccessPoint;"
        }
    .end annotation

    .prologue
    .line 420
    .local p2, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 421
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 422
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3, p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/ScanResult;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 423
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 424
    .local v2, "ret":Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-virtual {v2, p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    .line 428
    .end local v2    # "ret":Lcom/android/exsettingslib/wifi/AccessPoint;
    :goto_1
    return-object v2

    .line 421
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    :cond_1
    new-instance v2, Lcom/android/exsettingslib/wifi/AccessPoint;

    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/android/exsettingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    goto :goto_1
.end method

.method private getCachedOrCreate(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Lcom/android/exsettingslib/wifi/AccessPoint;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettingslib/wifi/AccessPoint;",
            ">;)",
            "Lcom/android/exsettingslib/wifi/AccessPoint;"
        }
    .end annotation

    .prologue
    .line 432
    .local p2, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 433
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 434
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3, p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 435
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 436
    .local v2, "ret":Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-virtual {v2, p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 440
    .end local v2    # "ret":Lcom/android/exsettingslib/wifi/AccessPoint;
    :goto_1
    return-object v2

    .line 433
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    :cond_1
    new-instance v2, Lcom/android/exsettingslib/wifi/AccessPoint;

    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/android/exsettingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1
.end method

.method public static getCurrentAccessPoints(Landroid/content/Context;ZZZ)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "includeSaved"    # Z
    .param p2, "includeScans"    # Z
    .param p3, "includePasspoints"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 500
    new-instance v0, Lcom/android/exsettingslib/wifi/WifiTracker;

    move-object v1, p0

    move-object v3, v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/exsettingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    .line 502
    .local v0, "tracker":Lcom/android/exsettingslib/wifi/WifiTracker;
    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker;->forceUpdate()V

    .line 503
    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "networkId"    # I

    .prologue
    .line 292
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 293
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_2

    .line 294
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 295
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p1, v3, :cond_0

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v3, :cond_1

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-eqz v3, :cond_0

    .line 301
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleResume()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 257
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 258
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    .line 259
    return-void
.end method

.method private updateAccessPoints()V
    .locals 19

    .prologue
    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v5

    .line 307
    .local v5, "cachedAccessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v3, "accessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 311
    .local v2, "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->clearConfig()V

    goto :goto_0

    .line 316
    .end local v2    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    :cond_0
    new-instance v4, Lcom/android/exsettingslib/wifi/WifiTracker$Multimap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Lcom/android/exsettingslib/wifi/WifiTracker$Multimap;-><init>(Lcom/android/exsettingslib/wifi/WifiTracker$1;)V

    .line 317
    .local v4, "apMap":Lcom/android/exsettingslib/wifi/WifiTracker$Multimap;, "Lcom/android/exsettingslib/wifi/WifiTracker$Multimap<Ljava/lang/String;Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    const/4 v8, 0x0

    .line 318
    .local v8, "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/exsettingslib/wifi/WifiTracker;->getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 322
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v7

    .line 323
    .local v7, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v7, :cond_9

    .line 324
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettingslib/wifi/WifiTracker;->mSavedNetworksExist:Z

    .line 325
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 326
    .local v6, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v0, v6, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    iget v0, v6, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 329
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/exsettingslib/wifi/WifiTracker;->getCachedOrCreate(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Lcom/android/exsettingslib/wifi/AccessPoint;

    move-result-object v2

    .line 330
    .restart local v2    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v2, Lcom/android/exsettingslib/wifi/AccessPoint;->foundInScanResult:Z

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 332
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v17

    if-nez v17, :cond_4

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v8, v0, v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 336
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mIncludeSaved:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 337
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mIncludePasspoints:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 338
    :cond_5
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_6
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v17

    if-nez v17, :cond_2

    .line 341
    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v2}, Lcom/android/exsettingslib/wifi/WifiTracker$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 324
    .end local v2    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    .end local v6    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 346
    .restart local v2    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    .restart local v6    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_8
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 351
    .end local v2    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    .end local v6    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettingslib/wifi/WifiTracker;->fetchScanResults()Ljava/util/Collection;

    move-result-object v16

    .line 352
    .local v16, "results":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/ScanResult;>;"
    if-eqz v16, :cond_10

    .line 353
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/ScanResult;

    .line 355
    .local v15, "result":Landroid/net/wifi/ScanResult;
    iget-object v0, v15, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    iget-object v0, v15, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_a

    iget-object v0, v15, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "[IBSS]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 360
    const/4 v9, 0x0

    .line 361
    .local v9, "found":Z
    iget-object v0, v15, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/exsettingslib/wifi/WifiTracker$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 362
    .restart local v2    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-virtual {v2, v15}, Lcom/android/exsettingslib/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 363
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v2, Lcom/android/exsettingslib/wifi/AccessPoint;->foundInScanResult:Z

    .line 364
    const/4 v9, 0x1

    .line 368
    .end local v2    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    :cond_c
    if-nez v9, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mIncludeScans:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 369
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5}, Lcom/android/exsettingslib/wifi/WifiTracker;->getCachedOrCreate(Landroid/net/wifi/ScanResult;Ljava/util/List;)Lcom/android/exsettingslib/wifi/AccessPoint;

    move-result-object v2

    .line 370
    .restart local v2    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v8, v0, v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 374
    :cond_d
    invoke-virtual {v15}, Landroid/net/wifi/ScanResult;->isPasspointNetwork()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/net/wifi/WifiManager;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 376
    .restart local v6    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v6, :cond_e

    .line 377
    invoke-virtual {v2, v6}, Lcom/android/exsettingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    .line 381
    .end local v6    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v15, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 386
    invoke-virtual {v2, v8}, Lcom/android/exsettingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    .line 389
    :cond_f
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v2}, Lcom/android/exsettingslib/wifi/WifiTracker$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 396
    .end local v2    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    .end local v9    # "found":Z
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v15    # "result":Landroid/net/wifi/ScanResult;
    :cond_10
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_11
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 401
    .local v13, "prevAccessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-virtual {v13}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v17

    if-eqz v17, :cond_11

    .line 402
    invoke-virtual {v13}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v14

    .line 403
    .local v14, "prevSsid":Ljava/lang/String;
    const/4 v9, 0x0

    .line 404
    .restart local v9    # "found":Z
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 405
    .local v12, "newAccessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-virtual {v12}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v17

    if-eqz v17, :cond_12

    invoke-virtual {v12}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 406
    const/4 v9, 0x1

    .line 410
    .end local v12    # "newAccessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    :cond_13
    if-nez v9, :cond_11

    goto :goto_4

    .line 415
    .end local v9    # "found":Z
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "prevAccessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    .end local v14    # "prevSsid":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    .line 417
    return-void
.end method

.method private updateNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 6
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v5, 0x4

    .line 445
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 446
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;

    invoke-virtual {v3, v5}, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_5

    .line 452
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;

    invoke-virtual {v3, v5}, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    .line 457
    :goto_1
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 458
    if-eqz p1, :cond_2

    .line 459
    iput-object p1, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 462
    :cond_2
    const/4 v0, 0x0

    .line 463
    .local v0, "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_3

    .line 464
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/exsettingslib/wifi/WifiTracker;->getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 467
    :cond_3
    const/4 v2, 0x0

    .line 468
    .local v2, "reorder":Z
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_6

    .line 469
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exsettingslib/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/exsettingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 470
    const/4 v2, 0x1

    .line 468
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 454
    .end local v0    # "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "i":I
    .end local v2    # "reorder":Z
    :cond_5
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 473
    .restart local v0    # "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "i":I
    .restart local v2    # "reorder":Z
    :cond_6
    if-eqz v2, :cond_0

    .line 474
    iget-object v4, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    monitor-enter v4

    .line 475
    :try_start_0
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 476
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 476
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private updateWifiState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x0

    .line 482
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;->resume()V

    .line 495
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 496
    return-void

    .line 489
    :cond_1
    iput-object v1, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 490
    iput-object v1, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 491
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;->pause()V

    goto :goto_0
.end method


# virtual methods
.method public doSavedNetworksExist()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mSavedNetworksExist:Z

    return v0
.end method

.method public forceScan()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;->forceScan()V

    .line 163
    :cond_0
    return-void
.end method

.method public forceUpdate()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/exsettingslib/wifi/WifiTracker;->updateAccessPoints()V

    .line 154
    return-void
.end method

.method public getAccessPoints()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    monitor-enter v1

    .line 224
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getManager()Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isWifiEnabled()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public pauseScanning()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;->pause()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    .line 173
    :cond_0
    return-void
.end method

.method public resumeScanning()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    invoke-direct {v0, p0}, Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;-><init>(Lcom/android/exsettingslib/wifi/WifiTracker;)V

    iput-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    .line 184
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;->resume()V

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    .line 188
    return-void
.end method

.method public startTracking()V
    .locals 3

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/exsettingslib/wifi/WifiTracker;->resumeScanning()V

    .line 197
    iget-boolean v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mRegistered:Z

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mRegistered:Z

    .line 201
    :cond_0
    return-void
.end method

.method public stopTracking()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-boolean v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    invoke-virtual {v0, v2}, Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;->removeMessages(I)V

    .line 212
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;->removeMessages(I)V

    .line 213
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    iput-boolean v2, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mRegistered:Z

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettingslib/wifi/WifiTracker;->pauseScanning()V

    .line 217
    return-void
.end method
