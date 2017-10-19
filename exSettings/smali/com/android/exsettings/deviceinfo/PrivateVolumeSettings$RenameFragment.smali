.class public Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment;
.super Landroid/app/DialogFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenameFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 723
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)V
    .locals 4
    .param p0, "parent"    # Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 733
    :goto_0
    return-void

    .line 727
    :cond_0
    new-instance v1, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment;

    invoke-direct {v1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment;-><init>()V

    .line 728
    .local v1, "dialog":Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 729
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 730
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "android.os.storage.extra.FS_UUID"

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-virtual {v1, v0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment;->setArguments(Landroid/os/Bundle;)V

    .line 732
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "rename"

    invoke-virtual {v1, v2, v3}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    .line 737
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 738
    .local v1, "context":Landroid/content/Context;
    const-class v9, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    .line 740
    .local v6, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 741
    .local v3, "fsUuid":Ljava/lang/String;
    invoke-virtual {v6, v3}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v8

    .line 742
    .local v8, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v6, v3}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v5

    .line 744
    .local v5, "rec":Landroid/os/storage/VolumeRecord;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 745
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 747
    .local v2, "dialogInflater":Landroid/view/LayoutInflater;
    const v9, 0x7f04005e

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v11, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 748
    .local v7, "view":Landroid/view/View;
    const v9, 0x7f1200c0

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 749
    .local v4, "nickname":Landroid/widget/EditText;
    invoke-virtual {v5}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 751
    const v9, 0x7f0c0431

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 752
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 754
    const v9, 0x7f0c0143

    new-instance v10, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;

    invoke-direct {v10, p0, v6, v3, v4}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;-><init>(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment;Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/widget/EditText;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 763
    const v9, 0x7f0c0140

    invoke-virtual {v0, v9, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 765
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9
.end method
