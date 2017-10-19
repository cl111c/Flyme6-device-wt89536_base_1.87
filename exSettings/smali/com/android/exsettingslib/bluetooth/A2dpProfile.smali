.class public final Lcom/android/exsettingslib/bluetooth/A2dpProfile;
.super Ljava/lang/Object;
.source "A2dpProfile.java"

# interfaces
.implements Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettingslib/bluetooth/A2dpProfile$1;,
        Lcom/android/exsettingslib/bluetooth/A2dpProfile$A2dpServiceListener;
    }
.end annotation


# static fields
.field static final SINK_UUIDS:[Landroid/os/ParcelUuid;

.field private static V:Z


# instance fields
.field private final mDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothA2dp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    sput-boolean v2, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->V:Z

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;
    .param p3, "deviceManager"    # Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;
    .param p4, "profileManager"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    .line 92
    iput-object p3, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 93
    iput-object p4, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    .line 94
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    new-instance v1, Lcom/android/exsettingslib/bluetooth/A2dpProfile$A2dpServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/exsettingslib/bluetooth/A2dpProfile$A2dpServiceListener;-><init>(Lcom/android/exsettingslib/bluetooth/A2dpProfile;Lcom/android/exsettingslib/bluetooth/A2dpProfile$1;)V

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 96
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/exsettingslib/bluetooth/A2dpProfile;)Landroid/bluetooth/BluetoothA2dp;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettingslib/bluetooth/A2dpProfile;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/exsettingslib/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettingslib/bluetooth/A2dpProfile;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/exsettingslib/bluetooth/A2dpProfile;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettingslib/bluetooth/A2dpProfile;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exsettingslib/bluetooth/A2dpProfile;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettingslib/bluetooth/A2dpProfile;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exsettingslib/bluetooth/A2dpProfile;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettingslib/bluetooth/A2dpProfile;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/exsettingslib/bluetooth/A2dpProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettingslib/bluetooth/A2dpProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 115
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 126
    :goto_0
    return v3

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 117
    .local v2, "sinks":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_2

    .line 118
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 119
    .local v1, "sink":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    const-string v3, "A2dpProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not disconnecting device = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v3, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sink":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v5, 0x64

    const/4 v3, 0x0

    .line 130
    iget-object v4, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v4, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v3

    .line 131
    :cond_1
    iget-object v4, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 132
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 134
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    sget-boolean v3, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz v3, :cond_3

    const-string v3, "A2dpProfile"

    const-string v4, "Downgrade priority as useris disconnecting the headset"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_3
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-le v3, v5, :cond_4

    .line 139
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, p1, v5}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 141
    :cond_4
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 225
    sget-boolean v1, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "A2dpProfile"

    const-string v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_1

    .line 228
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 230
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_1
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "A2dpProfile"

    const-string v2, "Error cleaning up A2DP proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 149
    iget-object v4, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v4, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v3

    .line 152
    :cond_1
    iget-object v4, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 153
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 154
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 155
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    goto :goto_0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 221
    sget v0, Lcom/android/exsettingslib/R$drawable;->ic_bt_headphones_a2dp:I

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 203
    sget v0, Lcom/android/exsettingslib/R$string;->bluetooth_profile_a2dp:I

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method isA2dpPlaying()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 184
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v1, :cond_0

    move v1, v2

    .line 191
    :goto_0
    return v1

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 186
    .local v0, "sinks":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothA2dp;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 191
    goto :goto_0
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 164
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isProfileReady()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "preferred"    # Z

    .prologue
    const/16 v1, 0x64

    .line 174
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    if-eqz p2, :cond_2

    .line 176
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, "A2DP"

    return-object v0
.end method
