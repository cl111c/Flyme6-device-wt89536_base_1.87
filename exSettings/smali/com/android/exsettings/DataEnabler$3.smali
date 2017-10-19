.class Lcom/android/exsettings/DataEnabler$3;
.super Ljava/lang/Object;
.source "DataEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/DataEnabler;->switch_on_waiting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/DataEnabler;


# direct methods
.method constructor <init>(Lcom/android/exsettings/DataEnabler;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/exsettings/DataEnabler$3;->this$0:Lcom/android/exsettings/DataEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 193
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    const-string v1, "DataEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch_on_waiting old ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/DataEnabler$3;->this$0:Lcom/android/exsettings/DataEnabler;

    # getter for: Lcom/android/exsettings/DataEnabler;->mOldMobileDataEnabled:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/android/exsettings/DataEnabler;->access$700(Lcom/android/exsettings/DataEnabler;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "new ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/DataEnabler$3;->this$0:Lcom/android/exsettings/DataEnabler;

    # getter for: Lcom/android/exsettings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/android/exsettings/DataEnabler;->access$200(Lcom/android/exsettings/DataEnabler;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/android/exsettings/DataEnabler$3;->this$0:Lcom/android/exsettings/DataEnabler;

    # getter for: Lcom/android/exsettings/DataEnabler;->mOldMobileDataEnabled:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/exsettings/DataEnabler;->access$700(Lcom/android/exsettings/DataEnabler;)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/DataEnabler$3;->this$0:Lcom/android/exsettings/DataEnabler;

    # getter for: Lcom/android/exsettings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/exsettings/DataEnabler;->access$200(Lcom/android/exsettings/DataEnabler;)Ljava/lang/Boolean;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 200
    iget-object v1, p0, Lcom/android/exsettings/DataEnabler$3;->this$0:Lcom/android/exsettings/DataEnabler;

    # getter for: Lcom/android/exsettings/DataEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/exsettings/DataEnabler;->access$1000(Lcom/android/exsettings/DataEnabler;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/DataEnabler$3;->this$0:Lcom/android/exsettings/DataEnabler;

    # getter for: Lcom/android/exsettings/DataEnabler;->mReceiver:Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;
    invoke-static {v2}, Lcom/android/exsettings/DataEnabler;->access$800(Lcom/android/exsettings/DataEnabler;)Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/DataEnabler$3;->this$0:Lcom/android/exsettings/DataEnabler;

    # getter for: Lcom/android/exsettings/DataEnabler;->mIntentFilter:Landroid/content/IntentFilter;
    invoke-static {v3}, Lcom/android/exsettings/DataEnabler;->access$900(Lcom/android/exsettings/DataEnabler;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    :cond_0
    const/4 v1, 0x0

    # setter for: Lcom/android/exsettings/DataEnabler;->switch_on_waiting_is_check:Z
    invoke-static {v1}, Lcom/android/exsettings/DataEnabler;->access$1102(Z)Z

    .line 203
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
