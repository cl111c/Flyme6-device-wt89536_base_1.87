.class Lcom/android/exsettings/DeviceAdminAdd$4;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/DeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/exsettings/DeviceAdminAdd;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/exsettings/DeviceAdminAdd$4;->this$0:Lcom/android/exsettings/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/exsettings/DeviceAdminAdd$4;->this$0:Lcom/android/exsettings/DeviceAdminAdd;

    iget-boolean v0, v0, Lcom/android/exsettings/DeviceAdminAdd;->mAdding:Z

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/exsettings/DeviceAdminAdd$4;->this$0:Lcom/android/exsettings/DeviceAdminAdd;

    invoke-virtual {v0}, Lcom/android/exsettings/DeviceAdminAdd;->addAndFinish()V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/DeviceAdminAdd$4;->this$0:Lcom/android/exsettings/DeviceAdminAdd;

    iget-boolean v0, v0, Lcom/android/exsettings/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    if-nez v0, :cond_0

    .line 300
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_1
    iget-object v0, p0, Lcom/android/exsettings/DeviceAdminAdd$4;->this$0:Lcom/android/exsettings/DeviceAdminAdd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/exsettings/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    .line 304
    iget-object v0, p0, Lcom/android/exsettings/DeviceAdminAdd$4;->this$0:Lcom/android/exsettings/DeviceAdminAdd;

    iget-object v0, v0, Lcom/android/exsettings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/exsettings/DeviceAdminAdd$4;->this$0:Lcom/android/exsettings/DeviceAdminAdd;

    iget-object v1, v1, Lcom/android/exsettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    new-instance v2, Lcom/android/exsettings/DeviceAdminAdd$4$1;

    iget-object v3, p0, Lcom/android/exsettings/DeviceAdminAdd$4;->this$0:Lcom/android/exsettings/DeviceAdminAdd;

    iget-object v3, v3, Lcom/android/exsettings/DeviceAdminAdd;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/exsettings/DeviceAdminAdd$4$1;-><init>(Lcom/android/exsettings/DeviceAdminAdd$4;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    .line 316
    iget-object v0, p0, Lcom/android/exsettings/DeviceAdminAdd$4;->this$0:Lcom/android/exsettings/DeviceAdminAdd;

    invoke-virtual {v0}, Lcom/android/exsettings/DeviceAdminAdd;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/exsettings/DeviceAdminAdd$4$2;

    invoke-direct {v1, p0}, Lcom/android/exsettings/DeviceAdminAdd$4$2;-><init>(Lcom/android/exsettings/DeviceAdminAdd$4;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    goto :goto_1
.end method
