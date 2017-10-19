.class public final Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$DockEventHandler;,
        Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$PairingCancelHandler;,
        Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$UuidChangedHandler;,
        Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$ClassChangedHandler;,
        Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;,
        Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$NameChangedHandler;,
        Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;,
        Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;,
        Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;,
        Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;,
        Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;,
        Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$Handler;
    }
.end annotation


# instance fields
.field private final mAdapterIntentFilter:Landroid/content/IntentFilter;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/exsettingslib/bluetooth/BluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileIntentFilter:Landroid/content/IntentFilter;

.field private mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

.field private mReceiverHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V
    .locals 5
    .param p1, "adapter"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;
    .param p2, "deviceManager"    # Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 149
    new-instance v0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$1;

    invoke-direct {v0, p0}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$1;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    iput-object p1, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    .line 80
    iput-object p2, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    .line 84
    iput-object p3, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    .line 87
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    new-instance v1, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 89
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    new-instance v1, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 93
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    new-instance v1, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;Z)V

    invoke-direct {p0, v0, v1}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 94
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    new-instance v1, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;Z)V

    invoke-direct {p0, v0, v1}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 95
    const-string v0, "android.bluetooth.device.action.FOUND"

    new-instance v1, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 96
    const-string v0, "android.bluetooth.device.action.DISAPPEARED"

    new-instance v1, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 97
    const-string v0, "android.bluetooth.device.action.NAME_CHANGED"

    new-instance v1, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$NameChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 98
    const-string v0, "android.bluetooth.device.action.ALIAS_CHANGED"

    new-instance v1, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$NameChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 101
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    new-instance v1, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 102
    const-string v0, "android.bluetooth.device.action.PAIRING_CANCEL"

    new-instance v1, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$PairingCancelHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$PairingCancelHandler;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 105
    const-string v0, "android.bluetooth.device.action.CLASS_CHANGED"

    new-instance v1, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$ClassChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$ClassChangedHandler;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 106
    const-string v0, "android.bluetooth.device.action.UUID"

    new-instance v1, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$UuidChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$UuidChangedHandler;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 109
    const-string v0, "android.intent.action.DOCK_EVENT"

    new-instance v1, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$DockEventHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$DockEventHandler;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 111
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 112
    return-void
.end method

.method static synthetic access$1000(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->setDefaultBtName()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;
    .param p1, "x1"    # Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->dispatchConnectionStateChanged(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method

.method private addHandler(Ljava/lang/String;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$Handler;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private dispatchConnectionStateChanged(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 4
    .param p1, "cachedDevice"    # Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 240
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 241
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/bluetooth/BluetoothCallback;

    .line 242
    .local v0, "callback":Lcom/android/exsettingslib/bluetooth/BluetoothCallback;
    invoke-interface {v0, p1, p2}, Lcom/android/exsettingslib/bluetooth/BluetoothCallback;->onConnectionStateChanged(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;I)V

    goto :goto_0

    .line 244
    .end local v0    # "callback":Lcom/android/exsettingslib/bluetooth/BluetoothCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    return-void
.end method

.method private setDefaultBtName()V
    .locals 4

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "name":Ljava/lang/String;
    const-string v1, "BluetoothEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom bluetooth name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 133
    :cond_0
    return-void
.end method


# virtual methods
.method addProfileHandler(Ljava/lang/String;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$Handler;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method dispatchDeviceAdded(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .param p1, "cachedDevice"    # Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 248
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 249
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/bluetooth/BluetoothCallback;

    .line 250
    .local v0, "callback":Lcom/android/exsettingslib/bluetooth/BluetoothCallback;
    invoke-interface {v0, p1}, Lcom/android/exsettingslib/bluetooth/BluetoothCallback;->onDeviceAdded(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 252
    .end local v0    # "callback":Lcom/android/exsettingslib/bluetooth/BluetoothCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    return-void
.end method

.method readPairedDevices()Z
    .locals 8

    .prologue
    .line 406
    iget-object v5, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 407
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v0, :cond_1

    .line 408
    const/4 v3, 0x0

    .line 421
    :cond_0
    return v3

    .line 411
    :cond_1
    const/4 v3, 0x0

    .line 412
    .local v3, "deviceAdded":Z
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 413
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v5, v2}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 414
    .local v1, "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_2

    .line 415
    iget-object v5, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v6, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v7, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 416
    invoke-virtual {p0, v1}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;)V

    .line 417
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public registerCallback(Lcom/android/exsettingslib/bluetooth/BluetoothCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/exsettingslib/bluetooth/BluetoothCallback;

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 139
    monitor-exit v1

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registerProfileIntentReceiver()V
    .locals 5

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 116
    return-void
.end method

.method setProfileManager(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    .line 75
    return-void
.end method

.method public unregisterCallback(Lcom/android/exsettingslib/bluetooth/BluetoothCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/exsettingslib/bluetooth/BluetoothCallback;

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 146
    monitor-exit v1

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
