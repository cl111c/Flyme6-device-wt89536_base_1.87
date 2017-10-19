.class Landroid/media/midi/MidiDeviceServer$2;
.super Ljava/lang/Object;
.source "MidiDeviceServer.java"

# interfaces
.implements Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiDeviceServer;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer$2;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiverFailure(Landroid/media/midi/MidiReceiver;Ljava/io/IOException;)V
    .locals 4
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;
    .param p2, "failure"    # Ljava/io/IOException;

    .prologue
    .line 348
    const-string v2, "MidiDeviceServer"

    const-string v3, "MidiInputPort failed to send data"

    invoke-static {v2, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    const/4 v1, 0x0

    .line 350
    .local v1, "client":Landroid/media/midi/MidiDeviceServer$PortClient;
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$2;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mInputPortClients:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->access$1100(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 351
    :try_start_0
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$2;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mInputPortClients:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->access$1100(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/media/midi/MidiDeviceServer$PortClient;

    move-object v1, v0

    .line 352
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {v1}, Landroid/media/midi/MidiDeviceServer$PortClient;->close()V

    .line 356
    :cond_0
    return-void

    .line 352
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
