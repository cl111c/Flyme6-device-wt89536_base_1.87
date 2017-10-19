.class Lcom/android/exsettings/notification/NotificationSettings$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/exsettings/notification/NotificationSettings;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lcom/android/exsettings/notification/NotificationSettings$Receiver;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/notification/NotificationSettings;Lcom/android/exsettings/notification/NotificationSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/exsettings/notification/NotificationSettings;
    .param p2, "x1"    # Lcom/android/exsettings/notification/NotificationSettings$1;

    .prologue
    .line 723
    invoke-direct {p0, p1}, Lcom/android/exsettings/notification/NotificationSettings$Receiver;-><init>(Lcom/android/exsettings/notification/NotificationSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 741
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 742
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 743
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings$Receiver;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mHandler:Lcom/android/exsettings/notification/NotificationSettings$H;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationSettings;->access$300(Lcom/android/exsettings/notification/NotificationSettings;)Lcom/android/exsettings/notification/NotificationSettings$H;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/exsettings/notification/NotificationSettings$H;->sendEmptyMessage(I)Z

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 745
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings$Receiver;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mHandler:Lcom/android/exsettings/notification/NotificationSettings$H;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationSettings;->access$300(Lcom/android/exsettings/notification/NotificationSettings;)Lcom/android/exsettings/notification/NotificationSettings$H;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/exsettings/notification/NotificationSettings$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public register(Z)V
    .locals 2
    .param p1, "register"    # Z

    .prologue
    .line 727
    iget-boolean v1, p0, Lcom/android/exsettings/notification/NotificationSettings$Receiver;->mRegistered:Z

    if-ne v1, p1, :cond_0

    .line 737
    :goto_0
    return-void

    .line 728
    :cond_0
    if-eqz p1, :cond_1

    .line 729
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 730
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 731
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 732
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings$Receiver;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationSettings;->access$500(Lcom/android/exsettings/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 736
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_1
    iput-boolean p1, p0, Lcom/android/exsettings/notification/NotificationSettings$Receiver;->mRegistered:Z

    goto :goto_0

    .line 734
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings$Receiver;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationSettings;->access$500(Lcom/android/exsettings/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1
.end method
