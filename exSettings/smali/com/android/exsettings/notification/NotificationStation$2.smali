.class Lcom/android/exsettings/notification/NotificationStation$2;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/NotificationStation;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/NotificationStation;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/exsettings/notification/NotificationStation$2;->this$0:Lcom/android/exsettings/notification/NotificationStation;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 98
    const-string v1, "onNotificationPosted: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    # invokes: Lcom/android/exsettings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/exsettings/notification/NotificationStation;->access$100(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation$2;->this$0:Lcom/android/exsettings/notification/NotificationStation;

    invoke-virtual {v1}, Lcom/android/exsettings/notification/NotificationStation;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 100
    .local v0, "h":Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation$2;->this$0:Lcom/android/exsettings/notification/NotificationStation;

    # getter for: Lcom/android/exsettings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationStation;->access$200(Lcom/android/exsettings/notification/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation$2;->this$0:Lcom/android/exsettings/notification/NotificationStation;

    # getter for: Lcom/android/exsettings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationStation;->access$200(Lcom/android/exsettings/notification/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation$2;->this$0:Lcom/android/exsettings/notification/NotificationStation;

    invoke-virtual {v1}, Lcom/android/exsettings/notification/NotificationStation;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 107
    .local v0, "h":Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation$2;->this$0:Lcom/android/exsettings/notification/NotificationStation;

    # getter for: Lcom/android/exsettings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationStation;->access$200(Lcom/android/exsettings/notification/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation$2;->this$0:Lcom/android/exsettings/notification/NotificationStation;

    # getter for: Lcom/android/exsettings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationStation;->access$200(Lcom/android/exsettings/notification/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    return-void
.end method
