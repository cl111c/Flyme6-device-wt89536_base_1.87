.class public abstract Lcom/android/exsettings/deviceinfo/StorageWizardBase;
.super Landroid/app/Activity;
.source "StorageWizardBase.java"


# instance fields
.field private mCustomNav:Landroid/view/View;

.field private mCustomNext:Landroid/widget/Button;

.field protected mDisk:Landroid/os/storage/DiskInfo;

.field protected mStorage:Landroid/os/storage/StorageManager;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field protected mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 203
    new-instance v0, Lcom/android/exsettings/deviceinfo/StorageWizardBase$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase$2;-><init>(Lcom/android/exsettings/deviceinfo/StorageWizardBase;)V

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method


# virtual methods
.method protected findFirstVolume(I)Landroid/os/storage/VolumeInfo;
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 194
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    .line 195
    .local v2, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 196
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 200
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->mCustomNext:Landroid/widget/Button;

    return-object v0
.end method

.method protected getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 149
    const v0, 0x7f120206

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method protected getSetupWizardLayout()Lcom/android/setupwizardlib/SetupWizardLayout;
    .locals 1

    .prologue
    .line 145
    const v0, 0x7f1200d3

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/SetupWizardLayout;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v2}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    .line 59
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "volumeId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "diskId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 66
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    .line 71
    :cond_1
    :goto_0
    const v2, 0x7f0d005a

    invoke-virtual {p0, v2}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->setTheme(I)V

    .line 73
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    if-eqz v2, :cond_2

    .line 74
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 76
    :cond_2
    return-void

    .line 67
    :cond_3
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 138
    return-void
.end method

.method public onNavigateNext()V
    .locals 1

    .prologue
    .line 190
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 111
    .local v4, "window":Landroid/view/Window;
    const v5, -0x7ffeff00

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 114
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 116
    iget-object v5, p0, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->mCustomNav:Landroid/view/View;

    const/16 v6, 0x500

    invoke-virtual {v5, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 119
    const v5, 0x7f12020e

    invoke-virtual {p0, v5}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 120
    .local v2, "scrollView":Landroid/view/View;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 121
    invoke-virtual {v2}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v5}, Landroid/view/View;->setFadingEdgeLength(I)V

    .line 124
    const v5, 0x7f12020a

    invoke-virtual {p0, v5}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 125
    .local v3, "title":Landroid/view/View;
    const/4 v1, 0x0

    .line 126
    .local v1, "paddingTop":I
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 127
    .local v0, "mConfiguration":Landroid/content/res/Configuration;
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 128
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/lit8 v1, v5, 0x19

    .line 130
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3, v5, v1, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 132
    return-void
.end method

.method protected varargs setBodyText(I[Ljava/lang/String;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 165
    const v0, 0x7f1201fa

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method

.method public setContentView(I)V
    .locals 6
    .param p1, "layoutResID"    # I

    .prologue
    const v5, 0x7f120202

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 83
    invoke-virtual {p0, v5}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 85
    .local v1, "navParent":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040108

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->mCustomNav:Landroid/view/View;

    .line 88
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->mCustomNav:Landroid/view/View;

    const v3, 0x7f120205

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->mCustomNext:Landroid/widget/Button;

    .line 89
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->mCustomNext:Landroid/widget/Button;

    new-instance v3, Lcom/android/exsettings/deviceinfo/StorageWizardBase$1;

    invoke-direct {v3, p0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase$1;-><init>(Lcom/android/exsettings/deviceinfo/StorageWizardBase;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 98
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 99
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 100
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->mCustomNav:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 104
    :cond_0
    return-void

    .line 97
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected setCurrentProgress(I)V
    .locals 6
    .param p1, "progress"    # I

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 154
    const v0, 0x7f120207

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    int-to-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    return-void
.end method

.method protected varargs setHeaderText(I[Ljava/lang/String;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 160
    .local v0, "headerText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->getSetupWizardLayout()Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    return-void
.end method

.method protected setIllustrationInternal(Z)V
    .locals 3
    .param p1, "internal"    # Z

    .prologue
    const v2, 0x7f02001d

    .line 176
    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->getSetupWizardLayout()Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v0

    const v1, 0x7f02001e

    invoke-virtual {v0, v1, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->setIllustration(II)V

    .line 183
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->getSetupWizardLayout()Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v0

    const v1, 0x7f02001f

    invoke-virtual {v0, v1, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->setIllustration(II)V

    goto :goto_0
.end method

.method protected setKeepScreenOn(Z)V
    .locals 1
    .param p1, "keepScreenOn"    # Z

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->getSetupWizardLayout()Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->setKeepScreenOn(Z)V

    .line 187
    return-void
.end method

.method protected varargs setSecondaryBodyText(I[Ljava/lang/String;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 170
    const v1, 0x7f1201fb

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 171
    .local v0, "secondBody":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    return-void
.end method
