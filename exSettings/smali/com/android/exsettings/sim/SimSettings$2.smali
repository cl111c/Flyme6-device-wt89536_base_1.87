.class Lcom/android/exsettings/sim/SimSettings$2;
.super Landroid/os/Handler;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/sim/SimSettings;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/exsettings/sim/SimSettings$2;->this$0:Lcom/android/exsettings/sim/SimSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$2;->this$0:Lcom/android/exsettings/sim/SimSettings;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/exsettings/sim/SimSettings;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/exsettings/sim/SimSettings;->access$200(Lcom/android/exsettings/sim/SimSettings;Ljava/lang/String;)V

    .line 571
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 578
    :goto_0
    return-void

    .line 573
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$2;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # invokes: Lcom/android/exsettings/sim/SimSettings;->simEnablerUpdate()V
    invoke-static {v0}, Lcom/android/exsettings/sim/SimSettings;->access$300(Lcom/android/exsettings/sim/SimSettings;)V

    goto :goto_0

    .line 571
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
