.class public Lcom/android/exsettings/deviceinfo/StorageSettings$UnmountTask;
.super Landroid/os/AsyncTask;
.source "StorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnmountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDescription:Ljava/lang/String;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private final mVolumeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 440
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 441
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageSettings$UnmountTask;->mContext:Landroid/content/Context;

    .line 442
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageSettings$UnmountTask;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageSettings$UnmountTask;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 443
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageSettings$UnmountTask;->mVolumeId:Ljava/lang/String;

    .line 444
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageSettings$UnmountTask;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageSettings$UnmountTask;->mDescription:Ljava/lang/String;

    .line 445
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageSettings$UnmountTask;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageSettings$UnmountTask;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->unmount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    const/4 v0, 0x0

    .line 453
    :goto_0
    return-object v0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 434
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/deviceinfo/StorageSettings$UnmountTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 459
    if-nez p1, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageSettings$UnmountTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageSettings$UnmountTask;->mContext:Landroid/content/Context;

    const v2, 0x7f0c042d

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/StorageSettings$UnmountTask;->mDescription:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 467
    :goto_0
    return-void

    .line 463
    :cond_0
    const-string v0, "StorageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unmount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageSettings$UnmountTask;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageSettings$UnmountTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageSettings$UnmountTask;->mContext:Landroid/content/Context;

    const v2, 0x7f0c042e

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/StorageSettings$UnmountTask;->mDescription:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 434
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/deviceinfo/StorageSettings$UnmountTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method
