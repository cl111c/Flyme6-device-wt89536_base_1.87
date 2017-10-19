.class Lcom/android/exsettings/Lte4GEnabler$MyHandler;
.super Landroid/os/Handler;
.source "Lte4GEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/Lte4GEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/Lte4GEnabler;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/Lte4GEnabler;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/exsettings/Lte4GEnabler$MyHandler;->this$0:Lcom/android/exsettings/Lte4GEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/Lte4GEnabler;Lcom/android/exsettings/Lte4GEnabler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/exsettings/Lte4GEnabler;
    .param p2, "x1"    # Lcom/android/exsettings/Lte4GEnabler$1;

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/android/exsettings/Lte4GEnabler$MyHandler;-><init>(Lcom/android/exsettings/Lte4GEnabler;)V

    return-void
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/exsettings/Lte4GEnabler$MyHandler;->this$0:Lcom/android/exsettings/Lte4GEnabler;

    const/4 v1, 0x0

    # setter for: Lcom/android/exsettings/Lte4GEnabler;->mDialogClicked:Z
    invoke-static {v0, v1}, Lcom/android/exsettings/Lte4GEnabler;->access$202(Lcom/android/exsettings/Lte4GEnabler;Z)Z

    .line 329
    const-string v0, "Lte4GEnabler"

    const-string v1, "handleSetPreferredNetworkTypeResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/android/exsettings/Lte4GEnabler$MyHandler;->this$0:Lcom/android/exsettings/Lte4GEnabler;

    # invokes: Lcom/android/exsettings/Lte4GEnabler;->setSwitchStatus()V
    invoke-static {v0}, Lcom/android/exsettings/Lte4GEnabler;->access$500(Lcom/android/exsettings/Lte4GEnabler;)V

    .line 331
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 319
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 324
    :goto_0
    return-void

    .line 321
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/exsettings/Lte4GEnabler$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
