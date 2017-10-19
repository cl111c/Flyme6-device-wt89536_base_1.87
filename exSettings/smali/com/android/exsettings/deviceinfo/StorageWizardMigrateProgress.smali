.class public Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;
.super Lcom/android/exsettings/deviceinfo/StorageWizardBase;
.source "StorageWizardMigrateProgress.java"


# instance fields
.field private final mCallback:Landroid/content/pm/PackageManager$MoveCallback;

.field private mMoveId:I

.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;-><init>()V

    .line 79
    new-instance v0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;-><init>(Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;)V

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mMoveId:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mStatus:I

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 49
    invoke-super {p0, p1}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 50
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->finish()V

    .line 68
    :goto_0
    return-void

    .line 54
    :cond_0
    const v1, 0x7f040109

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.content.pm.extra.MOVE_ID"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mMoveId:I

    .line 58
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "descrip":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->setIllustrationInternal(Z)V

    .line 60
    const v1, 0x7f0c0456

    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->setHeaderText(I[Ljava/lang/String;)V

    .line 61
    const v1, 0x7f0c0457

    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->setBodyText(I[Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->getNextButton()Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V

    .line 67
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    iget v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mMoveId:I

    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v4, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mMoveId:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getMoveStatus(I)I

    move-result v3

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/pm/PackageManager$MoveCallback;->onStatusChanged(IIJ)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->onPause()V

    .line 73
    iget v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mStatus:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->saveSharedPreferences(Z)V

    .line 77
    :cond_0
    return-void
.end method

.method public saveSharedPreferences(Z)V
    .locals 4
    .param p1, "isMigrateFinish"    # Z

    .prologue
    .line 117
    const-string v2, "storage_migrate"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 118
    .local v1, "migrateSp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    .local v0, "migrateEd":Landroid/content/SharedPreferences$Editor;
    const-string v2, "finish"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    return-void
.end method
