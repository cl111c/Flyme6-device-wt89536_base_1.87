.class public final Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;
.super Ljava/lang/Object;
.source "CachedBluetoothDeviceManager.java"


# instance fields
.field private final mBtManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

.field private final mCachedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localBtManager"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->mBtManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    .line 43
    return-void
.end method

.method public static onDeviceDisappeared(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 3
    .param p0, "cachedDevice"    # Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public addDevice(Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    .locals 3
    .param p1, "adapter"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;
    .param p2, "profileManager"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 89
    new-instance v0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 91
    .local v0, "newDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    monitor-enter v2

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->mBtManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;)V

    .line 94
    monitor-exit v2

    .line 95
    return-object v0

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized clearNonBondedDevices()V
    .locals 6

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 121
    iget-object v4, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    .line 122
    .local v0, "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 123
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    .line 124
    .local v3, "localAdapter":Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_0

    .line 126
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->cancelPairingUserInput()Z

    .line 129
    :cond_0
    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_1

    .line 130
    iget-object v4, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 133
    .end local v0    # "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "localAdapter":Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;
    :cond_2
    monitor-exit p0

    return-void

    .line 119
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 72
    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    .line 73
    .local v0, "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    .end local v0    # "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getCachedDevicesCopy()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 106
    .local v0, "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 115
    :cond_0
    :goto_0
    return-object v1

    .line 110
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public declared-synchronized onBluetoothStateChanged(I)V
    .locals 4
    .param p1, "bluetoothState"    # I

    .prologue
    .line 163
    monitor-enter p0

    const/16 v2, 0xd

    if-ne p1, v2, :cond_1

    .line 164
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 165
    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    .line 166
    .local v0, "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 167
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 168
    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 164
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->clearProfileConnectionState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 163
    .end local v0    # "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 177
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onBtClassChanged(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 148
    .local v0, "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->refreshBtClass()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_0
    monitor-exit p0

    return-void

    .line 147
    .end local v0    # "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onDeviceNameUpdated(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 56
    .local v0, "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->refreshName()V

    .line 59
    :cond_0
    return-void
.end method

.method public declared-synchronized onScanningStateChanged(Z)V
    .locals 3
    .param p1, "started"    # Z

    .prologue
    .line 136
    monitor-enter p0

    if-nez p1, :cond_1

    .line 144
    :cond_0
    monitor-exit p0

    return-void

    .line 140
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 141
    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    .line 142
    .local v0, "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->setVisible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 136
    .end local v0    # "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onUuidChanged(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 155
    .local v0, "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->onUuidChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_0
    monitor-exit p0

    return-void

    .line 154
    .end local v0    # "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
