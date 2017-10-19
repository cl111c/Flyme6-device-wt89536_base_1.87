.class public Lcom/android/exsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;
.super Landroid/app/DialogFragment;
.source "StorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeUnmountedFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 470
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 4
    .param p0, "parent"    # Landroid/app/Fragment;
    .param p1, "volumeId"    # Ljava/lang/String;

    .prologue
    .line 472
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 473
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    new-instance v1, Lcom/android/exsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    invoke-direct {v1}, Lcom/android/exsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;-><init>()V

    .line 476
    .local v1, "dialog":Lcom/android/exsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;
    invoke-virtual {v1, v0}, Lcom/android/exsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->setArguments(Landroid/os/Bundle;)V

    .line 477
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/exsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 478
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "volume_unmounted"

    invoke-virtual {v1, v2, v3}, Lcom/android/exsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 479
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 484
    .local v1, "context":Landroid/content/Context;
    const-class v5, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 486
    .local v2, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, "volumeId":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 489
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 490
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0c0432

    invoke-virtual {p0, v5}, Lcom/android/exsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 493
    const v5, 0x7f0c0413

    new-instance v6, Lcom/android/exsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;

    invoke-direct {v6, p0, v1, v3}, Lcom/android/exsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;-><init>(Lcom/android/exsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 500
    const v5, 0x7f0c0140

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 502
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
