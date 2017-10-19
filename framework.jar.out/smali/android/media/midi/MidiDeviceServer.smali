.class public final Landroid/media/midi/MidiDeviceServer;
.super Ljava/lang/Object;
.source "MidiDeviceServer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/MidiDeviceServer$OutputPortClient;,
        Landroid/media/midi/MidiDeviceServer$InputPortClient;,
        Landroid/media/midi/MidiDeviceServer$PortClient;,
        Landroid/media/midi/MidiDeviceServer$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MidiDeviceServer"


# instance fields
.field private final mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

.field private mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field private final mInputPortClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/media/midi/MidiInputPort;",
            "Landroid/media/midi/MidiDeviceServer$PortClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputPortCount:I

.field private final mInputPortFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

.field private final mInputPortOpen:[Z

.field private final mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;

.field private final mInputPortReceivers:[Landroid/media/midi/MidiReceiver;

.field private final mInputPorts:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/media/midi/MidiInputPort;",
            ">;"
        }
    .end annotation
.end field

.field private mIsClosed:Z

.field private final mMidiManager:Landroid/media/midi/IMidiManager;

.field private final mOutputPortCount:I

.field private mOutputPortDispatchers:[Lcom/android/internal/midi/MidiDispatcher;

.field private final mOutputPortOpenCount:[I

.field private final mPortClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/media/midi/MidiDeviceServer$PortClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mServer:Landroid/media/midi/IMidiDeviceServer;


# direct methods
.method constructor <init>(Landroid/media/midi/IMidiManager;[Landroid/media/midi/MidiReceiver;ILandroid/media/midi/MidiDeviceServer$Callback;)V
    .locals 4
    .param p1, "midiManager"    # Landroid/media/midi/IMidiManager;
    .param p2, "inputPortReceivers"    # [Landroid/media/midi/MidiReceiver;
    .param p3, "numOutputPorts"    # I
    .param p4, "callback"    # Landroid/media/midi/MidiDeviceServer$Callback;

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mInputPorts:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 71
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mGuard:Ldalvik/system/CloseGuard;

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mPortClients:Ljava/util/HashMap;

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortClients:Ljava/util/HashMap;

    .line 171
    new-instance v1, Landroid/media/midi/MidiDeviceServer$1;

    invoke-direct {v1, p0}, Landroid/media/midi/MidiDeviceServer$1;-><init>(Landroid/media/midi/MidiDeviceServer;)V

    iput-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mServer:Landroid/media/midi/IMidiDeviceServer;

    .line 345
    new-instance v1, Landroid/media/midi/MidiDeviceServer$2;

    invoke-direct {v1, p0}, Landroid/media/midi/MidiDeviceServer$2;-><init>(Landroid/media/midi/MidiDeviceServer;)V

    iput-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

    .line 326
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer;->mMidiManager:Landroid/media/midi/IMidiManager;

    .line 327
    iput-object p2, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortReceivers:[Landroid/media/midi/MidiReceiver;

    .line 328
    array-length v1, p2

    iput v1, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortCount:I

    .line 329
    iput p3, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortCount:I

    .line 330
    iput-object p4, p0, Landroid/media/midi/MidiDeviceServer;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    .line 332
    iget v1, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortCount:I

    new-array v1, v1, [Landroid/media/midi/MidiOutputPort;

    iput-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;

    .line 334
    new-array v1, p3, [Lcom/android/internal/midi/MidiDispatcher;

    iput-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortDispatchers:[Lcom/android/internal/midi/MidiDispatcher;

    .line 335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 336
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortDispatchers:[Lcom/android/internal/midi/MidiDispatcher;

    new-instance v2, Lcom/android/internal/midi/MidiDispatcher;

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/midi/MidiDispatcher;-><init>(Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;)V

    aput-object v2, v1, v0

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_0
    iget v1, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortCount:I

    new-array v1, v1, [Z

    iput-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOpen:[Z

    .line 340
    new-array v1, p3, [I

    iput-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortOpenCount:[I

    .line 342
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mGuard:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method constructor <init>(Landroid/media/midi/IMidiManager;[Landroid/media/midi/MidiReceiver;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiDeviceServer$Callback;)V
    .locals 1
    .param p1, "midiManager"    # Landroid/media/midi/IMidiManager;
    .param p2, "inputPortReceivers"    # [Landroid/media/midi/MidiReceiver;
    .param p3, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p4, "callback"    # Landroid/media/midi/MidiDeviceServer$Callback;

    .prologue
    .line 362
    invoke-virtual {p3}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p4}, Landroid/media/midi/MidiDeviceServer;-><init>(Landroid/media/midi/IMidiManager;[Landroid/media/midi/MidiReceiver;ILandroid/media/midi/MidiDeviceServer$Callback;)V

    .line 363
    iput-object p3, p0, Landroid/media/midi/MidiDeviceServer;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 364
    return-void
.end method

.method static synthetic access$000(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/midi/MidiDeviceServer;)[Z
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOpen:[Z

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/midi/MidiDeviceServer;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .prologue
    .line 43
    iget v0, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortCount:I

    return v0
.end method

.method static synthetic access$1100(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortClients:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceServer$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/midi/MidiDeviceServer;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/media/midi/MidiDeviceServer;->updateDeviceStatus()V

    return-void
.end method

.method static synthetic access$300(Landroid/media/midi/MidiDeviceServer;)[Lcom/android/internal/midi/MidiDispatcher;
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortDispatchers:[Lcom/android/internal/midi/MidiDispatcher;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/midi/MidiDeviceServer;)[I
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortOpenCount:[I

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPorts:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    return-object v0
.end method

.method static synthetic access$602(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;)Landroid/media/midi/MidiDeviceInfo;
    .locals 0
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;
    .param p1, "x1"    # Landroid/media/midi/MidiDeviceInfo;

    .prologue
    .line 43
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    return-object p1
.end method

.method static synthetic access$700(Landroid/media/midi/MidiDeviceServer;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .prologue
    .line 43
    iget v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortCount:I

    return v0
.end method

.method static synthetic access$800(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiReceiver;
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortReceivers:[Landroid/media/midi/MidiReceiver;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDeviceServer;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mPortClients:Ljava/util/HashMap;

    return-object v0
.end method

.method private updateDeviceStatus()V
    .locals 7

    .prologue
    .line 376
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 378
    .local v2, "identityToken":J
    new-instance v1, Landroid/media/midi/MidiDeviceStatus;

    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOpen:[Z

    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortOpenCount:[I

    invoke-direct {v1, v4, v5, v6}, Landroid/media/midi/MidiDeviceStatus;-><init>(Landroid/media/midi/MidiDeviceInfo;[Z[I)V

    .line 380
    .local v1, "status":Landroid/media/midi/MidiDeviceStatus;
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    if-eqz v4, :cond_0

    .line 381
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    invoke-interface {v4, p0, v1}, Landroid/media/midi/MidiDeviceServer$Callback;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V

    .line 384
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer;->mMidiManager:Landroid/media/midi/IMidiManager;

    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer;->mServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-interface {v4, v5, v1}, Landroid/media/midi/IMidiManager;->setDeviceStatus(Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 390
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "MidiDeviceServer"

    const-string v5, "RemoteException in updateDeviceStatus"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-interface {v0}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer;->mGuard:Ldalvik/system/CloseGuard;

    monitor-enter v6

    .line 395
    :try_start_0
    iget-boolean v5, p0, Landroid/media/midi/MidiDeviceServer;->mIsClosed:Z

    if-eqz v5, :cond_0

    monitor-exit v6

    .line 416
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v5}, Ldalvik/system/CloseGuard;->close()V

    .line 398
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v5, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortCount:I

    if-ge v1, v5, :cond_2

    .line 399
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;

    aget-object v4, v5, v1

    .line 400
    .local v4, "outputPort":Landroid/media/midi/MidiOutputPort;
    if-eqz v4, :cond_1

    .line 401
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 402
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;

    const/4 v7, 0x0

    aput-object v7, v5, v1

    .line 398
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 405
    .end local v4    # "outputPort":Landroid/media/midi/MidiOutputPort;
    :cond_2
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer;->mInputPorts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/midi/MidiInputPort;

    .line 406
    .local v3, "inputPort":Landroid/media/midi/MidiInputPort;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .line 415
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "inputPort":Landroid/media/midi/MidiInputPort;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 408
    .restart local v1    # "i":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer;->mInputPorts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    :try_start_2
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer;->mMidiManager:Landroid/media/midi/IMidiManager;

    iget-object v7, p0, Landroid/media/midi/MidiDeviceServer;->mServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-interface {v5, v7}, Landroid/media/midi/IMidiManager;->unregisterDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 414
    :goto_3
    const/4 v5, 0x1

    :try_start_3
    iput-boolean v5, p0, Landroid/media/midi/MidiDeviceServer;->mIsClosed:Z

    .line 415
    monitor-exit v6

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "MidiDeviceServer"

    const-string v7, "RemoteException in unregisterDeviceServer"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 421
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 422
    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceServer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 426
    return-void

    .line 424
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getBinderInterface()Landroid/media/midi/IMidiDeviceServer;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mServer:Landroid/media/midi/IMidiDeviceServer;

    return-object v0
.end method

.method public getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 434
    iget v1, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortCount:I

    new-array v0, v1, [Landroid/media/midi/MidiReceiver;

    .line 435
    .local v0, "receivers":[Landroid/media/midi/MidiReceiver;
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortDispatchers:[Lcom/android/internal/midi/MidiDispatcher;

    iget v2, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortCount:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    return-object v0
.end method