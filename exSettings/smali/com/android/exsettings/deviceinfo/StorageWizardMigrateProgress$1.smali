.class Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;
.super Landroid/content/pm/PackageManager$MoveCallback;
.source "StorageWizardMigrateProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;


# direct methods
.method constructor <init>(Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    invoke-direct {p0}, Landroid/content/pm/PackageManager$MoveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(IIJ)V
    .locals 8
    .param p1, "moveId"    # I
    .param p2, "status"    # I
    .param p3, "estMillis"    # J

    .prologue
    const/4 v7, 0x1

    const/16 v6, -0x64

    .line 82
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    # getter for: Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mMoveId:I
    invoke-static {v3}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->access$000(Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;)I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    # setter for: Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mStatus:I
    invoke-static {v3, p2}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->access$102(Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;I)I

    .line 85
    if-ne p2, v6, :cond_1

    .line 87
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {v3, v7}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->saveSharedPreferences(Z)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    .line 90
    .local v0, "context":Landroid/content/Context;
    invoke-static {p2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    const-string v3, "StorageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished with status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-ne p2, v6, :cond_3

    .line 93
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    iget-object v3, v3, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mDisk:Landroid/os/storage/DiskInfo;

    if-eqz v3, :cond_2

    .line 96
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.systemui.action.FINISH_WIZARD"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "finishIntent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {v3, v1}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/exsettings/deviceinfo/StorageWizardReady;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.os.storage.extra.DISK_ID"

    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    iget-object v4, v4, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {v3, v2}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->startActivity(Landroid/content/Intent;)V

    .line 108
    .end local v1    # "finishIntent":Landroid/content/Intent;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {v3}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->finishAffinity()V

    goto :goto_0

    .line 105
    :cond_3
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    const v4, 0x7f0c059e

    invoke-virtual {v3, v4}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 111
    :cond_4
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {v3, p2}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->setCurrentProgress(I)V

    goto :goto_0
.end method
