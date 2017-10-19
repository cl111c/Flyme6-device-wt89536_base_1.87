.class Lcom/android/exsettings/keyboard/KeyBoardLightService$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyBoardLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/keyboard/KeyBoardLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/keyboard/KeyBoardLightService;


# direct methods
.method constructor <init>(Lcom/android/exsettings/keyboard/KeyBoardLightService;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService$1;->this$0:Lcom/android/exsettings/keyboard/KeyBoardLightService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "action":Ljava/lang/String;
    const-string v1, "KeyBoardLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIntentReceiver,action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService$1;->this$0:Lcom/android/exsettings/keyboard/KeyBoardLightService;

    # getter for: Lcom/android/exsettings/keyboard/KeyBoardLightService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/exsettings/keyboard/KeyBoardLightService;->access$100(Lcom/android/exsettings/keyboard/KeyBoardLightService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService$1;->this$0:Lcom/android/exsettings/keyboard/KeyBoardLightService;

    # getter for: Lcom/android/exsettings/keyboard/KeyBoardLightService;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/exsettings/keyboard/KeyBoardLightService;->access$000(Lcom/android/exsettings/keyboard/KeyBoardLightService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    iget-object v1, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService$1;->this$0:Lcom/android/exsettings/keyboard/KeyBoardLightService;

    # getter for: Lcom/android/exsettings/keyboard/KeyBoardLightService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/exsettings/keyboard/KeyBoardLightService;->access$100(Lcom/android/exsettings/keyboard/KeyBoardLightService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService$1;->this$0:Lcom/android/exsettings/keyboard/KeyBoardLightService;

    # getter for: Lcom/android/exsettings/keyboard/KeyBoardLightService;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/exsettings/keyboard/KeyBoardLightService;->access$000(Lcom/android/exsettings/keyboard/KeyBoardLightService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService$1;->this$0:Lcom/android/exsettings/keyboard/KeyBoardLightService;

    # getter for: Lcom/android/exsettings/keyboard/KeyBoardLightService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/exsettings/keyboard/KeyBoardLightService;->access$100(Lcom/android/exsettings/keyboard/KeyBoardLightService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService$1;->this$0:Lcom/android/exsettings/keyboard/KeyBoardLightService;

    # getter for: Lcom/android/exsettings/keyboard/KeyBoardLightService;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/exsettings/keyboard/KeyBoardLightService;->access$000(Lcom/android/exsettings/keyboard/KeyBoardLightService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    invoke-static {}, Lcom/android/exsettings/keyboard/LedLightFileUtil;->turnOffLight()V

    goto :goto_0

    .line 65
    :cond_2
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService$1;->this$0:Lcom/android/exsettings/keyboard/KeyBoardLightService;

    # getter for: Lcom/android/exsettings/keyboard/KeyBoardLightService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/exsettings/keyboard/KeyBoardLightService;->access$100(Lcom/android/exsettings/keyboard/KeyBoardLightService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService$1;->this$0:Lcom/android/exsettings/keyboard/KeyBoardLightService;

    # getter for: Lcom/android/exsettings/keyboard/KeyBoardLightService;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/exsettings/keyboard/KeyBoardLightService;->access$000(Lcom/android/exsettings/keyboard/KeyBoardLightService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    iget-object v1, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService$1;->this$0:Lcom/android/exsettings/keyboard/KeyBoardLightService;

    # getter for: Lcom/android/exsettings/keyboard/KeyBoardLightService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/exsettings/keyboard/KeyBoardLightService;->access$100(Lcom/android/exsettings/keyboard/KeyBoardLightService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService$1;->this$0:Lcom/android/exsettings/keyboard/KeyBoardLightService;

    # getter for: Lcom/android/exsettings/keyboard/KeyBoardLightService;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/exsettings/keyboard/KeyBoardLightService;->access$000(Lcom/android/exsettings/keyboard/KeyBoardLightService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
